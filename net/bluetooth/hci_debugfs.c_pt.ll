; ModuleID = '/llk/IR/net/bluetooth/hci_debugfs.c_pt.bc'
source_filename = "../net/bluetooth/hci_debugfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.0, i32, %struct.spinlock }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.131, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.132, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.133, ptr, %struct.address_space, %struct.list_head, %union.anon.134, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.131 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.132 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.133 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.134 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.bdaddr_list = type { %struct.list_head, %struct.bdaddr_t, i8 }
%struct.hci_conn_params = type { %struct.list_head, %struct.list_head, %struct.bdaddr_t, i8, i16, i16, i16, i16, i32, ptr, i8, [1 x i32], i8 }
%struct.blocked_key = type { %struct.list_head, %struct.callback_head, i8, [16 x i8] }
%struct.bt_uuid = type { %struct.list_head, [16 x i8], i8, i8 }
%struct.oob_data = type { %struct.list_head, %struct.bdaddr_t, i8, i8, [16 x i8], [16 x i8], [16 x i8], [16 x i8] }
%struct.file = type { %union.anon.24, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.24 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inquiry_entry = type { %struct.list_head, %struct.list_head, i32, i32, %struct.inquiry_data }
%struct.inquiry_data = type { %struct.bdaddr_t, i8, i8, i8, [3 x i8], i16, i8, i8 }
%struct.link_key = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, i8, [16 x i8], i8 }
%struct.smp_irk = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, %struct.bdaddr_t, i8, [16 x i8] }
%struct.smp_ltk = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, i8, i8, i8, i8, i16, i64, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"features\00", align 1
@features_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @features_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"manufacturer\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"hci_version\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"hci_revision\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"hardware_error\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"device_id\00", align 1
@device_id_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @device_id_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"device_list\00", align 1
@device_list_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @device_list_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"blacklist\00", align 1
@blacklist_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @blacklist_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"blocked_keys\00", align 1
@blocked_keys_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @blocked_keys_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"uuids\00", align 1
@uuids_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @uuids_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"remote_oob\00", align 1
@remote_oob_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @remote_oob_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"conn_info_min_age\00", align 1
@conn_info_min_age_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @conn_info_min_age_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"conn_info_max_age\00", align 1
@conn_info_max_age_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @conn_info_max_age_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"use_debug_keys\00", align 1
@use_debug_keys_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @use_debug_keys_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"sc_only_mode\00", align 1
@sc_only_mode_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @sc_only_mode_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"hardware_info\00", align 1
@hardware_info_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @hardware_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"firmware_info\00", align 1
@firmware_info_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @firmware_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"inquiry_cache\00", align 1
@inquiry_cache_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @inquiry_cache_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"link_keys\00", align 1
@link_keys_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @link_keys_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"dev_class\00", align 1
@dev_class_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dev_class_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.20 = private unnamed_addr constant [14 x i8] c"voice_setting\00", align 1
@voice_setting_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @voice_setting_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.21 = private unnamed_addr constant [16 x i8] c"force_bredr_smp\00", align 1
@force_bredr_smp_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @force_bredr_smp_read, ptr @force_bredr_smp_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.22 = private unnamed_addr constant [15 x i8] c"ssp_debug_mode\00", align 1
@ssp_debug_mode_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @ssp_debug_mode_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.23 = private unnamed_addr constant [21 x i8] c"min_encrypt_key_size\00", align 1
@min_encrypt_key_size_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @min_encrypt_key_size_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.24 = private unnamed_addr constant [18 x i8] c"auto_accept_delay\00", align 1
@auto_accept_delay_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @auto_accept_delay_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.25 = private unnamed_addr constant [13 x i8] c"idle_timeout\00", align 1
@idle_timeout_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @idle_timeout_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.26 = private unnamed_addr constant [19 x i8] c"sniff_min_interval\00", align 1
@sniff_min_interval_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sniff_min_interval_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.27 = private unnamed_addr constant [19 x i8] c"sniff_max_interval\00", align 1
@sniff_max_interval_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sniff_max_interval_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.28 = private unnamed_addr constant [9 x i8] c"identity\00", align 1
@identity_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @identity_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.29 = private unnamed_addr constant [12 x i8] c"rpa_timeout\00", align 1
@rpa_timeout_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rpa_timeout_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.30 = private unnamed_addr constant [15 x i8] c"random_address\00", align 1
@random_address_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @random_address_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.31 = private unnamed_addr constant [15 x i8] c"static_address\00", align 1
@static_address_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @static_address_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.32 = private unnamed_addr constant [21 x i8] c"force_static_address\00", align 1
@force_static_address_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @force_static_address_read, ptr @force_static_address_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.33 = private unnamed_addr constant [16 x i8] c"white_list_size\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"white_list\00", align 1
@white_list_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @white_list_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.35 = private unnamed_addr constant [17 x i8] c"resolv_list_size\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"resolv_list\00", align 1
@resolv_list_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @resolv_list_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.37 = private unnamed_addr constant [24 x i8] c"identity_resolving_keys\00", align 1
@identity_resolving_keys_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @identity_resolving_keys_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.38 = private unnamed_addr constant [15 x i8] c"long_term_keys\00", align 1
@long_term_keys_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @long_term_keys_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.39 = private unnamed_addr constant [18 x i8] c"conn_min_interval\00", align 1
@conn_min_interval_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @conn_min_interval_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.40 = private unnamed_addr constant [18 x i8] c"conn_max_interval\00", align 1
@conn_max_interval_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @conn_max_interval_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.41 = private unnamed_addr constant [13 x i8] c"conn_latency\00", align 1
@conn_latency_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @conn_latency_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.42 = private unnamed_addr constant [20 x i8] c"supervision_timeout\00", align 1
@supervision_timeout_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @supervision_timeout_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.43 = private unnamed_addr constant [16 x i8] c"adv_channel_map\00", align 1
@adv_channel_map_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @adv_channel_map_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.44 = private unnamed_addr constant [17 x i8] c"adv_min_interval\00", align 1
@adv_min_interval_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @adv_min_interval_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.45 = private unnamed_addr constant [17 x i8] c"adv_max_interval\00", align 1
@adv_max_interval_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @adv_max_interval_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.46 = private unnamed_addr constant [27 x i8] c"discov_interleaved_timeout\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"min_key_size\00", align 1
@min_key_size_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @min_key_size_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.48 = private unnamed_addr constant [13 x i8] c"max_key_size\00", align 1
@max_key_size_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @max_key_size_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.49 = private unnamed_addr constant [21 x i8] c"auth_payload_timeout\00", align 1
@auth_payload_timeout_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @auth_payload_timeout_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.50 = private unnamed_addr constant [14 x i8] c"force_no_mitm\00", align 1
@force_no_mitm_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @force_no_mitm_read, ptr @force_no_mitm_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.51 = private unnamed_addr constant [30 x i8] c"quirk_strict_duplicate_filter\00", align 1
@quirk_strict_duplicate_filter_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @quirk_strict_duplicate_filter_read, ptr @quirk_strict_duplicate_filter_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.52 = private unnamed_addr constant [29 x i8] c"quirk_simultaneous_discovery\00", align 1
@quirk_simultaneous_discovery_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @quirk_simultaneous_discovery_read, ptr @quirk_simultaneous_discovery_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.53 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"dut_mode\00", align 1
@dut_mode_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @dut_mode_read, ptr @dut_mode_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.55 = private unnamed_addr constant [12 x i8] c"vendor_diag\00", align 1
@vendor_diag_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @vendor_diag_read, ptr @vendor_diag_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.56 = private unnamed_addr constant [11 x i8] c"%2u: %8ph\0A\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"LE: %8ph\0A\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"%4.4x:%4.4x:%4.4x:%4.4x\0A\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"%pMR (type %u)\0A\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"%pMR (type %u) %u\0A\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"%u %*phN\0A\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"%pUb\0A\00", align 1
@.str.63 = private unnamed_addr constant [43 x i8] c"%pMR (type %u) %u %*phN %*phN %*phN %*phN\0A\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.66 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.67 = private unnamed_addr constant [46 x i8] c"%pMR %d %d %d 0x%.2x%.2x%.2x 0x%.4x %d %d %u\0A\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"%pMR %u %*phN %u\0A\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"0x%.2x%.2x%.2x\0A\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"0x%4.4llx\0A\00", align 1
@.str.71 = private unnamed_addr constant [27 x i8] c"%pMR (type %u) %*phN %pMR\0A\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"%pMR\0A\00", align 1
@.str.73 = private unnamed_addr constant [48 x i8] c"%pMR (type %u) %u 0x%02x %u %.4x %.16llx %*phN\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_debugfs_create_common(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 203
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %0, ptr noundef nonnull @features_fops) #8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 31
  tail call void @debugfs_create_u16(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %5, ptr noundef %6) #8
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 28
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %7, ptr noundef %8) #8
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 29
  tail call void @debugfs_create_u16(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %9, ptr noundef %10) #8
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 77
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %11, ptr noundef %12) #8
  %13 = load ptr, ptr %2, align 8
  %14 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %13, ptr noundef %0, ptr noundef nonnull @device_id_fops) #8
  %15 = load ptr, ptr %2, align 8
  %16 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %15, ptr noundef %0, ptr noundef nonnull @device_list_fops) #8
  %17 = load ptr, ptr %2, align 8
  %18 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef %17, ptr noundef %0, ptr noundef nonnull @blacklist_fops) #8
  %19 = load ptr, ptr %2, align 8
  %20 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 292, ptr noundef %19, ptr noundef %0, ptr noundef nonnull @blocked_keys_fops) #8
  %21 = load ptr, ptr %2, align 8
  %22 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 292, ptr noundef %21, ptr noundef %0, ptr noundef nonnull @uuids_fops) #8
  %23 = load ptr, ptr %2, align 8
  %24 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %23, ptr noundef %0, ptr noundef nonnull @remote_oob_fops) #8
  %25 = load ptr, ptr %2, align 8
  %26 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 420, ptr noundef %25, ptr noundef %0, ptr noundef nonnull @conn_info_min_age_fops) #8
  %27 = load ptr, ptr %2, align 8
  %28 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 420, ptr noundef %27, ptr noundef %0, ptr noundef nonnull @conn_info_max_age_fops) #8
  %29 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 6
  %30 = load i8, ptr %29, align 2
  %31 = and i8 %30, 8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 4
  %35 = load i8, ptr %34, align 2
  %36 = and i8 %35, 64
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %1
  %39 = load ptr, ptr %2, align 8
  %40 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 292, ptr noundef %39, ptr noundef %0, ptr noundef nonnull @use_debug_keys_fops) #8
  br label %41

