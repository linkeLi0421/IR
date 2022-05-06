; ModuleID = '/llk/IR/fs/seq_file.c_pt.bc'
source_filename = "../fs/seq_file.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_open:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_open\22\09\09\09\09\09"
module asm "__kstrtabns_seq_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_read:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_read\22\09\09\09\09\09"
module asm "__kstrtabns_seq_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_read_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_read_iter\22\09\09\09\09\09"
module asm "__kstrtabns_seq_read_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_lseek:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_lseek\22\09\09\09\09\09"
module asm "__kstrtabns_seq_lseek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_release:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_release\22\09\09\09\09\09"
module asm "__kstrtabns_seq_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_escape_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_escape_mem\22\09\09\09\09\09"
module asm "__kstrtabns_seq_escape_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_vprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_vprintf\22\09\09\09\09\09"
module asm "__kstrtabns_seq_vprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_printf:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_printf\22\09\09\09\09\09"
module asm "__kstrtabns_seq_printf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_bprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_bprintf\22\09\09\09\09\09"
module asm "__kstrtabns_seq_bprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mangle_path:\09\09\09\09\09"
module asm "\09.asciz \09\22mangle_path\22\09\09\09\09\09"
module asm "__kstrtabns_mangle_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_path:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_path\22\09\09\09\09\09"
module asm "__kstrtabns_seq_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_file_path:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_file_path\22\09\09\09\09\09"
module asm "__kstrtabns_seq_file_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_dentry:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_dentry\22\09\09\09\09\09"
module asm "__kstrtabns_seq_dentry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_single_open:\09\09\09\09\09"
module asm "\09.asciz \09\22single_open\22\09\09\09\09\09"
module asm "__kstrtabns_single_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_single_open_size:\09\09\09\09\09"
module asm "\09.asciz \09\22single_open_size\22\09\09\09\09\09"
module asm "__kstrtabns_single_open_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_single_release:\09\09\09\09\09"
module asm "\09.asciz \09\22single_release\22\09\09\09\09\09"
module asm "__kstrtabns_single_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_release_private:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_release_private\22\09\09\09\09\09"
module asm "__kstrtabns_seq_release_private:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___seq_open_private:\09\09\09\09\09"
module asm "\09.asciz \09\22__seq_open_private\22\09\09\09\09\09"
module asm "__kstrtabns___seq_open_private:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_open_private:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_open_private\22\09\09\09\09\09"
module asm "__kstrtabns_seq_open_private:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_putc:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_putc\22\09\09\09\09\09"
module asm "__kstrtabns_seq_putc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_puts:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_puts\22\09\09\09\09\09"
module asm "__kstrtabns_seq_puts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_put_decimal_ull:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_put_decimal_ull\22\09\09\09\09\09"
module asm "__kstrtabns_seq_put_decimal_ull:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_put_decimal_ll:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_put_decimal_ll\22\09\09\09\09\09"
module asm "__kstrtabns_seq_put_decimal_ll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_write:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_write\22\09\09\09\09\09"
module asm "__kstrtabns_seq_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_pad:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_pad\22\09\09\09\09\09"
module asm "__kstrtabns_seq_pad:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_hex_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_hex_dump\22\09\09\09\09\09"
module asm "__kstrtabns_seq_hex_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_list_start:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_list_start\22\09\09\09\09\09"
module asm "__kstrtabns_seq_list_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_list_start_head:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_list_start_head\22\09\09\09\09\09"
module asm "__kstrtabns_seq_list_start_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_list_next:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_list_next\22\09\09\09\09\09"
module asm "__kstrtabns_seq_list_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_hlist_start:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_hlist_start\22\09\09\09\09\09"
module asm "__kstrtabns_seq_hlist_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_hlist_start_head:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_hlist_start_head\22\09\09\09\09\09"
module asm "__kstrtabns_seq_hlist_start_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_hlist_next:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_hlist_next\22\09\09\09\09\09"
module asm "__kstrtabns_seq_hlist_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_hlist_start_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_hlist_start_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_seq_hlist_start_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_hlist_start_head_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_hlist_start_head_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_seq_hlist_start_head_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_hlist_next_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_hlist_next_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_seq_hlist_next_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_hlist_start_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_hlist_start_percpu\22\09\09\09\09\09"
module asm "__kstrtabns_seq_hlist_start_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seq_hlist_next_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22seq_hlist_next_percpu\22\09\09\09\09\09"
module asm "__kstrtabns_seq_hlist_next_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.iovec = type { ptr, i32 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.12, %union.anon.13 }
%union.anon.12 = type { ptr }
%union.anon.13 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.56, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.57, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.58, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.56 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.57 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.58 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.52, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.52 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.io_context = type { %struct.atomic_t, %struct.atomic_t, i16 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.__va_list = type { ptr }

@.str = private unnamed_addr constant [14 x i8] c"fs/seq_file.c\00", align 1
@seq_file_cache = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@seq_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"&p->lock\00", align 1
@__kstrtab_seq_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_open = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_open to i32), ptr @__kstrtab_seq_open, ptr @__kstrtabns_seq_open }, section "___ksymtab+seq_open", align 4
@__kstrtab_seq_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_read = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_read to i32), ptr @__kstrtab_seq_read, ptr @__kstrtabns_seq_read }, section "___ksymtab+seq_read", align 4
@seq_read_iter._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.seq_read_iter = private unnamed_addr constant [14 x i8] c"seq_read_iter\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"\016seq_file: buggy .next function %ps did not update position index\0A\00", align 1
@__kstrtab_seq_read_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_read_iter = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_read_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_read_iter to i32), ptr @__kstrtab_seq_read_iter, ptr @__kstrtabns_seq_read_iter }, section "___ksymtab+seq_read_iter", align 4
@__kstrtab_seq_lseek = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_lseek = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_lseek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_lseek to i32), ptr @__kstrtab_seq_lseek, ptr @__kstrtabns_seq_lseek }, section "___ksymtab+seq_lseek", align 4
@__kstrtab_seq_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_release = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_release to i32), ptr @__kstrtab_seq_release, ptr @__kstrtabns_seq_release }, section "___ksymtab+seq_release", align 4
@__kstrtab_seq_escape_mem = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_escape_mem = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_escape_mem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_escape_mem to i32), ptr @__kstrtab_seq_escape_mem, ptr @__kstrtabns_seq_escape_mem }, section "___ksymtab+seq_escape_mem", align 4
@__kstrtab_seq_vprintf = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_vprintf = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_vprintf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_vprintf to i32), ptr @__kstrtab_seq_vprintf, ptr @__kstrtabns_seq_vprintf }, section "___ksymtab+seq_vprintf", align 4
@__kstrtab_seq_printf = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_printf = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_printf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_printf to i32), ptr @__kstrtab_seq_printf, ptr @__kstrtabns_seq_printf }, section "___ksymtab+seq_printf", align 4
@__kstrtab_seq_bprintf = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_bprintf = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_bprintf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_bprintf to i32), ptr @__kstrtab_seq_bprintf, ptr @__kstrtabns_seq_bprintf }, section "___ksymtab+seq_bprintf", align 4
@__kstrtab_mangle_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_mangle_path = external dso_local constant [0 x i8], align 1
@__ksymtab_mangle_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mangle_path to i32), ptr @__kstrtab_mangle_path, ptr @__kstrtabns_mangle_path }, section "___ksymtab+mangle_path", align 4
@__kstrtab_seq_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_path = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_path to i32), ptr @__kstrtab_seq_path, ptr @__kstrtabns_seq_path }, section "___ksymtab+seq_path", align 4
@__kstrtab_seq_file_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_file_path = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_file_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_file_path to i32), ptr @__kstrtab_seq_file_path, ptr @__kstrtabns_seq_file_path }, section "___ksymtab+seq_file_path", align 4
@__kstrtab_seq_dentry = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_dentry = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_dentry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_dentry to i32), ptr @__kstrtab_seq_dentry, ptr @__kstrtabns_seq_dentry }, section "___ksymtab+seq_dentry", align 4
@__kstrtab_single_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_single_open = external dso_local constant [0 x i8], align 1
@__ksymtab_single_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @single_open to i32), ptr @__kstrtab_single_open, ptr @__kstrtabns_single_open }, section "___ksymtab+single_open", align 4
@__kstrtab_single_open_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_single_open_size = external dso_local constant [0 x i8], align 1
@__ksymtab_single_open_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @single_open_size to i32), ptr @__kstrtab_single_open_size, ptr @__kstrtabns_single_open_size }, section "___ksymtab+single_open_size", align 4
@__kstrtab_single_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_single_release = external dso_local constant [0 x i8], align 1
@__ksymtab_single_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @single_release to i32), ptr @__kstrtab_single_release, ptr @__kstrtabns_single_release }, section "___ksymtab+single_release", align 4
@__kstrtab_seq_release_private = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_release_private = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_release_private = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_release_private to i32), ptr @__kstrtab_seq_release_private, ptr @__kstrtabns_seq_release_private }, section "___ksymtab+seq_release_private", align 4
@__kstrtab___seq_open_private = external dso_local constant [0 x i8], align 1
@__kstrtabns___seq_open_private = external dso_local constant [0 x i8], align 1
@__ksymtab___seq_open_private = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__seq_open_private to i32), ptr @__kstrtab___seq_open_private, ptr @__kstrtabns___seq_open_private }, section "___ksymtab+__seq_open_private", align 4
@__kstrtab_seq_open_private = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_open_private = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_open_private = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_open_private to i32), ptr @__kstrtab_seq_open_private, ptr @__kstrtabns_seq_open_private }, section "___ksymtab+seq_open_private", align 4
@__kstrtab_seq_putc = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_putc = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_putc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_putc to i32), ptr @__kstrtab_seq_putc, ptr @__kstrtabns_seq_putc }, section "___ksymtab+seq_putc", align 4
@__kstrtab_seq_puts = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_puts = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_puts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_puts to i32), ptr @__kstrtab_seq_puts, ptr @__kstrtabns_seq_puts }, section "___ksymtab+seq_puts", align 4
@__kstrtab_seq_put_decimal_ull = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_put_decimal_ull = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_put_decimal_ull = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_put_decimal_ull to i32), ptr @__kstrtab_seq_put_decimal_ull, ptr @__kstrtabns_seq_put_decimal_ull }, section "___ksymtab+seq_put_decimal_ull", align 4
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__kstrtab_seq_put_decimal_ll = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_put_decimal_ll = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_put_decimal_ll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_put_decimal_ll to i32), ptr @__kstrtab_seq_put_decimal_ll, ptr @__kstrtabns_seq_put_decimal_ll }, section "___ksymtab+seq_put_decimal_ll", align 4
@__kstrtab_seq_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_write = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_write to i32), ptr @__kstrtab_seq_write, ptr @__kstrtabns_seq_write }, section "___ksymtab+seq_write", align 4
@__kstrtab_seq_pad = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_pad = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_pad = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_pad to i32), ptr @__kstrtab_seq_pad, ptr @__kstrtabns_seq_pad }, section "___ksymtab+seq_pad", align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%p: \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s%.8x: \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__kstrtab_seq_hex_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_hex_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_hex_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_hex_dump to i32), ptr @__kstrtab_seq_hex_dump, ptr @__kstrtabns_seq_hex_dump }, section "___ksymtab+seq_hex_dump", align 4
@__kstrtab_seq_list_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_list_start = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_list_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_list_start to i32), ptr @__kstrtab_seq_list_start, ptr @__kstrtabns_seq_list_start }, section "___ksymtab+seq_list_start", align 4
@__kstrtab_seq_list_start_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_list_start_head = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_list_start_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_list_start_head to i32), ptr @__kstrtab_seq_list_start_head, ptr @__kstrtabns_seq_list_start_head }, section "___ksymtab+seq_list_start_head", align 4
@__kstrtab_seq_list_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_list_next = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_list_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_list_next to i32), ptr @__kstrtab_seq_list_next, ptr @__kstrtabns_seq_list_next }, section "___ksymtab+seq_list_next", align 4
@__kstrtab_seq_hlist_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_hlist_start = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_hlist_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_hlist_start to i32), ptr @__kstrtab_seq_hlist_start, ptr @__kstrtabns_seq_hlist_start }, section "___ksymtab+seq_hlist_start", align 4
@__kstrtab_seq_hlist_start_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_hlist_start_head = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_hlist_start_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_hlist_start_head to i32), ptr @__kstrtab_seq_hlist_start_head, ptr @__kstrtabns_seq_hlist_start_head }, section "___ksymtab+seq_hlist_start_head", align 4
@__kstrtab_seq_hlist_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_hlist_next = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_hlist_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_hlist_next to i32), ptr @__kstrtab_seq_hlist_next, ptr @__kstrtabns_seq_hlist_next }, section "___ksymtab+seq_hlist_next", align 4
@__kstrtab_seq_hlist_start_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_hlist_start_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_hlist_start_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_hlist_start_rcu to i32), ptr @__kstrtab_seq_hlist_start_rcu, ptr @__kstrtabns_seq_hlist_start_rcu }, section "___ksymtab+seq_hlist_start_rcu", align 4
@__kstrtab_seq_hlist_start_head_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_hlist_start_head_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_hlist_start_head_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_hlist_start_head_rcu to i32), ptr @__kstrtab_seq_hlist_start_head_rcu, ptr @__kstrtabns_seq_hlist_start_head_rcu }, section "___ksymtab+seq_hlist_start_head_rcu", align 4
@__kstrtab_seq_hlist_next_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_hlist_next_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_hlist_next_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_hlist_next_rcu to i32), ptr @__kstrtab_seq_hlist_next_rcu, ptr @__kstrtabns_seq_hlist_next_rcu }, section "___ksymtab+seq_hlist_next_rcu", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab_seq_hlist_start_percpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_hlist_start_percpu = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_hlist_start_percpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_hlist_start_percpu to i32), ptr @__kstrtab_seq_hlist_start_percpu, ptr @__kstrtabns_seq_hlist_start_percpu }, section "___ksymtab+seq_hlist_start_percpu", align 4
@__kstrtab_seq_hlist_next_percpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_seq_hlist_next_percpu = external dso_local constant [0 x i8], align 1
@__ksymtab_seq_hlist_next_percpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seq_hlist_next_percpu to i32), ptr @__kstrtab_seq_hlist_next_percpu, ptr @__kstrtabns_seq_hlist_next_percpu }, section "___ksymtab+seq_hlist_next_percpu", align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"seq_file\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [37 x ptr] [ptr @__ksymtab___seq_open_private, ptr @__ksymtab_mangle_path, ptr @__ksymtab_seq_bprintf, ptr @__ksymtab_seq_dentry, ptr @__ksymtab_seq_escape_mem, ptr @__ksymtab_seq_file_path, ptr @__ksymtab_seq_hex_dump, ptr @__ksymtab_seq_hlist_next, ptr @__ksymtab_seq_hlist_next_percpu, ptr @__ksymtab_seq_hlist_next_rcu, ptr @__ksymtab_seq_hlist_start, ptr @__ksymtab_seq_hlist_start_head, ptr @__ksymtab_seq_hlist_start_head_rcu, ptr @__ksymtab_seq_hlist_start_percpu, ptr @__ksymtab_seq_hlist_start_rcu, ptr @__ksymtab_seq_list_next, ptr @__ksymtab_seq_list_start, ptr @__ksymtab_seq_list_start_head, ptr @__ksymtab_seq_lseek, ptr @__ksymtab_seq_open, ptr @__ksymtab_seq_open_private, ptr @__ksymtab_seq_pad, ptr @__ksymtab_seq_path, ptr @__ksymtab_seq_printf, ptr @__ksymtab_seq_put_decimal_ll, ptr @__ksymtab_seq_put_decimal_ull, ptr @__ksymtab_seq_putc, ptr @__ksymtab_seq_puts, ptr @__ksymtab_seq_read, ptr @__ksymtab_seq_read_iter, ptr @__ksymtab_seq_release, ptr @__ksymtab_seq_release_private, ptr @__ksymtab_seq_vprintf, ptr @__ksymtab_seq_write, ptr @__ksymtab_single_open, ptr @__ksymtab_single_open_size, ptr @__ksymtab_single_release], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef null) #25
  br label %7