41:                                               ; preds = %38, %33
  %42 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 2, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 4
  %48 = load i8, ptr %47, align 2
  %49 = and i8 %48, 64
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46, %41
  %52 = load ptr, ptr %2, align 8
  %53 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 292, ptr noundef %52, ptr noundef %0, ptr noundef nonnull @sc_only_mode_fops) #8
  br label %54

54:                                               ; preds = %51, %46
  %55 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 201
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %2, align 8
  %60 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 292, ptr noundef %59, ptr noundef %0, ptr noundef nonnull @hardware_info_fops) #8
  br label %61

61:                                               ; preds = %58, %54
  %62 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 202
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %2, align 8
  %67 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 292, ptr noundef %66, ptr noundef %0, ptr noundef nonnull @firmware_info_fops) #8
  br label %68

68:                                               ; preds = %65, %61
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u16(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_debugfs_create_bredr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 203
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %0, ptr noundef nonnull @inquiry_cache_fops) #8
  %5 = load ptr, ptr %2, align 8
  %6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 256, ptr noundef %5, ptr noundef %0, ptr noundef nonnull @link_keys_fops) #8
  %7 = load ptr, ptr %2, align 8
  %8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 292, ptr noundef %7, ptr noundef %0, ptr noundef nonnull @dev_class_fops) #8
  %9 = load ptr, ptr %2, align 8
  %10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 292, ptr noundef %9, ptr noundef %0, ptr noundef nonnull @voice_setting_fops) #8
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 21
  %12 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 2, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load ptr, ptr %2, align 8
  %18 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 420, ptr noundef %17, ptr noundef %0, ptr noundef nonnull @force_bredr_smp_fops) #8
  br label %19

19:                                               ; preds = %16, %1
  %20 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 6
  %21 = load i8, ptr %20, align 2
  %22 = and i8 %21, 8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %2, align 8
  %26 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 292, ptr noundef %25, ptr noundef %0, ptr noundef nonnull @ssp_debug_mode_fops) #8
  %27 = load ptr, ptr %2, align 8
  %28 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 420, ptr noundef %27, ptr noundef %0, ptr noundef nonnull @min_encrypt_key_size_fops) #8
  %29 = load ptr, ptr %2, align 8
  %30 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 420, ptr noundef %29, ptr noundef %0, ptr noundef nonnull @auto_accept_delay_fops) #8
  br label %31

31:                                               ; preds = %24, %19
  %32 = load i8, ptr %11, align 2
  %33 = icmp sgt i8 %32, -1
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %2, align 8
  %36 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.25, i16 noundef zeroext 420, ptr noundef %35, ptr noundef %0, ptr noundef nonnull @idle_timeout_fops) #8
  %37 = load ptr, ptr %2, align 8
  %38 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext 420, ptr noundef %37, ptr noundef %0, ptr noundef nonnull @sniff_min_interval_fops) #8
  %39 = load ptr, ptr %2, align 8
  %40 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 420, ptr noundef %39, ptr noundef %0, ptr noundef nonnull @sniff_max_interval_fops) #8
  br label %41