7:                                                ; preds = %6, %2
  %8 = load ptr, ptr @seq_file_cache, align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %8, i32 noundef 3520) #25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  store ptr %9, ptr %3, align 8
  %12 = getelementptr inbounds %struct.seq_file, ptr %9, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull @seq_open.__key) #25
  %13 = getelementptr inbounds %struct.seq_file, ptr %9, i32 0, i32 8
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.seq_file, ptr %9, i32 0, i32 10
  store ptr %0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, -17
  store i32 %17, ptr %15, align 8
  br label %18

18:                                               ; preds = %11, %7
  %19 = phi i32 [ 0, %11 ], [ -12, %7 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca %struct.iovec, align 8
  %6 = alloca %struct.kiocb, align 8
  %7 = alloca %struct.iov_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  store ptr %1, ptr %5, align 8
  %8 = getelementptr inbounds %struct.iovec, ptr %5, i32 0, i32 1
  store i32 %2, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i32 40, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 6
  %12 = and i32 %11, 16
  %13 = shl i32 %10, 1
  %14 = and i32 %13, 131072
  %15 = or i32 %14, %12
  %16 = and i32 %10, 4096
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28, %18, %4
  %34 = or i32 %15, 2
  br label %35

35:                                               ; preds = %33, %28
  %36 = phi i32 [ %34, %33 ], [ %15, %28 ]
  %37 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 20
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  br label %46

46:                                               ; preds = %40, %35
  %47 = phi i32 [ %45, %40 ], [ %38, %35 ]
  %48 = tail call ptr @llvm.thread.pointer() #25
  %49 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 118
  %50 = load ptr, ptr %49, align 32
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.io_context, ptr %50, i32 0, i32 2
  %54 = load i16, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %46
  %56 = phi i16 [ %54, %52 ], [ 16388, %46 ]
  %57 = tail call i32 @llvm.umin.i32(i32 %47, i32 65536) #25
  %58 = trunc i32 %57 to i16
  %59 = lshr i32 %10, 18
  %60 = and i32 %59, 4
  %61 = or i32 %36, %60
  store ptr %0, ptr %6, align 8
  %62 = getelementptr inbounds i8, ptr %6, i32 8
  %63 = getelementptr inbounds i8, ptr %6, i32 24
  %64 = getelementptr inbounds i8, ptr %6, i32 16
  store i64 0, ptr %64, align 8
  store i32 %61, ptr %63, align 8
  %65 = getelementptr inbounds i8, ptr %6, i32 28
  store i16 %58, ptr %65, align 4
  %66 = getelementptr inbounds i8, ptr %6, i32 30
  store i16 %56, ptr %66, align 2
  %67 = getelementptr inbounds i8, ptr %6, i32 32
  store ptr null, ptr %67, align 8
  call void @iov_iter_init(ptr noundef nonnull %7, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %2) #25
  %68 = load i64, ptr %3, align 8
  store i64 %68, ptr %62, align 8
  %69 = call i32 @seq_read_iter(ptr noundef nonnull %6, ptr noundef nonnull %7)
  %70 = load i64, ptr %62, align 8
  store i64 %70, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret i32 %69
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_read_iter(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %213, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %10) #25
  %11 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 5
  store i64 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 3
  store i32 0, ptr %16, align 4
  %17 = load i64, ptr %11, align 8
  br label %18

18:                                               ; preds = %14, %9
  %19 = phi i64 [ %17, %14 ], [ %12, %9 ]
  %20 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 6
  %21 = load i64, ptr %20, align 8
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %33, label %23, !prof !8

23:                                               ; preds = %26, %18
  %24 = phi i64 [ %27, %26 ], [ %19, %18 ]
  %25 = tail call fastcc i32 @traverse(ptr noundef %5, i64 noundef %24)
  switch i32 %25, label %28 [
    i32 -11, label %26
    i32 0, label %31
  ]

26:                                               ; preds = %23
  %27 = load i64, ptr %11, align 8
  br label %23

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 5
  %30 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 3
  store i32 0, ptr %30, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  br label %199

31:                                               ; preds = %23
  %32 = load i64, ptr %11, align 8
  store i64 %32, ptr %20, align 8
  br label %33

33:                                               ; preds = %31, %18
  %34 = load ptr, ptr %5, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 1
  store i32 4096, ptr %37, align 4
  %38 = tail call noalias ptr @kvmalloc_node(i32 noundef 4096, i32 noundef 4197568, i32 noundef -1) #26
  store ptr %38, ptr %5, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %199, label %40

40:                                               ; preds = %36, %33
  %41 = phi ptr [ %38, %36 ], [ %34, %33 ]
  %42 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr i8, ptr %41, i32 %47
  %49 = icmp slt i32 %43, 0
  %50 = load i1, ptr @check_copy_size.__already_done, align 1
  %51 = xor i1 %50, true
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %54, !prof !10

53:                                               ; preds = %45
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 230, i32 noundef 9, ptr noundef null) #25
  br label %54

54:                                               ; preds = %53, %45
  br i1 %49, label %57, label %55, !prof !10

55:                                               ; preds = %54
  %56 = tail call i32 @_copy_to_iter(ptr noundef %48, i32 noundef %43, ptr noundef %1) #25
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i32 [ %56, %55 ], [ 0, %54 ]
  %59 = load i32, ptr %42, align 4
  %60 = sub i32 %59, %58
  store i32 %60, ptr %42, align 4
  %61 = load i32, ptr %46, align 8
  %62 = add i32 %61, %58
  store i32 %62, ptr %46, align 8
  %63 = icmp eq i32 %59, %58
  br i1 %63, label %64, label %195

64:                                               ; preds = %57, %40
  %65 = phi i32 [ %58, %57 ], [ 0, %40 ]
  %66 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 2
  store i32 0, ptr %66, align 8
  %67 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 8
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 5
  %71 = tail call ptr %69(ptr noundef %5, ptr noundef %70) #25
  %72 = icmp eq ptr %71, null
  %73 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  %74 = or i1 %72, %73
  br i1 %74, label %119, label %75

75:                                               ; preds = %64
  %76 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 1
  br label %77

77:                                               ; preds = %95, %75
  %78 = phi ptr [ %71, %75 ], [ %96, %95 ]
  %79 = load ptr, ptr %67, align 4
  %80 = getelementptr inbounds %struct.seq_operations, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = tail call i32 %81(ptr noundef %5, ptr noundef nonnull %78) #25
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %122, label %84

84:                                               ; preds = %77
  %85 = icmp eq i32 %82, 0
  br i1 %85, label %87, label %86, !prof !8

86:                                               ; preds = %84
  store i32 0, ptr %42, align 4
  br label %90

87:                                               ; preds = %84
  %88 = load i32, ptr %42, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %100, !prof !10

90:                                               ; preds = %87, %86
  %91 = load ptr, ptr %67, align 4
  %92 = getelementptr inbounds %struct.seq_operations, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = tail call ptr %93(ptr noundef %5, ptr noundef nonnull %78, ptr noundef %70) #25
  br label %95

95:                                               ; preds = %115, %90
  %96 = phi ptr [ %94, %90 ], [ %118, %115 ]
  %97 = icmp eq ptr %96, null
  %98 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  %99 = or i1 %97, %98
  br i1 %99, label %119, label %77

100:                                              ; preds = %87
  %101 = load i32, ptr %76, align 4
  %102 = icmp eq i32 %88, %101
  br i1 %102, label %103, label %170

103:                                              ; preds = %100
  %104 = load ptr, ptr %67, align 4
  %105 = getelementptr inbounds %struct.seq_operations, ptr %104, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  tail call void %106(ptr noundef %5, ptr noundef nonnull %78) #25
  %107 = load ptr, ptr %5, align 8
  tail call void @kvfree(ptr noundef %107) #25
  store i32 0, ptr %42, align 4
  %108 = load i32, ptr %76, align 4
  %109 = shl i32 %108, 1
  store i32 %109, ptr %76, align 4
  %110 = icmp ugt i32 %109, 2147479552
  br i1 %110, label %111, label %112, !prof !10

111:                                              ; preds = %103
  store ptr null, ptr %5, align 8
  br label %195

112:                                              ; preds = %103
  %113 = tail call noalias ptr @kvmalloc_node(i32 noundef %109, i32 noundef 4197568, i32 noundef -1) #26
  store ptr %113, ptr %5, align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %195, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %67, align 4
  %117 = load ptr, ptr %116, align 4
  %118 = tail call ptr %117(ptr noundef %5, ptr noundef %70) #25
  br label %95

119:                                              ; preds = %95, %64
  %120 = phi ptr [ %71, %64 ], [ %96, %95 ]
  %121 = ptrtoint ptr %120 to i32
  br label %122

122:                                              ; preds = %119, %77
  %123 = phi ptr [ %120, %119 ], [ %78, %77 ]
  %124 = phi i32 [ %121, %119 ], [ %82, %77 ]
  %125 = load ptr, ptr %67, align 4
  %126 = getelementptr inbounds %struct.seq_operations, ptr %125, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  tail call void %127(ptr noundef %5, ptr noundef %123) #25
  store i32 0, ptr %42, align 4
  br label %195

128:                                              ; preds = %170, %163
  %129 = phi ptr [ %135, %163 ], [ %172, %170 ]
  %130 = phi i32 [ %161, %163 ], [ %173, %170 ]
  %131 = load i64, ptr %70, align 8
  %132 = load ptr, ptr %67, align 4
  %133 = getelementptr inbounds %struct.seq_operations, ptr %132, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  %135 = tail call ptr %134(ptr noundef %5, ptr noundef nonnull %129, ptr noundef %70) #25
  %136 = load i64, ptr %70, align 8
  %137 = icmp eq i64 %131, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %128
  %139 = tail call i32 @___ratelimit(ptr noundef nonnull @seq_read_iter._rs, ptr noundef nonnull @__func__.seq_read_iter) #25
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %138
  %142 = load ptr, ptr %67, align 4
  %143 = getelementptr inbounds %struct.seq_operations, ptr %142, i32 0, i32 2
  %144 = load ptr, ptr %143, align 4
  %145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %144) #27
  br label %146

146:                                              ; preds = %141, %138
  %147 = load i64, ptr %70, align 8
  %148 = add i64 %147, 1
  store i64 %148, ptr %70, align 8
  br label %149

149:                                              ; preds = %146, %128
  %150 = icmp eq ptr %135, null
  %151 = icmp ugt ptr %135, inttoptr (i32 -4096 to ptr)
  %152 = or i1 %150, %151
  br i1 %152, label %175, label %153

153:                                              ; preds = %149
  %154 = load i32, ptr %42, align 4
  %155 = load i32, ptr %6, align 8
  %156 = icmp ult i32 %154, %155
  br i1 %156, label %157, label %175

157:                                              ; preds = %153
  %158 = load ptr, ptr %67, align 4
  %159 = getelementptr inbounds %struct.seq_operations, ptr %158, i32 0, i32 3
  %160 = load ptr, ptr %159, align 4
  %161 = tail call i32 %160(ptr noundef %5, ptr noundef nonnull %135) #25
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  store i32 %171, ptr %42, align 4
  br label %128

164:                                              ; preds = %157
  %165 = icmp eq i32 %161, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %164
  %167 = load i32, ptr %42, align 4
  %168 = load i32, ptr %76, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %174, label %170

170:                                              ; preds = %166, %100
  %171 = phi i32 [ %167, %166 ], [ %88, %100 ]
  %172 = phi ptr [ %135, %166 ], [ %78, %100 ]
  %173 = phi i32 [ %161, %166 ], [ 0, %100 ]
  br label %128

174:                                              ; preds = %166, %164
  store i32 %171, ptr %42, align 4
  br label %175

175:                                              ; preds = %174, %153, %149
  %176 = phi i32 [ %161, %174 ], [ %130, %153 ], [ %130, %149 ]
  %177 = load ptr, ptr %67, align 4
  %178 = getelementptr inbounds %struct.seq_operations, ptr %177, i32 0, i32 1
  %179 = load ptr, ptr %178, align 4
  tail call void %179(ptr noundef %5, ptr noundef %135) #25
  %180 = load ptr, ptr %5, align 8
  %181 = load i32, ptr %42, align 4
  %182 = icmp slt i32 %181, 0
  %183 = load i1, ptr @check_copy_size.__already_done, align 1
  %184 = xor i1 %183, true
  %185 = select i1 %182, i1 %184, i1 false
  br i1 %185, label %186, label %187, !prof !10

186:                                              ; preds = %175
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 230, i32 noundef 9, ptr noundef null) #25
  br label %187

187:                                              ; preds = %186, %175
  br i1 %182, label %190, label %188, !prof !10

188:                                              ; preds = %187
  %189 = tail call i32 @_copy_to_iter(ptr noundef %180, i32 noundef %181, ptr noundef %1) #25
  br label %190