41:                                               ; preds = %34, %31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_debugfs_create_le(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bdaddr_t, align 1
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 203
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext 256, ptr noundef %4, ptr noundef %0, ptr noundef nonnull @identity_fops) #8
  %6 = load ptr, ptr %3, align 8
  %7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext 420, ptr noundef %6, ptr noundef %0, ptr noundef nonnull @rpa_timeout_fops) #8
  %8 = load ptr, ptr %3, align 8
  %9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.30, i16 noundef zeroext 292, ptr noundef %8, ptr noundef %0, ptr noundef nonnull @random_address_fops) #8
  %10 = load ptr, ptr %3, align 8
  %11 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext 292, ptr noundef %10, ptr noundef %0, ptr noundef nonnull @static_address_fops) #8
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i64 6, i1 false)
  %13 = call i32 @bcmp(ptr noundef dereferenceable(6) %12, ptr noundef nonnull dereferenceable(6) %2, i32 6)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load ptr, ptr %3, align 8
  %17 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.32, i16 noundef zeroext 420, ptr noundef %16, ptr noundef %0, ptr noundef nonnull @force_static_address_fops) #8
  br label %18

18:                                               ; preds = %15, %1
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 23
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.33, i16 noundef zeroext 292, ptr noundef %19, ptr noundef %20) #8
  %21 = load ptr, ptr %3, align 8
  %22 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.34, i16 noundef zeroext 292, ptr noundef %21, ptr noundef %0, ptr noundef nonnull @white_list_fops) #8
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 24
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.35, i16 noundef zeroext 292, ptr noundef %23, ptr noundef %24) #8
  %25 = load ptr, ptr %3, align 8
  %26 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext 292, ptr noundef %25, ptr noundef %0, ptr noundef nonnull @resolv_list_fops) #8
  %27 = load ptr, ptr %3, align 8
  %28 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.37, i16 noundef zeroext 256, ptr noundef %27, ptr noundef %0, ptr noundef nonnull @identity_resolving_keys_fops) #8
  %29 = load ptr, ptr %3, align 8
  %30 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.38, i16 noundef zeroext 256, ptr noundef %29, ptr noundef %0, ptr noundef nonnull @long_term_keys_fops) #8
  %31 = load ptr, ptr %3, align 8
  %32 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.39, i16 noundef zeroext 420, ptr noundef %31, ptr noundef %0, ptr noundef nonnull @conn_min_interval_fops) #8
  %33 = load ptr, ptr %3, align 8
  %34 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.40, i16 noundef zeroext 420, ptr noundef %33, ptr noundef %0, ptr noundef nonnull @conn_max_interval_fops) #8
  %35 = load ptr, ptr %3, align 8
  %36 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.41, i16 noundef zeroext 420, ptr noundef %35, ptr noundef %0, ptr noundef nonnull @conn_latency_fops) #8
  %37 = load ptr, ptr %3, align 8
  %38 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.42, i16 noundef zeroext 420, ptr noundef %37, ptr noundef %0, ptr noundef nonnull @supervision_timeout_fops) #8
  %39 = load ptr, ptr %3, align 8
  %40 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.43, i16 noundef zeroext 420, ptr noundef %39, ptr noundef %0, ptr noundef nonnull @adv_channel_map_fops) #8
  %41 = load ptr, ptr %3, align 8
  %42 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.44, i16 noundef zeroext 420, ptr noundef %41, ptr noundef %0, ptr noundef nonnull @adv_min_interval_fops) #8
  %43 = load ptr, ptr %3, align 8
  %44 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.45, i16 noundef zeroext 420, ptr noundef %43, ptr noundef %0, ptr noundef nonnull @adv_max_interval_fops) #8
  %45 = load ptr, ptr %3, align 8
  %46 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 69
  tail call void @debugfs_create_u16(ptr noundef nonnull @.str.46, i16 noundef zeroext 420, ptr noundef %45, ptr noundef %46) #8
  %47 = load ptr, ptr %3, align 8
  %48 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.47, i16 noundef zeroext 420, ptr noundef %47, ptr noundef %0, ptr noundef nonnull @min_key_size_fops) #8
  %49 = load ptr, ptr %3, align 8
  %50 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.48, i16 noundef zeroext 420, ptr noundef %49, ptr noundef %0, ptr noundef nonnull @max_key_size_fops) #8
  %51 = load ptr, ptr %3, align 8
  %52 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.49, i16 noundef zeroext 420, ptr noundef %51, ptr noundef %0, ptr noundef nonnull @auth_payload_timeout_fops) #8
  %53 = load ptr, ptr %3, align 8
  %54 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.50, i16 noundef zeroext 420, ptr noundef %53, ptr noundef %0, ptr noundef nonnull @force_no_mitm_fops) #8
  %55 = load ptr, ptr %3, align 8
  %56 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.51, i16 noundef zeroext 420, ptr noundef %55, ptr noundef %0, ptr noundef nonnull @quirk_strict_duplicate_filter_fops) #8
  %57 = load ptr, ptr %3, align 8
  %58 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.52, i16 noundef zeroext 420, ptr noundef %57, ptr noundef %0, ptr noundef nonnull @quirk_simultaneous_discovery_fops) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_debugfs_create_conn(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 203
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 11
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 6, ptr noundef nonnull @.str.53, i32 noundef %13)
  %15 = load ptr, ptr %5, align 8
  %16 = call ptr @debugfs_create_dir(ptr noundef nonnull %2, ptr noundef %15) #8
  %17 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 64
  store ptr %16, ptr %17, align 8
  br label %18

18:                                               ; preds = %10, %1
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_debugfs_create_basic(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 203
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.54, i16 noundef zeroext 420, ptr noundef %3, ptr noundef %0, ptr noundef nonnull @dut_mode_fops) #8
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 235
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.55, i16 noundef zeroext 420, ptr noundef %9, ptr noundef %0, ptr noundef nonnull @vendor_diag_fops) #8
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @features_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @features_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @features_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 20
  %7 = getelementptr %struct.hci_dev, ptr %4, i32 0, i32 21, i32 0
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.56, i32 noundef 0, ptr noundef %7) #8
  %8 = load i8, ptr %6, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr %struct.hci_dev, ptr %4, i32 0, i32 21, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.56, i32 noundef 1, ptr noundef %11) #8
  %12 = load i8, ptr %6, align 1
  %13 = icmp ult i8 %12, 2
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr %struct.hci_dev, ptr %4, i32 0, i32 21, i32 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.56, i32 noundef 2, ptr noundef %15) #8
  br label %16

16:                                               ; preds = %14, %10, %2
  %17 = getelementptr %struct.hci_dev, ptr %4, i32 0, i32 21, i32 0, i32 4
  %18 = load i8, ptr %17, align 2
  %19 = and i8 %18, 64
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.57, ptr noundef %22) #8
  br label %23

23:                                               ; preds = %21, %16
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @device_id_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @device_id_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @device_id_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 82
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 83
  %10 = load i16, ptr %9, align 8
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 84
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 85
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef %8, i32 noundef %11, i32 noundef %14, i32 noundef %17) #8
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @device_list_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @device_list_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @device_list_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 186
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %2
  %10 = phi ptr [ %15, %9 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.bdaddr_list, ptr %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.bdaddr_list, ptr %10, i32 0, i32 2
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.59, ptr noundef %11, i32 noundef %14) #8
  %15 = load ptr, ptr %10, align 4
  %16 = icmp eq ptr %15, %6
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %2
  %18 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 194
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %31, label %21

21:                                               ; preds = %21, %17
  %22 = phi ptr [ %29, %21 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.hci_conn_params, ptr %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.hci_conn_params, ptr %22, i32 0, i32 3
  %25 = load i8, ptr %24, align 2
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.hci_conn_params, ptr %22, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.60, ptr noundef %23, i32 noundef %26, i32 noundef %28) #8
  %29 = load ptr, ptr %22, align 4
  %30 = icmp eq ptr %29, %18
  br i1 %30, label %31, label %21

31:                                               ; preds = %21, %17
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blacklist_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @blacklist_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blacklist_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 185
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %2
  %10 = phi ptr [ %15, %9 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.bdaddr_list, ptr %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.bdaddr_list, ptr %10, i32 0, i32 2
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.59, ptr noundef %11, i32 noundef %14) #8
  %15 = load ptr, ptr %10, align 4
  %16 = icmp eq ptr %15, %6
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %2
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blocked_keys_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @blocked_keys_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blocked_keys_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 197
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %2
  %9 = phi ptr [ %14, %8 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.blocked_key, ptr %9, i32 0, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.blocked_key, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef %12, i32 noundef 16, ptr noundef %13) #8
  %14 = load volatile ptr, ptr %9, align 4
  %15 = icmp eq ptr %14, %5
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %2
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uuids_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @uuids_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uuids_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca [16 x i8], align 1
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 187
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %62, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 1
  %12 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 2
  %13 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 3
  %14 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 4
  %15 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 5
  %16 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 6
  %17 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 7
  %18 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 8
  %19 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 9
  %20 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 10
  %21 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 11
  %22 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 12
  %23 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 13
  %24 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 14
  %25 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 15
  br label %26

26:                                               ; preds = %26, %10
  %27 = phi ptr [ %60, %26 ], [ %8, %10 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %28 = getelementptr %struct.bt_uuid, ptr %27, i32 0, i32 1, i32 15
  %29 = load i8, ptr %28, align 1
  store i8 %29, ptr %3, align 1
  %30 = getelementptr %struct.bt_uuid, ptr %27, i32 0, i32 1, i32 14
  %31 = load i8, ptr %30, align 1
  store i8 %31, ptr %11, align 1
  %32 = getelementptr %struct.bt_uuid, ptr %27, i32 0, i32 1, i32 13
  %33 = load i8, ptr %32, align 1
  store i8 %33, ptr %12, align 1
  %34 = getelementptr %struct.bt_uuid, ptr %27, i32 0, i32 1, i32 12
  %35 = load i8, ptr %34, align 1
  store i8 %35, ptr %13, align 1
  %36 = getelementptr %struct.bt_uuid, ptr %27, i32 0, i32 1, i32 11
  %37 = load i8, ptr %36, align 1
  store i8 %37, ptr %14, align 1
  %38 = getelementptr %struct.bt_uuid, ptr %27, i32 0, i32 1, i32 10
  %39 = load i8, ptr %38, align 1
  store i8 %39, ptr %15, align 1
  %40 = getelementptr %struct.bt_uuid, ptr %27, i32 0, i32 1, i32 9
  %41 = load i8, ptr %40, align 1
  store i8 %41, ptr %16, align 1
  %42 = getelementptr %struct.bt_uuid, ptr %27, i32 0, i32 1, i32 8
  %43 = load i8, ptr %42, align 1
  store i8 %43, ptr %17, align 1
  %44 = getelementptr %struct.bt_uuid, ptr %27, i32 0, i32 1, i32 7
  %45 = load i8, ptr %44, align 1
  store i8 %45, ptr %18, align 1
  %46 = getelementptr %struct.bt_uuid, ptr %27, i32 0, i32 1, i32 6
  %47 = load i8, ptr %46, align 1
  store i8 %47, ptr %19, align 1
  %48 = getelementptr %struct.bt_uuid, ptr %27, i32 0, i32 1, i32 5
  %49 = load i8, ptr %48, align 1
  store i8 %49, ptr %20, align 1
  %50 = getelementptr %struct.bt_uuid, ptr %27, i32 0, i32 1, i32 4
  %51 = load i8, ptr %50, align 1
  store i8 %51, ptr %21, align 1
  %52 = getelementptr %struct.bt_uuid, ptr %27, i32 0, i32 1, i32 3
  %53 = load i8, ptr %52, align 1
  store i8 %53, ptr %22, align 1
  %54 = getelementptr %struct.bt_uuid, ptr %27, i32 0, i32 1, i32 2
  %55 = load i8, ptr %54, align 1
  store i8 %55, ptr %23, align 1
  %56 = getelementptr %struct.bt_uuid, ptr %27, i32 0, i32 1, i32 1
  %57 = load i8, ptr %56, align 1
  store i8 %57, ptr %24, align 1
  %58 = getelementptr %struct.bt_uuid, ptr %27, i32 0, i32 1, i32 0
  %59 = load i8, ptr %58, align 1
  store i8 %59, ptr %25, align 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.62, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  %60 = load ptr, ptr %27, align 4
  %61 = icmp eq ptr %60, %7
  br i1 %61, label %62, label %26

62:                                               ; preds = %26, %2
  call void @mutex_unlock(ptr noundef %6) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @remote_oob_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @remote_oob_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @remote_oob_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 191
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %24, label %9

9:                                                ; preds = %9, %2
  %10 = phi ptr [ %22, %9 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.oob_data, ptr %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.oob_data, ptr %10, i32 0, i32 2
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.oob_data, ptr %10, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.oob_data, ptr %10, i32 0, i32 4
  %19 = getelementptr inbounds %struct.oob_data, ptr %10, i32 0, i32 5
  %20 = getelementptr inbounds %struct.oob_data, ptr %10, i32 0, i32 6
  %21 = getelementptr inbounds %struct.oob_data, ptr %10, i32 0, i32 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.63, ptr noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef 16, ptr noundef %18, i32 noundef 16, ptr noundef %19, i32 noundef 16, ptr noundef %20, i32 noundef 16, ptr noundef %21) #8
  %22 = load ptr, ptr %10, align 4
  %23 = icmp eq ptr %22, %6
  br i1 %23, label %24, label %9

24:                                               ; preds = %9, %2
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @conn_info_min_age_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @conn_info_min_age_get, ptr noundef nonnull @conn_info_min_age_set, ptr noundef nonnull @.str.64) #8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @conn_info_min_age_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 70
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i64
  store i64 %6, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @conn_info_min_age_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 71
  %6 = load i16, ptr %5, align 8
  %7 = zext i16 %6 to i64
  %8 = icmp ult i64 %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #8
  %11 = trunc i64 %1 to i16
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 70
  store i16 %11, ptr %12, align 2
  tail call void @mutex_unlock(ptr noundef %10) #8
  br label %13