190:                                              ; preds = %188, %187
  %191 = phi i32 [ %189, %188 ], [ 0, %187 ]
  %192 = add i32 %191, %65
  %193 = load i32, ptr %42, align 4
  %194 = sub i32 %193, %191
  store i32 %194, ptr %42, align 4
  store i32 %191, ptr %66, align 8
  br label %195

195:                                              ; preds = %190, %122, %112, %111, %57
  %196 = phi i32 [ %58, %57 ], [ %65, %122 ], [ %192, %190 ], [ %65, %111 ], [ %65, %112 ]
  %197 = phi i32 [ 0, %57 ], [ %124, %122 ], [ %176, %190 ], [ -12, %111 ], [ -12, %112 ]
  %198 = icmp eq i32 %196, 0
  br i1 %198, label %199, label %205, !prof !10

199:                                              ; preds = %195, %36, %28
  %200 = phi i32 [ %197, %195 ], [ -12, %36 ], [ %25, %28 ]
  %201 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 3
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %202, 0
  %204 = select i1 %203, i32 %200, i32 -14
  br label %211

205:                                              ; preds = %195
  %206 = zext i32 %196 to i64
  %207 = load i64, ptr %11, align 8
  %208 = add i64 %207, %206
  store i64 %208, ptr %11, align 8
  %209 = load i64, ptr %20, align 8
  %210 = add i64 %209, %206
  store i64 %210, ptr %20, align 8
  br label %211

211:                                              ; preds = %205, %199
  %212 = phi i32 [ %204, %199 ], [ %196, %205 ]
  tail call void @mutex_unlock(ptr noundef %10) #25
  br label %213

213:                                              ; preds = %211, %2
  %214 = phi i32 [ %212, %211 ], [ 0, %2 ]
  ret i32 %214
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @traverse(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 5
  store i64 0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 2
  store i32 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  store i32 0, ptr %5, align 4
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %79, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  store i32 4096, ptr %11, align 4
  %12 = tail call noalias ptr @kvmalloc_node(i32 noundef 4096, i32 noundef 4197568, i32 noundef -1) #26
  store ptr %12, ptr %0, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %79, label %14

14:                                               ; preds = %10, %7
  %15 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call ptr %17(ptr noundef %0, ptr noundef %3) #25
  %19 = icmp eq ptr %18, null
  br i1 %19, label %60, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  br label %22

22:                                               ; preds = %54, %20
  %23 = phi i64 [ %48, %54 ], [ 0, %20 ]
  %24 = phi ptr [ %45, %54 ], [ %18, %20 ]
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %58, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %15, align 4
  %28 = getelementptr inbounds %struct.seq_operations, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %0, ptr noundef nonnull %24) #25
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %60, label %32

32:                                               ; preds = %26
  %33 = icmp eq i32 %30, 0
  br i1 %33, label %34, label %36, !prof !8

34:                                               ; preds = %32
  %35 = load i32, ptr %5, align 4
  br label %37

36:                                               ; preds = %32
  store i32 0, ptr %5, align 4
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = load i32, ptr %21, align 4
  %40 = icmp eq i32 %38, %39
  %41 = load ptr, ptr %15, align 4
  br i1 %40, label %66, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.seq_operations, ptr %41, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = tail call ptr %44(ptr noundef %0, ptr noundef nonnull %24, ptr noundef %3) #25
  %46 = load i32, ptr %5, align 4
  %47 = zext i32 %46 to i64
  %48 = add i64 %23, %47
  %49 = icmp sgt i64 %48, %1
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = sub i64 %1, %23
  %52 = trunc i64 %51 to i32
  store i32 %52, ptr %4, align 8
  %53 = sub i32 %46, %52
  store i32 %53, ptr %5, align 4
  br label %60

54:                                               ; preds = %42
  store i32 0, ptr %5, align 4
  %55 = icmp ne i64 %48, %1
  %56 = icmp ne ptr %45, null
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %22, label %60

58:                                               ; preds = %22
  %59 = ptrtoint ptr %24 to i32
  br label %60

60:                                               ; preds = %58, %54, %50, %26, %14
  %61 = phi i32 [ 0, %50 ], [ 0, %14 ], [ %59, %58 ], [ %30, %26 ], [ 0, %54 ]
  %62 = phi ptr [ %45, %50 ], [ null, %14 ], [ %24, %58 ], [ %24, %26 ], [ %45, %54 ]
  %63 = load ptr, ptr %15, align 4
  %64 = getelementptr inbounds %struct.seq_operations, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  tail call void %65(ptr noundef %0, ptr noundef %62) #25
  br label %79

66:                                               ; preds = %37
  %67 = getelementptr inbounds %struct.seq_operations, ptr %41, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  tail call void %68(ptr noundef %0, ptr noundef nonnull %24) #25
  %69 = load ptr, ptr %0, align 8
  tail call void @kvfree(ptr noundef %69) #25
  store i32 0, ptr %5, align 4
  %70 = load i32, ptr %21, align 4
  %71 = shl i32 %70, 1
  store i32 %71, ptr %21, align 4
  %72 = icmp ugt i32 %71, 2147479552
  br i1 %72, label %75, label %73, !prof !10

73:                                               ; preds = %66
  %74 = tail call noalias ptr @kvmalloc_node(i32 noundef %71, i32 noundef 4197568, i32 noundef -1) #26
  br label %75

75:                                               ; preds = %73, %66
  %76 = phi ptr [ %74, %73 ], [ null, %66 ]
  store ptr %76, ptr %0, align 8
  %77 = icmp eq ptr %76, null
  %78 = select i1 %77, i32 -12, i32 -11
  br label %79