13:                                               ; preds = %9, %4, %2
  %14 = phi i32 [ 0, %9 ], [ -22, %4 ], [ -22, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @conn_info_max_age_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @conn_info_max_age_get, ptr noundef nonnull @conn_info_max_age_set, ptr noundef nonnull @.str.64) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @conn_info_max_age_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 71
  %5 = load i16, ptr %4, align 8
  %6 = zext i16 %5 to i64
  store i64 %6, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @conn_info_max_age_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 70
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i64
  %8 = icmp ugt i64 %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #8
  %11 = trunc i64 %1 to i16
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 71
  store i16 %11, ptr %12, align 8
  tail call void @mutex_unlock(ptr noundef %10) #8
  br label %13

13:                                               ; preds = %9, %4, %2
  %14 = phi i32 [ 0, %9 ], [ -22, %4 ], [ -22, %2 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @use_debug_keys_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #8
  %8 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 206
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i8 78, i8 89
  store i8 %12, ptr %5, align 1
  %13 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  store i8 10, ptr %13, align 1
  %14 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  store i8 0, ptr %14, align 1
  %15 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sc_only_mode_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #8
  %8 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 206
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 131072
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i8 78, i8 89
  store i8 %12, ptr %5, align 1
  %13 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  store i8 10, ptr %13, align 1
  %14 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  store i8 0, ptr %14, align 1
  %15 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hardware_info_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @hardware_info_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hardware_info_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 201
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @.str.66, ptr %7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.65, ptr noundef %9) #8
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @firmware_info_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @firmware_info_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @firmware_info_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 202
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @.str.66, ptr %7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.65, ptr noundef %9) #8
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inquiry_cache_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @inquiry_cache_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inquiry_cache_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 170, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %43, label %9

9:                                                ; preds = %9, %2
  %10 = phi ptr [ %41, %9 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.inquiry_entry, ptr %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.inquiry_entry, ptr %10, i32 0, i32 4, i32 1
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.inquiry_entry, ptr %10, i32 0, i32 4, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.inquiry_entry, ptr %10, i32 0, i32 4, i32 3
  %19 = load i8, ptr %18, align 2
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.inquiry_entry, ptr %10, i32 0, i32 4, i32 4
  %22 = getelementptr %struct.inquiry_entry, ptr %10, i32 0, i32 4, i32 4, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr %struct.inquiry_entry, ptr %10, i32 0, i32 4, i32 4, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, ptr %21, align 1
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds %struct.inquiry_entry, ptr %10, i32 0, i32 4, i32 5
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.inquiry_entry, ptr %10, i32 0, i32 4, i32 6
  %34 = load i8, ptr %33, align 2
  %35 = sext i8 %34 to i32
  %36 = getelementptr inbounds %struct.inquiry_entry, ptr %10, i32 0, i32 4, i32 7
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.inquiry_entry, ptr %10, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %24, i32 noundef %27, i32 noundef %29, i32 noundef %32, i32 noundef %35, i32 noundef %38, i32 noundef %40) #8
  %41 = load ptr, ptr %10, align 4
  %42 = icmp eq ptr %41, %6
  br i1 %42, label %43, label %9

43:                                               ; preds = %9, %2
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @link_keys_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @link_keys_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @link_keys_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 188
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %20, label %8

8:                                                ; preds = %8, %2
  %9 = phi ptr [ %18, %8 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.link_key, ptr %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.link_key, ptr %9, i32 0, i32 3
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.link_key, ptr %9, i32 0, i32 4
  %15 = getelementptr inbounds %struct.link_key, ptr %9, i32 0, i32 5
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.68, ptr noundef %10, i32 noundef %13, i32 noundef 16, ptr noundef %14, i32 noundef %17) #8
  %18 = load volatile ptr, ptr %9, align 4
  %19 = icmp eq ptr %18, %5
  br i1 %19, label %20, label %8

20:                                               ; preds = %8, %2
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dev_class_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dev_class_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dev_class_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 17
  %7 = getelementptr %struct.hci_dev, ptr %4, i32 0, i32 17, i32 2
  %8 = load i8, ptr %7, align 2
  %9 = zext i8 %8 to i32
  %10 = getelementptr %struct.hci_dev, ptr %4, i32 0, i32 17, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, ptr %6, align 8
  %14 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.69, i32 noundef %9, i32 noundef %12, i32 noundef %14) #8
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @voice_setting_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @voice_setting_get, ptr noundef null, ptr noundef nonnull @.str.70) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @voice_setting_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 33
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i64
  store i64 %6, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @force_bredr_smp_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #8
  %8 = getelementptr %struct.hci_dev, ptr %7, i32 0, i32 206, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i8 78, i8 89
  store i8 %12, ptr %5, align 1
  %13 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  store i8 10, ptr %13, align 1
  %14 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  store i8 0, ptr %14, align 1
  %15 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @force_bredr_smp_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  %8 = call i32 @kstrtobool_from_user(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load i8, ptr %5, align 1, !range !11
  %12 = icmp ne i8 %11, 0
  %13 = call i32 @smp_force_bredr(ptr noundef %7, i1 noundef zeroext %12) #8
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 %2, i32 %13
  br label %16

16:                                               ; preds = %10, %4
  %17 = phi i32 [ %8, %4 ], [ %15, %10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool_from_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_force_bredr(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ssp_debug_mode_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #8
  %8 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 76
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i8 78, i8 89
  store i8 %11, ptr %5, align 1
  %12 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  store i8 10, ptr %12, align 1
  %13 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  store i8 0, ptr %13, align 1
  %14 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @min_encrypt_key_size_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @min_encrypt_key_size_get, ptr noundef nonnull @min_encrypt_key_size_set, ptr noundef nonnull @.str.64) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @min_encrypt_key_size_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 73
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i64
  store i64 %6, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @min_encrypt_key_size_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = add i64 %1, -17
  %4 = icmp ult i64 %3, -16
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = trunc i64 %1 to i8
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 73
  store i8 %7, ptr %8, align 4
  tail call void @mutex_unlock(ptr noundef %6) #8
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %5 ], [ -22, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @auto_accept_delay_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @auto_accept_delay_get, ptr noundef nonnull @auto_accept_delay_set, ptr noundef nonnull @.str.64) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @auto_accept_delay_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 117
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  store i64 %6, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @auto_accept_delay_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = trunc i64 %1 to i32
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 117
  store i32 %4, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idle_timeout_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @idle_timeout_get, ptr noundef nonnull @idle_timeout_set, ptr noundef nonnull @.str.64) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idle_timeout_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 102
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  store i64 %6, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idle_timeout_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = icmp ne i64 %1, 0
  %4 = add i64 %1, -3600001
  %5 = icmp ult i64 %4, -3599501
  %6 = and i1 %3, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #8
  %9 = trunc i64 %1 to i32
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 102
  store i32 %9, ptr %10, align 4
  tail call void @mutex_unlock(ptr noundef %8) #8
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ 0, %7 ], [ -22, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sniff_min_interval_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @sniff_min_interval_get, ptr noundef nonnull @sniff_min_interval_set, ptr noundef nonnull @.str.64) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sniff_min_interval_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 103
  %5 = load i16, ptr %4, align 8
  %6 = zext i16 %5 to i64
  store i64 %6, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sniff_min_interval_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = icmp ne i64 %1, 0
  %4 = and i64 %1, 1
  %5 = icmp eq i64 %4, 0
  %6 = and i1 %3, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 104
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i64
  %11 = icmp ult i64 %10, %1
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %13) #8
  %14 = trunc i64 %1 to i16
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 103
  store i16 %14, ptr %15, align 8
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %16

16:                                               ; preds = %12, %7, %2
  %17 = phi i32 [ 0, %12 ], [ -22, %7 ], [ -22, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sniff_max_interval_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @sniff_max_interval_get, ptr noundef nonnull @sniff_max_interval_set, ptr noundef nonnull @.str.64) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sniff_max_interval_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 104
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i64
  store i64 %6, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sniff_max_interval_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = icmp ne i64 %1, 0
  %4 = and i64 %1, 1
  %5 = icmp eq i64 %4, 0
  %6 = and i1 %3, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 103
  %9 = load i16, ptr %8, align 8
  %10 = zext i16 %9 to i64
  %11 = icmp ugt i64 %10, %1
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %13) #8
  %14 = trunc i64 %1 to i16
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 104
  store i16 %14, ptr %15, align 2
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %16

16:                                               ; preds = %12, %7, %2
  %17 = phi i32 [ 0, %12 ], [ -22, %7 ], [ -22, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @identity_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @identity_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @identity_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.bdaddr_t, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !8
  %7 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #8
  call void @hci_copy_identity_address(ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %8 = load i8, ptr %4, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 220
  %11 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 223
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.71, ptr noundef nonnull %3, i32 noundef %9, i32 noundef 16, ptr noundef %10, ptr noundef %11) #8
  call void @mutex_unlock(ptr noundef %7) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_copy_identity_address(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpa_timeout_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @rpa_timeout_get, ptr noundef nonnull @rpa_timeout_set, ptr noundef nonnull @.str.64) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpa_timeout_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 221
  %5 = load i32, ptr %4, align 8
  %6 = zext i32 %5 to i64
  store i64 %6, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpa_timeout_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = add i64 %1, -86401
  %4 = icmp ult i64 %3, -86371
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = trunc i64 %1 to i32
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 221
  store i32 %7, ptr %8, align 8
  tail call void @mutex_unlock(ptr noundef %6) #8
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %5 ], [ -22, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @random_address_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @random_address_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @random_address_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.72, ptr noundef %6) #8
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @static_address_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @static_address_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @static_address_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.72, ptr noundef %6) #8
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @force_static_address_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #8
  %8 = getelementptr %struct.hci_dev, ptr %7, i32 0, i32 206, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 128
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i8 78, i8 89
  store i8 %12, ptr %5, align 1
  %13 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  store i8 10, ptr %13, align 1
  %14 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  store i8 0, ptr %14, align 1
  %15 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @force_static_address_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  %8 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 3
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %4
  %13 = call i32 @kstrtobool_from_user(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i8, ptr %5, align 1, !range !11
  %17 = zext i8 %16 to i32
  %18 = getelementptr %struct.hci_dev, ptr %7, i32 0, i32 206, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = lshr i32 %19, 7
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, %17
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 206
  call void @_change_bit(i32 noundef 39, ptr noundef %24) #8
  br label %25

25:                                               ; preds = %23, %15, %12, %4
  %26 = phi i32 [ %2, %23 ], [ -16, %4 ], [ %13, %12 ], [ -114, %15 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_change_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @white_list_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @white_list_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @white_list_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 192
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %2
  %10 = phi ptr [ %15, %9 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.bdaddr_list, ptr %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.bdaddr_list, ptr %10, i32 0, i32 2
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.59, ptr noundef %11, i32 noundef %14) #8
  %15 = load ptr, ptr %10, align 4
  %16 = icmp eq ptr %15, %6
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %2
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @resolv_list_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @resolv_list_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @resolv_list_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 193
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %2
  %10 = phi ptr [ %15, %9 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.bdaddr_list, ptr %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.bdaddr_list, ptr %10, i32 0, i32 2
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.59, ptr noundef %11, i32 noundef %14) #8
  %15 = load ptr, ptr %10, align 4
  %16 = icmp eq ptr %15, %6
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %2
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @identity_resolving_keys_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @identity_resolving_keys_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @identity_resolving_keys_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 190
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %18, label %8

8:                                                ; preds = %8, %2
  %9 = phi ptr [ %16, %8 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.smp_irk, ptr %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.smp_irk, ptr %9, i32 0, i32 4
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.smp_irk, ptr %9, i32 0, i32 5
  %15 = getelementptr inbounds %struct.smp_irk, ptr %9, i32 0, i32 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.71, ptr noundef %10, i32 noundef %13, i32 noundef 16, ptr noundef %14, ptr noundef %15) #8
  %16 = load volatile ptr, ptr %9, align 4
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %18, label %8

18:                                               ; preds = %8, %2
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @long_term_keys_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @long_term_keys_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @long_term_keys_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 189
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %31, label %8

8:                                                ; preds = %8, %2
  %9 = phi ptr [ %29, %8 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.smp_ltk, ptr %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.smp_ltk, ptr %9, i32 0, i32 3
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.smp_ltk, ptr %9, i32 0, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.smp_ltk, ptr %9, i32 0, i32 5
  %18 = load i8, ptr %17, align 8
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.smp_ltk, ptr %9, i32 0, i32 6
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.smp_ltk, ptr %9, i32 0, i32 7
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = getelementptr inbounds %struct.smp_ltk, ptr %9, i32 0, i32 8
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds %struct.smp_ltk, ptr %9, i32 0, i32 9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef %10, i32 noundef %13, i32 noundef %16, i32 noundef %19, i32 noundef %22, i32 noundef %25, i64 noundef %27, i32 noundef 16, ptr noundef %28) #8
  %29 = load volatile ptr, ptr %9, align 4
  %30 = icmp eq ptr %29, %5
  br i1 %30, label %31, label %8

31:                                               ; preds = %8, %2
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @conn_min_interval_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @conn_min_interval_get, ptr noundef nonnull @conn_min_interval_set, ptr noundef nonnull @.str.64) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @conn_min_interval_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 57
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i64
  store i64 %6, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @conn_min_interval_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = add i64 %1, -3201
  %4 = icmp ult i64 %3, -3195
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 58
  %7 = load i16, ptr %6, align 8
  %8 = zext i16 %7 to i64
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %11) #8
  %12 = trunc i64 %1 to i16
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 57
  store i16 %12, ptr %13, align 2
  tail call void @mutex_unlock(ptr noundef %11) #8
  br label %14