79:                                               ; preds = %75, %60, %10, %2
  %80 = phi i32 [ %61, %60 ], [ %78, %75 ], [ 0, %2 ], [ -12, %10 ]
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @seq_lseek(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %6) #25
  switch i32 %2, label %29 [
    i32 1, label %7
    i32 0, label %11
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %9 = load i64, ptr %8, align 8
  %10 = add i64 %9, %1
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i64 [ %1, %3 ], [ %10, %7 ]
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 6
  %16 = load i64, ptr %15, align 8
  %17 = icmp eq i64 %12, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %18, %14
  %19 = tail call fastcc i32 @traverse(ptr noundef %5, i64 noundef %12)
  switch i32 %19, label %20 [
    i32 -11, label %18
    i32 0, label %25
  ]

20:                                               ; preds = %18
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  store i64 0, ptr %22, align 8
  %23 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 5
  %24 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 3
  store i32 0, ptr %24, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  br label %29

25:                                               ; preds = %18
  store i64 %12, ptr %15, align 8
  %26 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  store i64 %12, ptr %26, align 8
  br label %29

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  store i64 %12, ptr %28, align 8
  br label %29

29:                                               ; preds = %27, %25, %20, %11, %3
  %30 = phi i64 [ -22, %3 ], [ -22, %11 ], [ %21, %20 ], [ %12, %25 ], [ %12, %27 ]
  tail call void @mutex_unlock(ptr noundef %6) #25
  ret i64 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_release(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 8
  tail call void @kvfree(ptr noundef %5) #25
  %6 = load ptr, ptr @seq_file_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef %4) #25
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @seq_escape_mem(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/seq_file.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #25, !srcloc !11
  unreachable

12:                                               ; preds = %5
  %13 = icmp ugt i32 %9, %7
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr i8, ptr %15, i32 %7
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi ptr [ %16, %14 ], [ null, %12 ]
  %19 = sub i32 %9, %7
  %20 = tail call i32 @string_escape_mem(ptr noundef %1, i32 noundef %2, ptr noundef %18, i32 noundef %19, i32 noundef %3, ptr noundef %4) #25
  %21 = icmp ult i32 %20, %19
  %22 = select i1 %21, i32 %20, i32 -1
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, ptr %8, align 4
  br label %32

26:                                               ; preds = %17
  %27 = load i32, ptr %6, align 4
  %28 = add i32 %27, %22
  %29 = load i32, ptr %8, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %32, !prof !10

31:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/seq_file.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 89, 0\0A.popsection", ""() #25, !srcloc !12
  unreachable

32:                                               ; preds = %26, %24
  %33 = phi i32 [ %25, %24 ], [ %28, %26 ]
  store i32 %33, ptr %6, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @string_escape_mem(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @seq_vprintf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, [1 x i32] %2) #5 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %5
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr i8, ptr %10, i32 %5
  %12 = sub i32 %7, %5
  %13 = tail call i32 @vsnprintf(ptr noundef %11, i32 noundef %12, ptr noundef %1, [1 x i32] %2)
  %14 = load i32, ptr %4, align 4
  %15 = add i32 %14, %13
  %16 = load i32, ptr %6, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %9, %3
  %19 = phi i32 [ %16, %9 ], [ %7, %3 ]
  br label %20

20:                                               ; preds = %18, %9
  %21 = phi i32 [ %19, %18 ], [ %15, %9 ]
  store i32 %21, ptr %4, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @seq_printf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ...) #5 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %3)
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %5
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i32, ptr %3, align 4
  %11 = insertvalue [1 x i32] poison, i32 %10, 0
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %12, i32 %5
  %14 = sub i32 %7, %5
  %15 = call i32 @vsnprintf(ptr noundef %13, i32 noundef %14, ptr noundef %1, [1 x i32] %11) #25
  %16 = load i32, ptr %4, align 4
  %17 = add i32 %16, %15
  %18 = load i32, ptr %6, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %9, %2
  %21 = phi i32 [ %18, %9 ], [ %7, %2 ]
  br label %22

22:                                               ; preds = %20, %9
  %23 = phi i32 [ %21, %20 ], [ %17, %9 ]
  store i32 %23, ptr %4, align 4
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @seq_bprintf(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %5
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr i8, ptr %10, i32 %5
  %12 = sub i32 %7, %5
  %13 = tail call i32 @bstr_printf(ptr noundef %11, i32 noundef %12, ptr noundef %1, ptr noundef %2) #25
  %14 = load i32, ptr %4, align 4
  %15 = add i32 %14, %13
  %16 = load i32, ptr %6, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %9, %3
  %19 = phi i32 [ %16, %9 ], [ %7, %3 ]
  br label %20

20:                                               ; preds = %18, %9
  %21 = phi i32 [ %19, %18 ], [ %15, %9 ]
  store i32 %21, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bstr_printf(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mangle_path(ptr noundef writeonly %0, ptr noundef readonly %1, ptr noundef readonly %2) #5 {
  %4 = icmp ugt ptr %0, %1
  br i1 %4, label %34, label %5

5:                                                ; preds = %30, %3
  %6 = phi ptr [ %8, %30 ], [ %1, %3 ]
  %7 = phi ptr [ %32, %30 ], [ %0, %3 ]
  %8 = getelementptr i8, ptr %6, i32 1
  %9 = load i8, ptr %6, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %5
  %12 = zext i8 %9 to i32
  %13 = tail call ptr @strchr(ptr noundef %2, i32 noundef %12)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i8 %9, ptr %7, align 1
  br label %30

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %7, i32 4
  %18 = icmp ugt ptr %17, %8
  br i1 %18, label %34, label %19

19:                                               ; preds = %16
  %20 = getelementptr i8, ptr %7, i32 1
  store i8 92, ptr %7, align 1
  %21 = lshr i8 %9, 6
  %22 = or i8 %21, 48
  %23 = getelementptr i8, ptr %7, i32 2
  store i8 %22, ptr %20, align 1
  %24 = lshr i8 %9, 3
  %25 = and i8 %24, 7
  %26 = or i8 %25, 48
  %27 = getelementptr i8, ptr %7, i32 3
  store i8 %26, ptr %23, align 1
  %28 = and i8 %9, 7
  %29 = or i8 %28, 48
  store i8 %29, ptr %27, align 1
  br label %30

30:                                               ; preds = %19, %15
  %31 = phi ptr [ %27, %19 ], [ %7, %15 ]
  %32 = getelementptr i8, ptr %31, i32 1
  %33 = icmp ugt ptr %31, %6
  br i1 %33, label %34, label %5

34:                                               ; preds = %30, %16, %5, %3
  %35 = phi ptr [ null, %3 ], [ null, %16 ], [ %7, %5 ], [ null, %30 ]
  ret ptr %35
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_path(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, %5
  br i1 %8, label %9, label %10, !prof !10

9:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/seq_file.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #25, !srcloc !11
  unreachable

10:                                               ; preds = %3
  %11 = icmp ugt i32 %7, %5
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr i8, ptr %13, i32 %5
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi ptr [ %14, %12 ], [ null, %10 ]
  %17 = icmp eq i32 %7, %5
  br i1 %17, label %60, label %18

18:                                               ; preds = %15
  %19 = sub i32 %7, %5
  %20 = tail call ptr @d_path(ptr noundef %1, ptr noundef %16, i32 noundef %19) #25
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %22 = icmp ugt ptr %16, %20
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %60, label %24

24:                                               ; preds = %49, %18
  %25 = phi ptr [ %27, %49 ], [ %20, %18 ]
  %26 = phi ptr [ %51, %49 ], [ %16, %18 ]
  %27 = getelementptr i8, ptr %25, i32 1
  %28 = load i8, ptr %25, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %24
  %31 = zext i8 %28 to i32
  %32 = tail call ptr @strchr(ptr noundef %2, i32 noundef %31) #25
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i8 %28, ptr %26, align 1
  br label %49

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %26, i32 4
  %37 = icmp ugt ptr %36, %27
  br i1 %37, label %60, label %38

38:                                               ; preds = %35
  %39 = getelementptr i8, ptr %26, i32 1
  store i8 92, ptr %26, align 1
  %40 = lshr i8 %28, 6
  %41 = or i8 %40, 48
  %42 = getelementptr i8, ptr %26, i32 2
  store i8 %41, ptr %39, align 1
  %43 = lshr i8 %28, 3
  %44 = and i8 %43, 7
  %45 = or i8 %44, 48
  %46 = getelementptr i8, ptr %26, i32 3
  store i8 %45, ptr %42, align 1
  %47 = and i8 %28, 7
  %48 = or i8 %47, 48
  store i8 %48, ptr %46, align 1
  br label %49

49:                                               ; preds = %38, %34
  %50 = phi ptr [ %46, %38 ], [ %26, %34 ]
  %51 = getelementptr i8, ptr %50, i32 1
  %52 = icmp ugt ptr %50, %25
  br i1 %52, label %60, label %24

53:                                               ; preds = %24
  %54 = icmp eq ptr %26, null
  %55 = ptrtoint ptr %26 to i32
  %56 = ptrtoint ptr %16 to i32
  %57 = sub i32 %55, %56
  br i1 %54, label %60, label %58

58:                                               ; preds = %53
  %59 = icmp slt i32 %57, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %58, %53, %49, %35, %18, %15
  %61 = phi i32 [ %57, %58 ], [ -1, %15 ], [ -1, %18 ], [ -1, %53 ], [ -1, %35 ], [ -1, %49 ]
  %62 = load i32, ptr %6, align 4
  br label %69

63:                                               ; preds = %58
  %64 = load i32, ptr %4, align 4
  %65 = add i32 %64, %57
  %66 = load i32, ptr %6, align 4
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %68, label %69, !prof !10

68:                                               ; preds = %63
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/seq_file.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 89, 0\0A.popsection", ""() #25, !srcloc !12
  unreachable

69:                                               ; preds = %63, %60
  %70 = phi i32 [ %62, %60 ], [ %65, %63 ]
  %71 = phi i32 [ %61, %60 ], [ %57, %63 ]
  store i32 %70, ptr %4, align 4
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_file_path(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1
  %5 = tail call i32 @seq_path(ptr noundef %0, ptr noundef %4, ptr noundef %2)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_path_root(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, %6
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/seq_file.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #25, !srcloc !11
  unreachable

11:                                               ; preds = %4
  %12 = icmp ugt i32 %8, %6
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr i8, ptr %14, i32 %6
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi ptr [ %15, %13 ], [ null, %11 ]
  %18 = icmp eq i32 %8, %6
  br i1 %18, label %65, label %19

19:                                               ; preds = %16
  %20 = sub i32 %8, %6
  %21 = tail call ptr @__d_path(ptr noundef %1, ptr noundef %2, ptr noundef %17, i32 noundef %20) #25
  %22 = icmp eq ptr %21, null
  br i1 %22, label %81, label %23

23:                                               ; preds = %19
  %24 = ptrtoint ptr %21 to i32
  %25 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %62, label %26

26:                                               ; preds = %23
  %27 = icmp ugt ptr %17, %21
  br i1 %27, label %65, label %28

28:                                               ; preds = %53, %26
  %29 = phi ptr [ %31, %53 ], [ %21, %26 ]
  %30 = phi ptr [ %55, %53 ], [ %17, %26 ]
  %31 = getelementptr i8, ptr %29, i32 1
  %32 = load i8, ptr %29, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %28
  %35 = zext i8 %32 to i32
  %36 = tail call ptr @strchr(ptr noundef %3, i32 noundef %35) #25
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i8 %32, ptr %30, align 1
  br label %53

39:                                               ; preds = %34
  %40 = getelementptr i8, ptr %30, i32 4
  %41 = icmp ugt ptr %40, %31
  br i1 %41, label %65, label %42

42:                                               ; preds = %39
  %43 = getelementptr i8, ptr %30, i32 1
  store i8 92, ptr %30, align 1
  %44 = lshr i8 %32, 6
  %45 = or i8 %44, 48
  %46 = getelementptr i8, ptr %30, i32 2
  store i8 %45, ptr %43, align 1
  %47 = lshr i8 %32, 3
  %48 = and i8 %47, 7
  %49 = or i8 %48, 48
  %50 = getelementptr i8, ptr %30, i32 3
  store i8 %49, ptr %46, align 1
  %51 = and i8 %32, 7
  %52 = or i8 %51, 48
  store i8 %52, ptr %50, align 1
  br label %53

53:                                               ; preds = %42, %38
  %54 = phi ptr [ %50, %42 ], [ %30, %38 ]
  %55 = getelementptr i8, ptr %54, i32 1
  %56 = icmp ugt ptr %54, %29
  br i1 %56, label %65, label %28

57:                                               ; preds = %28
  %58 = icmp eq ptr %30, null
  %59 = ptrtoint ptr %30 to i32
  %60 = ptrtoint ptr %17 to i32
  %61 = sub i32 %59, %60
  br i1 %58, label %65, label %62

62:                                               ; preds = %57, %23
  %63 = phi i32 [ %61, %57 ], [ %24, %23 ]
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62, %57, %53, %39, %26, %16
  %66 = phi i32 [ %63, %62 ], [ -36, %16 ], [ -36, %26 ], [ -36, %57 ], [ -36, %39 ], [ -36, %53 ]
  %67 = load i32, ptr %7, align 4
  br label %74

68:                                               ; preds = %62
  %69 = load i32, ptr %5, align 4
  %70 = add i32 %69, %63
  %71 = load i32, ptr %7, align 4
  %72 = icmp ugt i32 %70, %71
  br i1 %72, label %73, label %74, !prof !10

73:                                               ; preds = %68
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/seq_file.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 89, 0\0A.popsection", ""() #25, !srcloc !12
  unreachable

74:                                               ; preds = %68, %65
  %75 = phi i32 [ %67, %65 ], [ %70, %68 ]
  %76 = phi i1 [ true, %65 ], [ false, %68 ]
  %77 = phi i32 [ %66, %65 ], [ %63, %68 ]
  store i32 %75, ptr %5, align 4
  %78 = icmp ne i32 %77, -36
  %79 = and i1 %76, %78
  %80 = select i1 %79, i32 %77, i32 0
  br label %81

81:                                               ; preds = %74, %19
  %82 = phi i32 [ %80, %74 ], [ 1, %19 ]
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__d_path(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_dentry(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, %5
  br i1 %8, label %9, label %10, !prof !10

9:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/seq_file.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #25, !srcloc !11
  unreachable

10:                                               ; preds = %3
  %11 = icmp ugt i32 %7, %5
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr i8, ptr %13, i32 %5
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi ptr [ %14, %12 ], [ null, %10 ]
  %17 = icmp eq i32 %7, %5
  br i1 %17, label %60, label %18

18:                                               ; preds = %15
  %19 = sub i32 %7, %5
  %20 = tail call ptr @dentry_path(ptr noundef %1, ptr noundef %16, i32 noundef %19) #25
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %22 = icmp ugt ptr %16, %20
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %60, label %24

24:                                               ; preds = %49, %18
  %25 = phi ptr [ %27, %49 ], [ %20, %18 ]
  %26 = phi ptr [ %51, %49 ], [ %16, %18 ]
  %27 = getelementptr i8, ptr %25, i32 1
  %28 = load i8, ptr %25, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %24
  %31 = zext i8 %28 to i32
  %32 = tail call ptr @strchr(ptr noundef %2, i32 noundef %31) #25
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i8 %28, ptr %26, align 1
  br label %49

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %26, i32 4
  %37 = icmp ugt ptr %36, %27
  br i1 %37, label %60, label %38

38:                                               ; preds = %35
  %39 = getelementptr i8, ptr %26, i32 1
  store i8 92, ptr %26, align 1
  %40 = lshr i8 %28, 6
  %41 = or i8 %40, 48
  %42 = getelementptr i8, ptr %26, i32 2
  store i8 %41, ptr %39, align 1
  %43 = lshr i8 %28, 3
  %44 = and i8 %43, 7
  %45 = or i8 %44, 48
  %46 = getelementptr i8, ptr %26, i32 3
  store i8 %45, ptr %42, align 1
  %47 = and i8 %28, 7
  %48 = or i8 %47, 48
  store i8 %48, ptr %46, align 1
  br label %49

49:                                               ; preds = %38, %34
  %50 = phi ptr [ %46, %38 ], [ %26, %34 ]
  %51 = getelementptr i8, ptr %50, i32 1
  %52 = icmp ugt ptr %50, %25
  br i1 %52, label %60, label %24

53:                                               ; preds = %24
  %54 = icmp eq ptr %26, null
  %55 = ptrtoint ptr %26 to i32
  %56 = ptrtoint ptr %16 to i32
  %57 = sub i32 %55, %56
  br i1 %54, label %60, label %58

58:                                               ; preds = %53
  %59 = icmp slt i32 %57, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %58, %53, %49, %35, %18, %15
  %61 = phi i32 [ %57, %58 ], [ -1, %15 ], [ -1, %18 ], [ -1, %53 ], [ -1, %35 ], [ -1, %49 ]
  %62 = load i32, ptr %6, align 4
  br label %69

63:                                               ; preds = %58
  %64 = load i32, ptr %4, align 4
  %65 = add i32 %64, %57
  %66 = load i32, ptr %6, align 4
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %68, label %69, !prof !10

68:                                               ; preds = %63
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/seq_file.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 89, 0\0A.popsection", ""() #25, !srcloc !12
  unreachable

69:                                               ; preds = %63, %60
  %70 = phi i32 [ %62, %60 ], [ %65, %63 ]
  %71 = phi i32 [ %61, %60 ], [ %57, %63 ]
  store i32 %70, ptr %4, align 4
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @single_open(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 4197568, i32 noundef 16) #28
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  store ptr @single_start, ptr %5, align 8
  %8 = getelementptr inbounds %struct.seq_operations, ptr %5, i32 0, i32 2
  store ptr @single_next, ptr %8, align 8
  %9 = getelementptr inbounds %struct.seq_operations, ptr %5, i32 0, i32 1
  store ptr @single_stop, ptr %9, align 4
  %10 = getelementptr inbounds %struct.seq_operations, ptr %5, i32 0, i32 3
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !8

14:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef null) #25
  br label %15

15:                                               ; preds = %14, %7
  %16 = load ptr, ptr @seq_file_cache, align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %16, i32 noundef 3520) #25
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  store ptr %17, ptr %11, align 8
  %20 = getelementptr inbounds %struct.seq_file, ptr %17, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %20, ptr noundef nonnull @.str.1, ptr noundef nonnull @seq_open.__key) #25
  %21 = getelementptr inbounds %struct.seq_file, ptr %17, i32 0, i32 8
  store ptr %5, ptr %21, align 4
  %22 = getelementptr inbounds %struct.seq_file, ptr %17, i32 0, i32 10
  store ptr %0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, -17
  store i32 %25, ptr %23, align 8
  %26 = load ptr, ptr %11, align 8
  %27 = getelementptr inbounds %struct.seq_file, ptr %26, i32 0, i32 11
  store ptr %2, ptr %27, align 8
  br label %29

28:                                               ; preds = %15
  tail call void @kfree(ptr noundef nonnull %5) #25
  br label %29

29:                                               ; preds = %28, %19, %3
  %30 = phi i32 [ -12, %28 ], [ 0, %19 ], [ -12, %3 ]
  ret i32 %30
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal noalias ptr @single_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load i64, ptr %1, align 8
  %4 = icmp eq i64 %3, 0
  %5 = zext i1 %4 to i32
  %6 = getelementptr i8, ptr null, i32 %5
  ret ptr %6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal noalias ptr @single_next(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #10 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @single_stop(ptr nocapture noundef %0, ptr nocapture noundef %1) #11 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @single_open_size(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = icmp ugt i32 %3, 2147479552
  br i1 %5, label %18, label %6, !prof !10

6:                                                ; preds = %4
  %7 = tail call noalias ptr @kvmalloc_node(i32 noundef %3, i32 noundef 4197568, i32 noundef -1) #26
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @single_open(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @kvfree(ptr noundef nonnull %7) #25
  br label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %15 = load ptr, ptr %14, align 8
  store ptr %7, ptr %15, align 8
  %16 = load ptr, ptr %14, align 8
  %17 = getelementptr inbounds %struct.seq_file, ptr %16, i32 0, i32 1
  store i32 %3, ptr %17, align 4
  br label %18

18:                                               ; preds = %13, %12, %6, %4
  %19 = phi i32 [ %10, %12 ], [ 0, %13 ], [ -12, %6 ], [ -12, %4 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @single_release(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.seq_file, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 8
  tail call void @kvfree(ptr noundef %7) #25
  %8 = load ptr, ptr @seq_file_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %8, ptr noundef %4) #25
  tail call void @kfree(ptr noundef %6) #25
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_release_private(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.seq_file, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  tail call void @kfree(ptr noundef %6) #25
  store ptr null, ptr %5, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = load ptr, ptr %7, align 8
  tail call void @kvfree(ptr noundef %8) #25
  %9 = load ptr, ptr @seq_file_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %9, ptr noundef %7) #25
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__seq_open_private(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %2, i32 noundef 4197824) #26
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !8

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef null) #25
  br label %11

11:                                               ; preds = %10, %6
  %12 = load ptr, ptr @seq_file_cache, align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %12, i32 noundef 3520) #25
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  store ptr %13, ptr %7, align 8
  %16 = getelementptr inbounds %struct.seq_file, ptr %13, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str.1, ptr noundef nonnull @seq_open.__key) #25
  %17 = getelementptr inbounds %struct.seq_file, ptr %13, i32 0, i32 8
  store ptr %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.seq_file, ptr %13, i32 0, i32 10
  store ptr %0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, -17
  store i32 %21, ptr %19, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = getelementptr inbounds %struct.seq_file, ptr %22, i32 0, i32 11
  store ptr %4, ptr %23, align 8
  br label %25

24:                                               ; preds = %11
  tail call void @kfree(ptr noundef nonnull %4) #25
  br label %25

25:                                               ; preds = %24, %15, %3
  %26 = phi ptr [ %4, %15 ], [ null, %3 ], [ null, %24 ]
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @seq_open_private(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @__seq_open_private(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 -12, i32 0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @seq_putc(ptr nocapture noundef %0, i8 noundef zeroext %1) #12 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8
  %10 = add nuw i32 %4, 1
  store i32 %10, ptr %3, align 4
  %11 = getelementptr i8, ptr %9, i32 %4
  store i8 %1, ptr %11, align 1
  br label %12

12:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @seq_puts(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #13 {
  %3 = tail call i32 @strlen(ptr noundef %1)
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %3
  %7 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr i8, ptr %11, i32 %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %12, ptr align 1 %1, i32 %3, i1 false)
  %13 = load i32, ptr %4, align 4
  %14 = add i32 %13, %3
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i32 [ %14, %10 ], [ %8, %2 ]
  store i32 %16, ptr %4, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @seq_put_decimal_ull_width(ptr nocapture noundef %0, ptr noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 2
  %8 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %56

11:                                               ; preds = %4
  %12 = icmp eq ptr %1, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %11
  %14 = load i8, ptr %1, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %1, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = icmp ult i32 %6, %9
  br i1 %21, label %22, label %38

22:                                               ; preds = %20
  %23 = load ptr, ptr %0, align 8
  %24 = add nuw i32 %6, 1
  store i32 %24, ptr %5, align 4
  %25 = getelementptr i8, ptr %23, i32 %6
  store i8 %14, ptr %25, align 1
  %26 = load i32, ptr %5, align 4
  br label %38

27:                                               ; preds = %16
  %28 = tail call i32 @strlen(ptr noundef nonnull %1) #25
  %29 = add i32 %28, %6
  %30 = icmp ult i32 %29, %9
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr i8, ptr %32, i32 %6
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %33, ptr nonnull align 1 %1, i32 %28, i1 false) #25
  %34 = load i32, ptr %5, align 4
  %35 = add i32 %34, %28
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi i32 [ %35, %31 ], [ %9, %27 ]
  store i32 %37, ptr %5, align 4
  br label %38

38:                                               ; preds = %36, %22, %20, %13, %11
  %39 = phi i32 [ %26, %22 ], [ %6, %20 ], [ %37, %36 ], [ %6, %13 ], [ %6, %11 ]
  %40 = icmp eq i32 %3, 0
  %41 = select i1 %40, i32 1, i32 %3
  %42 = add i32 %39, %41
  %43 = load i32, ptr %8, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load ptr, ptr %0, align 8
  %47 = getelementptr i8, ptr %46, i32 %39
  %48 = sub i32 %43, %39
  %49 = tail call i32 @num_to_str(ptr noundef %47, i32 noundef %48, i64 noundef %2, i32 noundef %41) #25
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, ptr %8, align 4
  br label %56

53:                                               ; preds = %45
  %54 = load i32, ptr %5, align 4
  %55 = add i32 %54, %49
  br label %56

56:                                               ; preds = %53, %51, %38, %4
  %57 = phi i32 [ %55, %53 ], [ %52, %51 ], [ %43, %38 ], [ %9, %4 ]
  store i32 %57, ptr %5, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @num_to_str(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @seq_put_decimal_ull(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @seq_put_hex_ll(ptr nocapture noundef %0, ptr noundef readonly %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %1, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %38, label %9

9:                                                ; preds = %6
  %10 = getelementptr i8, ptr %1, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %13
  %20 = load ptr, ptr %0, align 8
  %21 = add nuw i32 %15, 1
  store i32 %21, ptr %14, align 4
  %22 = getelementptr i8, ptr %20, i32 %15
  store i8 %7, ptr %22, align 1
  br label %38

23:                                               ; preds = %9
  %24 = tail call i32 @strlen(ptr noundef nonnull %1) #25
  %25 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr i8, ptr %32, i32 %26
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %33, ptr nonnull align 1 %1, i32 %24, i1 false) #25
  %34 = load i32, ptr %25, align 4
  %35 = add i32 %34, %24
  br label %36

36:                                               ; preds = %31, %23
  %37 = phi i32 [ %35, %31 ], [ %29, %23 ]
  store i32 %37, ptr %25, align 4
  br label %38

38:                                               ; preds = %36, %19, %13, %6, %4
  %39 = icmp eq i64 %2, 0
  %40 = tail call i64 @llvm.ctlz.i64(i64 %2, i1 true), !range !13
  %41 = trunc i64 %40 to i32
  %42 = sub nuw nsw i32 67, %41
  %43 = lshr i32 %42, 2
  %44 = select i1 %39, i32 1, i32 %43
  %45 = tail call i32 @llvm.umax.i32(i32 %44, i32 %3)
  %46 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, %45
  %49 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp ugt i32 %48, %50
  br i1 %51, label %82, label %52

52:                                               ; preds = %38
  %53 = add i32 %45, -1
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = trunc i64 %2 to i32
  %57 = and i32 %56, 15
  %58 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %57
  %59 = load i8, ptr %58, align 1
  %60 = load ptr, ptr %0, align 8
  %61 = add i32 %47, %53
  %62 = getelementptr i8, ptr %60, i32 %61
  store i8 %59, ptr %62, align 1
  %63 = add i32 %45, -2
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %65, label %79

65:                                               ; preds = %65, %55
  %66 = phi i32 [ %77, %65 ], [ %63, %55 ]
  %67 = phi i64 [ %68, %65 ], [ %2, %55 ]
  %68 = lshr i64 %67, 4
  %69 = load i32, ptr %46, align 4
  %70 = trunc i64 %68 to i32
  %71 = and i32 %70, 15
  %72 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %71
  %73 = load i8, ptr %72, align 1
  %74 = load ptr, ptr %0, align 8
  %75 = add i32 %69, %66
  %76 = getelementptr i8, ptr %74, i32 %75
  store i8 %73, ptr %76, align 1
  %77 = add i32 %66, -1
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %65, label %79

79:                                               ; preds = %65, %55
  %80 = load i32, ptr %46, align 4
  %81 = add i32 %80, %45
  br label %82

82:                                               ; preds = %79, %52, %38
  %83 = phi i32 [ %50, %38 ], [ %81, %79 ], [ %48, %52 ]
  store i32 %83, ptr %46, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @seq_put_decimal_ll(ptr nocapture noundef %0, ptr noundef readonly %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 3
  %7 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %72

10:                                               ; preds = %3
  %11 = icmp eq ptr %1, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %10
  %13 = load i8, ptr %1, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %1, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = icmp ult i32 %5, %8
  br i1 %20, label %21, label %37

21:                                               ; preds = %19
  %22 = load ptr, ptr %0, align 8
  %23 = add nuw i32 %5, 1
  store i32 %23, ptr %4, align 4
  %24 = getelementptr i8, ptr %22, i32 %5
  store i8 %13, ptr %24, align 1
  %25 = load i32, ptr %4, align 4
  br label %37

26:                                               ; preds = %15
  %27 = tail call i32 @strlen(ptr noundef nonnull %1) #25
  %28 = add i32 %27, %5
  %29 = icmp ult i32 %28, %8
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load ptr, ptr %0, align 8
  %32 = getelementptr i8, ptr %31, i32 %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %32, ptr nonnull align 1 %1, i32 %27, i1 false) #25
  %33 = load i32, ptr %4, align 4
  %34 = add i32 %33, %27
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi i32 [ %34, %30 ], [ %8, %26 ]
  store i32 %36, ptr %4, align 4
  br label %37

37:                                               ; preds = %35, %21, %19, %12, %10
  %38 = phi i32 [ %25, %21 ], [ %5, %19 ], [ %36, %35 ], [ %5, %12 ], [ %5, %10 ]
  %39 = add i32 %38, 2
  %40 = load i32, ptr %7, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %37
  %43 = icmp slt i64 %2, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  %45 = load ptr, ptr %0, align 8
  %46 = add i32 %38, 1
  store i32 %46, ptr %4, align 4
  %47 = getelementptr i8, ptr %45, i32 %38
  store i8 45, ptr %47, align 1
  %48 = sub i64 0, %2
  br label %49

49:                                               ; preds = %44, %42
  %50 = phi i64 [ %48, %44 ], [ %2, %42 ]
  %51 = icmp slt i64 %50, 10
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = trunc i64 %50 to i8
  %54 = add i8 %53, 48
  %55 = load ptr, ptr %0, align 8
  %56 = load i32, ptr %4, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %4, align 4
  %58 = getelementptr i8, ptr %55, i32 %56
  store i8 %54, ptr %58, align 1
  br label %74

59:                                               ; preds = %49
  %60 = load ptr, ptr %0, align 8
  %61 = load i32, ptr %4, align 4
  %62 = getelementptr i8, ptr %60, i32 %61
  %63 = load i32, ptr %7, align 4
  %64 = sub i32 %63, %61
  %65 = tail call i32 @num_to_str(ptr noundef %62, i32 noundef %64, i64 noundef %50, i32 noundef 0) #25
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, ptr %7, align 4
  br label %72

69:                                               ; preds = %59
  %70 = load i32, ptr %4, align 4
  %71 = add i32 %70, %65
  store i32 %71, ptr %4, align 4
  br label %74

72:                                               ; preds = %67, %37, %3
  %73 = phi i32 [ %68, %67 ], [ %40, %37 ], [ %8, %3 ]
  store i32 %73, ptr %4, align 4
  br label %74

74:                                               ; preds = %72, %69, %52
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @seq_write(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #16 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %2
  %7 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr i8, ptr %11, i32 %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %12, ptr align 1 %1, i32 %2, i1 false)
  %13 = load i32, ptr %4, align 4
  %14 = add i32 %13, %2
  br label %15

15:                                               ; preds = %10, %3
  %16 = phi i32 [ %14, %10 ], [ %8, %3 ]
  %17 = phi i32 [ 0, %10 ], [ -1, %3 ]
  store i32 %16, ptr %4, align 4
  ret i32 %17
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @seq_pad(ptr nocapture noundef %0, i8 noundef zeroext %1) #16 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %4, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 %11, ptr %5, align 4
  br label %30

14:                                               ; preds = %9
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr i8, ptr %15, i32 %6
  tail call void @llvm.memset.p0.i32(ptr align 1 %16, i8 32, i32 %7, i1 false)
  %17 = load i32, ptr %5, align 4
  %18 = add i32 %17, %7
  store i32 %18, ptr %5, align 4
  br label %19

19:                                               ; preds = %14, %2
  %20 = phi i32 [ %18, %14 ], [ %6, %2 ]
  %21 = icmp eq i8 %1, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %20, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load ptr, ptr %0, align 8
  %28 = add nuw i32 %20, 1
  store i32 %28, ptr %5, align 4
  %29 = getelementptr i8, ptr %27, i32 %20
  store i8 %1, ptr %29, align 1
  br label %30

30:                                               ; preds = %26, %22, %19, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @seq_hex_dump(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i1 noundef zeroext %7) #0 {
  %9 = icmp ne i32 %3, 16
  %10 = icmp ne i32 %3, 32
  %11 = and i1 %9, %10
  %12 = select i1 %11, i32 16, i32 %3
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %65, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %16 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  br label %17

17:                                               ; preds = %62, %14
  %18 = phi i32 [ 0, %14 ], [ %63, %62 ]
  %19 = phi i32 [ %6, %14 ], [ %25, %62 ]
  %20 = load i32, ptr %15, align 4
  %21 = load i32, ptr %16, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %65, label %23

23:                                               ; preds = %17
  %24 = tail call i32 @llvm.smin.i32(i32 %19, i32 %12)
  %25 = sub i32 %19, %12
  switch i32 %2, label %29 [
    i32 1, label %26
    i32 2, label %28
  ]

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %5, i32 %18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef %27)
  br label %30

28:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %1, i32 noundef %18)
  br label %30

29:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %1)
  br label %30

30:                                               ; preds = %29, %28, %26
  %31 = load i32, ptr %15, align 4
  %32 = load i32, ptr %16, align 4
  %33 = icmp ult i32 %32, %31
  br i1 %33, label %34, label %35, !prof !10

34:                                               ; preds = %30
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/seq_file.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #25, !srcloc !11
  unreachable

35:                                               ; preds = %30
  %36 = icmp ugt i32 %32, %31
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load ptr, ptr %0, align 8
  %39 = getelementptr i8, ptr %38, i32 %31
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi ptr [ %39, %37 ], [ null, %35 ]
  %42 = sub i32 %32, %31
  %43 = getelementptr i8, ptr %5, i32 %18
  %44 = tail call i32 @hex_dump_to_buffer(ptr noundef %43, i32 noundef %24, i32 noundef %12, i32 noundef %4, ptr noundef %41, i32 noundef %42, i1 noundef zeroext %7) #25
  %45 = icmp ult i32 %44, %42
  %46 = select i1 %45, i32 %44, i32 -1
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, ptr %16, align 4
  store i32 %49, ptr %15, align 4
  br label %62

50:                                               ; preds = %40
  %51 = load i32, ptr %15, align 4
  %52 = add i32 %51, %46
  %53 = load i32, ptr %16, align 4
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %55, label %56, !prof !10

55:                                               ; preds = %50
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/seq_file.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 89, 0\0A.popsection", ""() #25, !srcloc !12
  unreachable

56:                                               ; preds = %50
  store i32 %52, ptr %15, align 4
  %57 = icmp ult i32 %52, %53
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  %59 = load ptr, ptr %0, align 8
  %60 = add nuw i32 %52, 1
  store i32 %60, ptr %15, align 4
  %61 = getelementptr i8, ptr %59, i32 %52
  store i8 10, ptr %61, align 1
  br label %62

62:                                               ; preds = %58, %56, %48
  %63 = add i32 %18, %12
  %64 = icmp ult i32 %63, %6
  br i1 %64, label %17, label %65

65:                                               ; preds = %62, %17, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_dump_to_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @seq_list_start(ptr noundef readonly %0, i64 noundef %1) #17 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %13, label %9

5:                                                ; preds = %9
  %6 = add i64 %11, -1
  %7 = load ptr, ptr %10, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5, %2
  %10 = phi ptr [ %7, %5 ], [ %3, %2 ]
  %11 = phi i64 [ %6, %5 ], [ %1, %2 ]
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %5

13:                                               ; preds = %9, %5, %2
  %14 = phi ptr [ null, %2 ], [ null, %5 ], [ %10, %9 ]
  ret ptr %14
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @seq_list_start_head(ptr noundef readonly %0, i64 noundef %1) #17 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %15, label %10

7:                                                ; preds = %10
  %8 = load ptr, ptr %11, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ %8, %7 ], [ %5, %4 ]
  %12 = phi i64 [ %13, %7 ], [ %1, %4 ]
  %13 = add i64 %12, -1
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %7

15:                                               ; preds = %10, %7, %4, %2
  %16 = phi ptr [ %0, %2 ], [ null, %4 ], [ %11, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @seq_list_next(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef %2) #10 {
  %4 = load ptr, ptr %0, align 4
  %5 = load i64, ptr %2, align 8
  %6 = add i64 %5, 1
  store i64 %6, ptr %2, align 8
  %7 = icmp eq ptr %4, %1
  %8 = select i1 %7, ptr null, ptr %4
  ret ptr %8
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @seq_hlist_start(ptr nocapture noundef readonly %0, i64 noundef %1) #17 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ %1, %2 ], [ %10, %3 ]
  %5 = phi ptr [ %0, %2 ], [ %6, %3 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i64 %4, 0
  %9 = select i1 %7, i1 true, i1 %8
  %10 = add i64 %4, -1
  br i1 %9, label %11, label %3

11:                                               ; preds = %3
  ret ptr %6
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @seq_hlist_start_head(ptr nocapture noundef readonly %0, i64 noundef %1) #17 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ %7, %4 ], [ %1, %2 ]
  %6 = phi ptr [ %8, %4 ], [ %0, %2 ]
  %7 = add i64 %5, -1
  %8 = load ptr, ptr %6, align 4
  %9 = icmp eq ptr %8, null
  %10 = icmp eq i64 %7, 0
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %12, label %4

12:                                               ; preds = %4, %2
  %13 = phi ptr [ inttoptr (i32 1 to ptr), %2 ], [ %8, %4 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @seq_hlist_next(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #12 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = icmp eq ptr %0, inttoptr (i32 1 to ptr)
  %7 = select i1 %6, ptr %1, ptr %0
  %8 = load ptr, ptr %7, align 4
  ret ptr %8
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @seq_hlist_start_rcu(ptr noundef %0, i64 noundef %1) #18 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %3 ]
  %5 = phi i64 [ %1, %2 ], [ %10, %3 ]
  %6 = load volatile ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i64 %5, 0
  %9 = select i1 %7, i1 true, i1 %8
  %10 = add i64 %5, -1
  br i1 %9, label %11, label %3

11:                                               ; preds = %3
  ret ptr %6
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @seq_hlist_start_head_rcu(ptr noundef %0, i64 noundef %1) #18 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ %8, %4 ], [ %0, %2 ]
  %6 = phi i64 [ %7, %4 ], [ %1, %2 ]
  %7 = add i64 %6, -1
  %8 = load volatile ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  %10 = icmp eq i64 %7, 0
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %12, label %4

12:                                               ; preds = %4, %2
  %13 = phi ptr [ inttoptr (i32 1 to ptr), %2 ], [ %8, %4 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @seq_hlist_next_rcu(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #19 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = icmp eq ptr %0, inttoptr (i32 1 to ptr)
  %7 = select i1 %6, ptr %1, ptr %0
  %8 = load volatile ptr, ptr %7, align 4
  ret ptr %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @seq_hlist_start_percpu(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) #5 {
  store i32 -1, ptr %1, align 4
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #29
  store i32 %4, ptr %1, align 4
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %31

7:                                                ; preds = %3
  %8 = ptrtoint ptr %0 to i32
  br label %14

9:                                                ; preds = %27, %14
  %10 = phi i64 [ %16, %14 ], [ %28, %27 ]
  %11 = tail call i32 @cpumask_next(i32 noundef %15, ptr noundef nonnull @__cpu_possible_mask) #29
  store i32 %11, ptr %1, align 4
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %9, %7
  %15 = phi i32 [ %4, %7 ], [ %11, %9 ]
  %16 = phi i64 [ %2, %7 ], [ %10, %9 ]
  %17 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %8
  %20 = inttoptr i32 %19 to ptr
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %9, label %23

23:                                               ; preds = %27, %14
  %24 = phi ptr [ %29, %27 ], [ %21, %14 ]
  %25 = phi i64 [ %28, %27 ], [ %16, %14 ]
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = add i64 %25, -1
  %29 = load ptr, ptr %24, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %9, label %23

31:                                               ; preds = %23, %9, %3
  %32 = phi ptr [ null, %3 ], [ %24, %23 ], [ null, %9 ]
  ret ptr %32
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @seq_hlist_next_percpu(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) #5 {
  %5 = load i64, ptr %3, align 8
  %6 = add i64 %5, 1
  store i64 %6, ptr %3, align 8
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %4
  %10 = load i32, ptr %2, align 4
  %11 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef nonnull @__cpu_possible_mask) #29
  %12 = ptrtoint ptr %1 to i32
  store i32 %11, ptr %2, align 4
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %23, %9
  %16 = phi i32 [ %24, %23 ], [ %11, %9 ]
  %17 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %12
  %20 = inttoptr i32 %19 to ptr
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = tail call i32 @cpumask_next(i32 noundef %16, ptr noundef nonnull @__cpu_possible_mask) #29
  store i32 %24, ptr %2, align 4
  %25 = load i32, ptr @nr_cpu_ids, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %15, label %27

27:                                               ; preds = %23, %15, %9, %4
  %28 = phi ptr [ %7, %4 ], [ null, %9 ], [ null, %23 ], [ %21, %15 ]
  ret ptr %28
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @seq_file_init() local_unnamed_addr #21 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.6, i32 noundef 80, i32 noundef 8, i32 noundef 262144, ptr noundef null) #25
  store ptr %1, ptr @seq_file_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #22

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #24

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nounwind willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #21 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #22 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #23 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #24 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { cold nounwind }
attributes #28 = { nounwind allocsize(2) }
attributes #29 = { nounwind readonly willreturn }

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
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2151364991, i64 2151365479, i64 2151365028, i64 2151365084, i64 2151365118, i64 2151365142, i64 2151365183, i64 2151365204, i64 2151365232, i64 2151365266}
!12 = !{i64 2151366224, i64 2151366712, i64 2151366261, i64 2151366317, i64 2151366351, i64 2151366375, i64 2151366416, i64 2151366437, i64 2151366465, i64 2151366499}
!13 = !{i64 0, i64 65}