14:                                               ; preds = %10, %5, %2
  %15 = phi i32 [ 0, %10 ], [ -22, %5 ], [ -22, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @conn_max_interval_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @conn_max_interval_get, ptr noundef nonnull @conn_max_interval_set, ptr noundef nonnull @.str.64) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @conn_max_interval_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 58
  %5 = load i16, ptr %4, align 8
  %6 = zext i16 %5 to i64
  store i64 %6, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @conn_max_interval_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = add i64 %1, -3201
  %4 = icmp ult i64 %3, -3195
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 57
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i64
  %9 = icmp ugt i64 %8, %1
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %11) #8
  %12 = trunc i64 %1 to i16
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 58
  store i16 %12, ptr %13, align 8
  tail call void @mutex_unlock(ptr noundef %11) #8
  br label %14

14:                                               ; preds = %10, %5, %2
  %15 = phi i32 [ 0, %10 ], [ -22, %5 ], [ -22, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @conn_latency_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @conn_latency_get, ptr noundef nonnull @conn_latency_set, ptr noundef nonnull @.str.64) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @conn_latency_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 59
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i64
  store i64 %6, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @conn_latency_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = icmp ugt i64 %1, 499
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = trunc i64 %1 to i16
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 59
  store i16 %6, ptr %7, align 2
  tail call void @mutex_unlock(ptr noundef %5) #8
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @supervision_timeout_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @supervision_timeout_get, ptr noundef nonnull @supervision_timeout_set, ptr noundef nonnull @.str.64) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @supervision_timeout_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 60
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i64
  store i64 %6, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @supervision_timeout_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = add i64 %1, -3201
  %4 = icmp ult i64 %3, -3191
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = trunc i64 %1 to i16
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 60
  store i16 %7, ptr %8, align 4
  tail call void @mutex_unlock(ptr noundef %6) #8
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %5 ], [ -22, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv_channel_map_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @adv_channel_map_get, ptr noundef nonnull @adv_channel_map_set, ptr noundef nonnull @.str.64) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv_channel_map_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 43
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i64
  store i64 %6, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv_channel_map_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = add i64 %1, -8
  %4 = icmp ult i64 %3, -7
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = trunc i64 %1 to i8
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 43
  store i8 %7, ptr %8, align 1
  tail call void @mutex_unlock(ptr noundef %6) #8
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %5 ], [ -22, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv_min_interval_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @adv_min_interval_get, ptr noundef nonnull @adv_min_interval_set, ptr noundef nonnull @.str.64) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv_min_interval_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 44
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i64
  store i64 %6, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv_min_interval_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = add i64 %1, -16385
  %4 = icmp ult i64 %3, -16353
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 45
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i64
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %11) #8
  %12 = trunc i64 %1 to i16
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 44
  store i16 %12, ptr %13, align 4
  tail call void @mutex_unlock(ptr noundef %11) #8
  br label %14

14:                                               ; preds = %10, %5, %2
  %15 = phi i32 [ 0, %10 ], [ -22, %5 ], [ -22, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv_max_interval_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @adv_max_interval_get, ptr noundef nonnull @adv_max_interval_set, ptr noundef nonnull @.str.64) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv_max_interval_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 45
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i64
  store i64 %6, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adv_max_interval_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = add i64 %1, -16385
  %4 = icmp ult i64 %3, -16353
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 44
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i64
  %9 = icmp ugt i64 %8, %1
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %11) #8
  %12 = trunc i64 %1 to i16
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 45
  store i16 %12, ptr %13, align 2
  tail call void @mutex_unlock(ptr noundef %11) #8
  br label %14

14:                                               ; preds = %10, %5, %2
  %15 = phi i32 [ 0, %10 ], [ -22, %5 ], [ -22, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @min_key_size_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @min_key_size_get, ptr noundef nonnull @min_key_size_set, ptr noundef nonnull @.str.64) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @min_key_size_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 68
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i64
  store i64 %6, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @min_key_size_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 67
  %4 = load i8, ptr %3, align 2
  %5 = zext i8 %4 to i64
  %6 = icmp ult i64 %5, %1
  %7 = icmp ult i64 %1, 7
  %8 = or i1 %7, %6
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #8
  %11 = trunc i64 %1 to i8
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 68
  store i8 %11, ptr %12, align 1
  tail call void @mutex_unlock(ptr noundef %10) #8
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i32 [ 0, %9 ], [ -22, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_key_size_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @max_key_size_get, ptr noundef nonnull @max_key_size_set, ptr noundef nonnull @.str.64) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_key_size_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 67
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i64
  store i64 %6, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_key_size_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = icmp ugt i64 %1, 16
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 68
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i64
  %8 = icmp ugt i64 %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #8
  %11 = trunc i64 %1 to i8
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 67
  store i8 %11, ptr %12, align 2
  tail call void @mutex_unlock(ptr noundef %10) #8
  br label %13

13:                                               ; preds = %9, %4, %2
  %14 = phi i32 [ 0, %9 ], [ -22, %4 ], [ -22, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @auth_payload_timeout_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @auth_payload_timeout_get, ptr noundef nonnull @auth_payload_timeout_set, ptr noundef nonnull @.str.64) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @auth_payload_timeout_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 72
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i64
  store i64 %6, ptr %1, align 8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @auth_payload_timeout_set(ptr noundef %0, i64 noundef %1) #0 {
  %3 = add i64 %1, -65536
  %4 = icmp ult i64 %3, -65535
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = trunc i64 %1 to i16
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 72
  store i16 %7, ptr %8, align 2
  tail call void @mutex_unlock(ptr noundef %6) #8
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %5 ], [ -22, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @force_no_mitm_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #8
  %8 = getelementptr %struct.hci_dev, ptr %7, i32 0, i32 206, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 2048
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i8 78, i8 89
  store i8 %12, ptr %5, align 1
  %13 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  store i8 10, ptr %13, align 1
  %14 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  store i8 0, ptr %14, align 1
  %15 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @force_no_mitm_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [32 x i8], align 1
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  %9 = tail call i32 @llvm.umin.i32(i32 %2, i32 31)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 0, ptr %6, align 1, !annotation !8
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %9, i32 -1090519040) #9, !srcloc !12
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20, !prof !13

13:                                               ; preds = %4
  %14 = tail call ptr @llvm.thread.pointer() #8
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #10, !srcloc !14
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #8, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !16
  %19 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %9) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #8, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !16
  br label %20

20:                                               ; preds = %13, %4
  %21 = phi i32 [ %19, %13 ], [ %9, %4 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !13

23:                                               ; preds = %20
  %24 = sub i32 %9, %21
  %25 = getelementptr i8, ptr %5, i32 %24
  call void @llvm.memset.p0.i32(ptr align 1 %25, i8 0, i32 %21, i1 false) #8
  br label %40

26:                                               ; preds = %20
  %27 = getelementptr [32 x i8], ptr %5, i32 0, i32 %9
  store i8 0, ptr %27, align 1
  %28 = call i32 @kstrtobool(ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i8, ptr %6, align 1, !range !11
  %32 = zext i8 %31 to i32
  %33 = getelementptr %struct.hci_dev, ptr %8, i32 0, i32 206, i32 1
  %34 = load volatile i32, ptr %33, align 4
  %35 = lshr i32 %34, 11
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, %32
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 206
  call void @_change_bit(i32 noundef 43, ptr noundef %39) #8
  br label %40

40:                                               ; preds = %38, %30, %26, %23
  %41 = phi i32 [ %2, %38 ], [ -22, %26 ], [ -114, %30 ], [ -14, %23 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @quirk_strict_duplicate_filter_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #8
  %8 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 118
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i8 78, i8 89
  store i8 %12, ptr %5, align 1
  %13 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  store i8 10, ptr %13, align 1
  %14 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  store i8 0, ptr %14, align 1
  %15 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @quirk_strict_duplicate_filter_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  %8 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 3
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %4
  %13 = call i32 @kstrtobool_from_user(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load i8, ptr %5, align 1, !range !11
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 118
  %19 = load volatile i32, ptr %18, align 4
  %20 = lshr i32 %19, 9
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, %17
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  call void @_change_bit(i32 noundef 9, ptr noundef %18) #8
  br label %24

24:                                               ; preds = %23, %15, %12, %4
  %25 = phi i32 [ %2, %23 ], [ -16, %4 ], [ %13, %12 ], [ -114, %15 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @quirk_simultaneous_discovery_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #8
  %8 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 118
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1024
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i8 78, i8 89
  store i8 %12, ptr %5, align 1
  %13 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  store i8 10, ptr %13, align 1
  %14 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  store i8 0, ptr %14, align 1
  %15 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @quirk_simultaneous_discovery_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  %8 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 3
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %4
  %13 = call i32 @kstrtobool_from_user(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load i8, ptr %5, align 1, !range !11
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 118
  %19 = load volatile i32, ptr %18, align 4
  %20 = lshr i32 %19, 10
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, %17
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  call void @_change_bit(i32 noundef 10, ptr noundef %18) #8
  br label %24

24:                                               ; preds = %23, %15, %12, %4
  %25 = phi i32 [ %2, %23 ], [ -16, %4 ], [ %13, %12 ], [ -114, %15 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dut_mode_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #8
  %8 = getelementptr %struct.hci_dev, ptr %7, i32 0, i32 206, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i8 78, i8 89
  store i8 %12, ptr %5, align 1
  %13 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  store i8 10, ptr %13, align 1
  %14 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  store i8 0, ptr %14, align 1
  %15 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dut_mode_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  %8 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 3
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %4
  %13 = call i32 @kstrtobool_from_user(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load i8, ptr %5, align 1, !range !11
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 206
  %19 = getelementptr %struct.hci_dev, ptr %7, i32 0, i32 206, i32 1
  %20 = load volatile i32, ptr %19, align 4
  %21 = lshr i32 %20, 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, %17
  br i1 %23, label %34, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 163
  call void @mutex_lock(ptr noundef %25) #8
  %26 = load i8, ptr %5, align 1, !range !11
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, i16 3075, i16 6147
  %29 = call ptr @__hci_cmd_sync(ptr noundef %7, i16 noundef zeroext %28, i32 noundef 0, ptr noundef null, i32 noundef 200) #8
  call void @mutex_unlock(ptr noundef %25) #8
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = ptrtoint ptr %29 to i32
  br label %34

33:                                               ; preds = %24
  call void @kfree_skb_reason(ptr noundef %29, i32 noundef 0) #8
  call void @_change_bit(i32 noundef 36, ptr noundef %18) #8
  br label %34

34:                                               ; preds = %33, %31, %15, %12, %4
  %35 = phi i32 [ %32, %31 ], [ %2, %33 ], [ -100, %4 ], [ %13, %12 ], [ -114, %15 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vendor_diag_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #8
  %8 = getelementptr %struct.hci_dev, ptr %7, i32 0, i32 206, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i8 78, i8 89
  store i8 %12, ptr %5, align 1
  %13 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  store i8 10, ptr %13, align 1
  %14 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  store i8 0, ptr %14, align 1
  %15 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vendor_diag_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  %8 = call i32 @kstrtobool_from_user(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 118
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 2048
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 3
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 206
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20, %10
  %26 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 163
  call void @mutex_lock(ptr noundef %26) #8
  %27 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 235
  %28 = load ptr, ptr %27, align 4
  %29 = load i8, ptr %5, align 1, !range !11
  %30 = icmp ne i8 %29, 0
  %31 = call i32 %28(ptr noundef %7, i1 noundef zeroext %30) #8
  call void @mutex_unlock(ptr noundef %26) #8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %25, %20, %15
  %34 = load i8, ptr %5, align 1, !range !11
  %35 = icmp eq i8 %34, 0
  %36 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 206
  br i1 %35, label %38, label %37

37:                                               ; preds = %33
  call void @_set_bit(i32 noundef 37, ptr noundef %36) #8
  br label %39

38:                                               ; preds = %33
  call void @_clear_bit(i32 noundef 37, ptr noundef %36) #8
  br label %39

39:                                               ; preds = %38, %37, %25, %4
  %40 = phi i32 [ %8, %4 ], [ %31, %25 ], [ %2, %38 ], [ %2, %37 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }

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
!8 = !{!"auto-init"}
!9 = !{i64 2149191662}
!10 = !{i64 2149191879}
!11 = !{i8 0, i8 2}
!12 = !{i64 2151004013, i64 2151004038}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 3500125}
!15 = !{i64 3500322}
!16 = !{i64 2150985601}
