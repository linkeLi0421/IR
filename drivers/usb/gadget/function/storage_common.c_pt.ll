; ModuleID = '/llk/IR/drivers/usb/gadget/function/storage_common.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/storage_common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_intf_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_intf_desc\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_intf_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_fs_bulk_in_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_fs_bulk_in_desc\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_fs_bulk_in_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_fs_bulk_out_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_fs_bulk_out_desc\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_fs_bulk_out_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_fs_function:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_fs_function\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_fs_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_hs_bulk_in_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_hs_bulk_in_desc\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_hs_bulk_in_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_hs_bulk_out_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_hs_bulk_out_desc\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_hs_bulk_out_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_hs_function:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_hs_function\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_hs_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_ss_bulk_in_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_ss_bulk_in_desc\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_ss_bulk_in_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_ss_bulk_in_comp_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_ss_bulk_in_comp_desc\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_ss_bulk_in_comp_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_ss_bulk_out_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_ss_bulk_out_desc\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_ss_bulk_out_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_ss_bulk_out_comp_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_ss_bulk_out_comp_desc\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_ss_bulk_out_comp_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_ss_function:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_ss_function\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_ss_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_lun_close:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_lun_close\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_lun_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_lun_open:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_lun_open\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_lun_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_lun_fsync_sub:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_lun_fsync_sub\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_lun_fsync_sub:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_store_cdrom_address:\09\09\09\09\09"
module asm "\09.asciz \09\22store_cdrom_address\22\09\09\09\09\09"
module asm "__kstrtabns_store_cdrom_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_show_ro:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_show_ro\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_show_ro:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_show_nofua:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_show_nofua\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_show_nofua:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_show_file:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_show_file\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_show_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_show_cdrom:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_show_cdrom\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_show_cdrom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_show_removable:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_show_removable\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_show_removable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_show_inquiry_string:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_show_inquiry_string\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_show_inquiry_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_store_ro:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_store_ro\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_store_ro:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_store_nofua:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_store_nofua\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_store_nofua:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_store_file:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_store_file\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_store_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_store_cdrom:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_store_cdrom\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_store_cdrom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_store_removable:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_store_removable\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_store_removable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsg_store_inquiry_string:\09\09\09\09\09"
module asm "\09.asciz \09\22fsg_store_inquiry_string\22\09\09\09\09\09"
module asm "__kstrtabns_fsg_store_inquiry_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.fsg_lun = type { ptr, i64, i64, i8, i32, i32, i32, i32, i32, %struct.device, ptr, ptr, [29 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.60 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}

@fsg_intf_desc = dso_local global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 2, i8 8, i8 6, i8 80, i8 0 }, align 1
@__kstrtab_fsg_intf_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_intf_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_intf_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_intf_desc to i32), ptr @__kstrtab_fsg_intf_desc, ptr @__kstrtabns_fsg_intf_desc }, section "___ksymtab_gpl+fsg_intf_desc", align 4
@fsg_fs_bulk_in_desc = dso_local global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@__kstrtab_fsg_fs_bulk_in_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_fs_bulk_in_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_fs_bulk_in_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_fs_bulk_in_desc to i32), ptr @__kstrtab_fsg_fs_bulk_in_desc, ptr @__kstrtabns_fsg_fs_bulk_in_desc }, section "___ksymtab_gpl+fsg_fs_bulk_in_desc", align 4
@fsg_fs_bulk_out_desc = dso_local global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@__kstrtab_fsg_fs_bulk_out_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_fs_bulk_out_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_fs_bulk_out_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_fs_bulk_out_desc to i32), ptr @__kstrtab_fsg_fs_bulk_out_desc, ptr @__kstrtabns_fsg_fs_bulk_out_desc }, section "___ksymtab_gpl+fsg_fs_bulk_out_desc", align 4
@fsg_fs_function = dso_local global [4 x ptr] [ptr @fsg_intf_desc, ptr @fsg_fs_bulk_in_desc, ptr @fsg_fs_bulk_out_desc, ptr null], align 4
@__kstrtab_fsg_fs_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_fs_function = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_fs_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_fs_function to i32), ptr @__kstrtab_fsg_fs_function, ptr @__kstrtabns_fsg_fs_function }, section "___ksymtab_gpl+fsg_fs_function", align 4
@fsg_hs_bulk_in_desc = dso_local global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@__kstrtab_fsg_hs_bulk_in_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_hs_bulk_in_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_hs_bulk_in_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_hs_bulk_in_desc to i32), ptr @__kstrtab_fsg_hs_bulk_in_desc, ptr @__kstrtabns_fsg_hs_bulk_in_desc }, section "___ksymtab_gpl+fsg_hs_bulk_in_desc", align 4
@fsg_hs_bulk_out_desc = dso_local global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 512, i8 1, i8 0, i8 0 }>, align 1
@__kstrtab_fsg_hs_bulk_out_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_hs_bulk_out_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_hs_bulk_out_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_hs_bulk_out_desc to i32), ptr @__kstrtab_fsg_hs_bulk_out_desc, ptr @__kstrtabns_fsg_hs_bulk_out_desc }, section "___ksymtab_gpl+fsg_hs_bulk_out_desc", align 4
@fsg_hs_function = dso_local global [4 x ptr] [ptr @fsg_intf_desc, ptr @fsg_hs_bulk_in_desc, ptr @fsg_hs_bulk_out_desc, ptr null], align 4
@__kstrtab_fsg_hs_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_hs_function = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_hs_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_hs_function to i32), ptr @__kstrtab_fsg_hs_function, ptr @__kstrtabns_fsg_hs_function }, section "___ksymtab_gpl+fsg_hs_function", align 4
@fsg_ss_bulk_in_desc = dso_local global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@__kstrtab_fsg_ss_bulk_in_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_ss_bulk_in_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_ss_bulk_in_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_ss_bulk_in_desc to i32), ptr @__kstrtab_fsg_ss_bulk_in_desc, ptr @__kstrtabns_fsg_ss_bulk_in_desc }, section "___ksymtab_gpl+fsg_ss_bulk_in_desc", align 4
@fsg_ss_bulk_in_comp_desc = dso_local global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@__kstrtab_fsg_ss_bulk_in_comp_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_ss_bulk_in_comp_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_ss_bulk_in_comp_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_ss_bulk_in_comp_desc to i32), ptr @__kstrtab_fsg_ss_bulk_in_comp_desc, ptr @__kstrtabns_fsg_ss_bulk_in_comp_desc }, section "___ksymtab_gpl+fsg_ss_bulk_in_comp_desc", align 4
@fsg_ss_bulk_out_desc = dso_local global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@__kstrtab_fsg_ss_bulk_out_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_ss_bulk_out_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_ss_bulk_out_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_ss_bulk_out_desc to i32), ptr @__kstrtab_fsg_ss_bulk_out_desc, ptr @__kstrtabns_fsg_ss_bulk_out_desc }, section "___ksymtab_gpl+fsg_ss_bulk_out_desc", align 4
@fsg_ss_bulk_out_comp_desc = dso_local global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@__kstrtab_fsg_ss_bulk_out_comp_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_ss_bulk_out_comp_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_ss_bulk_out_comp_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_ss_bulk_out_comp_desc to i32), ptr @__kstrtab_fsg_ss_bulk_out_comp_desc, ptr @__kstrtabns_fsg_ss_bulk_out_comp_desc }, section "___ksymtab_gpl+fsg_ss_bulk_out_comp_desc", align 4
@fsg_ss_function = dso_local global [6 x ptr] [ptr @fsg_intf_desc, ptr @fsg_ss_bulk_in_desc, ptr @fsg_ss_bulk_in_comp_desc, ptr @fsg_ss_bulk_out_desc, ptr @fsg_ss_bulk_out_comp_desc, ptr null], align 4
@__kstrtab_fsg_ss_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_ss_function = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_ss_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_ss_function to i32), ptr @__kstrtab_fsg_ss_function, ptr @__kstrtabns_fsg_ss_function }, section "___ksymtab_gpl+fsg_ss_function", align 4
@__kstrtab_fsg_lun_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_lun_close = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_lun_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_lun_close to i32), ptr @__kstrtab_fsg_lun_close, ptr @__kstrtabns_fsg_lun_close }, section "___ksymtab_gpl+fsg_lun_close", align 4
@.str = private unnamed_addr constant [42 x i8] c"\016%s/%s: unable to open backing file: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"\016%s: unable to open backing file: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\016%s/%s: invalid file type: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"\016%s: invalid file type: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"\016%s/%s: file not readable: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"\016%s: file not readable: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"\016%s/%s: unable to find file size: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\016%s: unable to find file size: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"\016%s/%s: file too big: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"\016%s: file too big: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"\016%s/%s: using only first %d blocks\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"\016%s: using only first %d blocks\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"\016%s/%s: file too small: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"\016%s: file too small: %s\0A\00", align 1
@__kstrtab_fsg_lun_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_lun_open = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_lun_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_lun_open to i32), ptr @__kstrtab_fsg_lun_open, ptr @__kstrtabns_fsg_lun_open }, section "___ksymtab_gpl+fsg_lun_open", align 4
@__kstrtab_fsg_lun_fsync_sub = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_lun_fsync_sub = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_lun_fsync_sub = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_lun_fsync_sub to i32), ptr @__kstrtab_fsg_lun_fsync_sub, ptr @__kstrtabns_fsg_lun_fsync_sub }, section "___ksymtab_gpl+fsg_lun_fsync_sub", align 4
@__kstrtab_store_cdrom_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_store_cdrom_address = external dso_local constant [0 x i8], align 1
@__ksymtab_store_cdrom_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @store_cdrom_address to i32), ptr @__kstrtab_store_cdrom_address, ptr @__kstrtabns_store_cdrom_address }, section "___ksymtab_gpl+store_cdrom_address", align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@__kstrtab_fsg_show_ro = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_show_ro = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_show_ro = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_show_ro to i32), ptr @__kstrtab_fsg_show_ro, ptr @__kstrtabns_fsg_show_ro }, section "___ksymtab_gpl+fsg_show_ro", align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@__kstrtab_fsg_show_nofua = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_show_nofua = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_show_nofua = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_show_nofua to i32), ptr @__kstrtab_fsg_show_nofua, ptr @__kstrtabns_fsg_show_nofua }, section "___ksymtab_gpl+fsg_show_nofua", align 4
@__kstrtab_fsg_show_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_show_file = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_show_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_show_file to i32), ptr @__kstrtab_fsg_show_file, ptr @__kstrtabns_fsg_show_file }, section "___ksymtab_gpl+fsg_show_file", align 4
@__kstrtab_fsg_show_cdrom = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_show_cdrom = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_show_cdrom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_show_cdrom to i32), ptr @__kstrtab_fsg_show_cdrom, ptr @__kstrtabns_fsg_show_cdrom }, section "___ksymtab_gpl+fsg_show_cdrom", align 4
@__kstrtab_fsg_show_removable = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_show_removable = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_show_removable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_show_removable to i32), ptr @__kstrtab_fsg_show_removable, ptr @__kstrtabns_fsg_show_removable }, section "___ksymtab_gpl+fsg_show_removable", align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__kstrtab_fsg_show_inquiry_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_show_inquiry_string = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_show_inquiry_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_show_inquiry_string to i32), ptr @__kstrtab_fsg_show_inquiry_string, ptr @__kstrtabns_fsg_show_inquiry_string }, section "___ksymtab_gpl+fsg_show_inquiry_string", align 4
@__kstrtab_fsg_store_ro = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_store_ro = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_store_ro = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_store_ro to i32), ptr @__kstrtab_fsg_store_ro, ptr @__kstrtabns_fsg_store_ro }, section "___ksymtab_gpl+fsg_store_ro", align 4
@__kstrtab_fsg_store_nofua = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_store_nofua = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_store_nofua = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_store_nofua to i32), ptr @__kstrtab_fsg_store_nofua, ptr @__kstrtabns_fsg_store_nofua }, section "___ksymtab_gpl+fsg_store_nofua", align 4
@__kstrtab_fsg_store_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_store_file = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_store_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_store_file to i32), ptr @__kstrtab_fsg_store_file, ptr @__kstrtabns_fsg_store_file }, section "___ksymtab_gpl+fsg_store_file", align 4
@__kstrtab_fsg_store_cdrom = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_store_cdrom = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_store_cdrom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_store_cdrom to i32), ptr @__kstrtab_fsg_store_cdrom, ptr @__kstrtabns_fsg_store_cdrom }, section "___ksymtab_gpl+fsg_store_cdrom", align 4
@__kstrtab_fsg_store_removable = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_store_removable = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_store_removable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_store_removable to i32), ptr @__kstrtab_fsg_store_removable, ptr @__kstrtabns_fsg_store_removable }, section "___ksymtab_gpl+fsg_store_removable", align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"%-28s\00", align 1
@__kstrtab_fsg_store_inquiry_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsg_store_inquiry_string = external dso_local constant [0 x i8], align 1
@__ksymtab_fsg_store_inquiry_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsg_store_inquiry_string to i32), ptr @__kstrtab_fsg_store_inquiry_string, ptr @__kstrtabns_fsg_store_inquiry_string }, section "___ksymtab_gpl+fsg_store_inquiry_string", align 4
@__UNIQUE_ID_license261 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_license261, ptr @__ksymtab_fsg_fs_bulk_in_desc, ptr @__ksymtab_fsg_fs_bulk_out_desc, ptr @__ksymtab_fsg_fs_function, ptr @__ksymtab_fsg_hs_bulk_in_desc, ptr @__ksymtab_fsg_hs_bulk_out_desc, ptr @__ksymtab_fsg_hs_function, ptr @__ksymtab_fsg_intf_desc, ptr @__ksymtab_fsg_lun_close, ptr @__ksymtab_fsg_lun_fsync_sub, ptr @__ksymtab_fsg_lun_open, ptr @__ksymtab_fsg_show_cdrom, ptr @__ksymtab_fsg_show_file, ptr @__ksymtab_fsg_show_inquiry_string, ptr @__ksymtab_fsg_show_nofua, ptr @__ksymtab_fsg_show_removable, ptr @__ksymtab_fsg_show_ro, ptr @__ksymtab_fsg_ss_bulk_in_comp_desc, ptr @__ksymtab_fsg_ss_bulk_in_desc, ptr @__ksymtab_fsg_ss_bulk_out_comp_desc, ptr @__ksymtab_fsg_ss_bulk_out_desc, ptr @__ksymtab_fsg_ss_function, ptr @__ksymtab_fsg_store_cdrom, ptr @__ksymtab_fsg_store_file, ptr @__ksymtab_fsg_store_inquiry_string, ptr @__ksymtab_fsg_store_nofua, ptr @__ksymtab_fsg_store_removable, ptr @__ksymtab_fsg_store_ro, ptr @__ksymtab_store_cdrom_address], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fsg_lun_close(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fput(ptr noundef nonnull %2) #10
  store ptr null, ptr %0, align 8
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsg_lun_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call ptr @filp_open(ptr noundef %1, i32 noundef 131074, i16 noundef zeroext 0) #10
  %9 = ptrtoint ptr %8 to i32
  switch i32 %9, label %12 [
    i32 -30, label %10
    i32 -13, label %10
  ]

10:                                               ; preds = %7, %7, %2
  %11 = tail call ptr @filp_open(ptr noundef %1, i32 noundef 131072, i16 noundef zeroext 0) #10
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i8 [ 2, %10 ], [ 0, %7 ]
  %14 = phi ptr [ %11, %10 ], [ %8, %7 ]
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 10
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %21, ptr noundef %25, ptr noundef %1) #11
  br label %31

27:                                               ; preds = %20, %16
  %28 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 10
  %29 = load ptr, ptr %28, align 8
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %29, ptr noundef %1) #11
  br label %31

31:                                               ; preds = %27, %23
  %32 = ptrtoint ptr %14 to i32
  br label %220

33:                                               ; preds = %12
  %34 = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 8
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 17
  %37 = load ptr, ptr %36, align 8
  %38 = load ptr, ptr %37, align 4
  %39 = load i16, ptr %38, align 8
  %40 = and i16 %39, -4096
  switch i16 %40, label %41 [
    i16 -32768, label %56
    i16 24576, label %56
  ]

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 11
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %43, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 10
  %50 = load ptr, ptr %49, align 8
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %46, ptr noundef %50, ptr noundef %1) #11
  br label %218

52:                                               ; preds = %45, %41
  %53 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 10
  %54 = load ptr, ptr %53, align 8
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %54, ptr noundef %1) #11
  br label %218

56:                                               ; preds = %33, %33
  %57 = and i32 %35, 131072
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 11
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 10
  %68 = load ptr, ptr %67, align 8
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %64, ptr noundef %68, ptr noundef %1) #11
  br label %218

70:                                               ; preds = %63, %59
  %71 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 10
  %72 = load ptr, ptr %71, align 8
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %72, ptr noundef %1) #11
  br label %218

74:                                               ; preds = %56
  %75 = and i32 %35, 262146
  %76 = icmp eq i32 %75, 262146
  %77 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 22
  %78 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 13
  br label %79

79:                                               ; preds = %87, %74
  %80 = load volatile i32, ptr %77, align 4
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %83, %79
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !9
  %84 = load volatile i32, ptr %77, align 4
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %83

87:                                               ; preds = %83, %79
  %88 = phi i32 [ %80, %79 ], [ %84, %83 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %89 = load i64, ptr %78, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %90 = load volatile i32, ptr %77, align 4
  %91 = icmp eq i32 %90, %88
  br i1 %91, label %92, label %79

92:                                               ; preds = %87
  %93 = select i1 %76, i8 %13, i8 2
  %94 = icmp slt i64 %89, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 11
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %106, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %97, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 10
  %104 = load ptr, ptr %103, align 8
  %105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %100, ptr noundef %104, ptr noundef %1) #11
  br label %110

106:                                              ; preds = %99, %95
  %107 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 10
  %108 = load ptr, ptr %107, align 8
  %109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %108, ptr noundef %1) #11
  br label %110

110:                                              ; preds = %106, %102
  %111 = trunc i64 %89 to i32
  br label %218

112:                                              ; preds = %92
  %113 = load i8, ptr %3, align 8
  %114 = and i8 %113, 8
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = lshr i64 %89, 11
  br label %148

118:                                              ; preds = %112
  %119 = load i16, ptr %38, align 8
  %120 = and i16 %119, -4096
  %121 = icmp eq i16 %120, 24576
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = lshr i64 %89, 9
  br label %182

124:                                              ; preds = %118
  %125 = tail call ptr @I_BDEV(ptr noundef %38) #10
  %126 = getelementptr inbounds %struct.block_device, ptr %125, i32 0, i32 18
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.request_queue, ptr %127, i32 0, i32 32, i32 9
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  %133 = select i1 %132, i32 512, i32 %131
  br label %134

134:                                              ; preds = %129, %124
  %135 = phi i32 [ 512, %124 ], [ %133, %129 ]
  br label %136

136:                                              ; preds = %136, %134
  %137 = phi i32 [ %135, %134 ], [ %140, %136 ]
  %138 = phi i32 [ 8, %134 ], [ %139, %136 ]
  %139 = add nuw nsw i32 %138, 1
  %140 = lshr i32 %137, 1
  %141 = icmp ugt i32 %137, 513
  br i1 %141, label %136, label %142

142:                                              ; preds = %136
  %143 = load i8, ptr %3, align 8
  %144 = and i8 %143, 8
  %145 = zext i32 %139 to i64
  %146 = ashr i64 %89, %145
  %147 = icmp eq i8 %144, 0
  br i1 %147, label %182, label %148

148:                                              ; preds = %142, %116
  %149 = phi i64 [ %117, %116 ], [ %146, %142 ]
  %150 = phi i32 [ 11, %116 ], [ %139, %142 ]
  %151 = phi i32 [ 2048, %116 ], [ %135, %142 ]
  %152 = icmp sgt i64 %149, 1151999
  br i1 %152, label %153, label %182

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 11
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %164, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %155, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %164, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 10
  %162 = load ptr, ptr %161, align 8
  %163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %158, ptr noundef %162, ptr noundef %1) #11
  br label %168

164:                                              ; preds = %157, %153
  %165 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 10
  %166 = load ptr, ptr %165, align 8
  %167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %166, ptr noundef %1) #11
  br label %168

168:                                              ; preds = %164, %160
  %169 = load ptr, ptr %154, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %178, label %171

171:                                              ; preds = %168
  %172 = load ptr, ptr %169, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %178, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 10
  %176 = load ptr, ptr %175, align 8
  %177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %172, ptr noundef %176, i32 noundef 1151999) #11
  br label %203

178:                                              ; preds = %171, %168
  %179 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 10
  %180 = load ptr, ptr %179, align 8
  %181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %180, i32 noundef 1151999) #11
  br label %203

182:                                              ; preds = %148, %142, %122
  %183 = phi i64 [ %149, %148 ], [ %146, %142 ], [ %123, %122 ]
  %184 = phi i32 [ %150, %148 ], [ %139, %142 ], [ 9, %122 ]
  %185 = phi i32 [ %151, %148 ], [ %135, %142 ], [ 512, %122 ]
  %186 = phi i64 [ 300, %148 ], [ 1, %142 ], [ 1, %122 ]
  %187 = icmp slt i64 %183, %186
  br i1 %187, label %188, label %203

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 11
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %199, label %192

192:                                              ; preds = %188
  %193 = load ptr, ptr %190, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %199, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 10
  %197 = load ptr, ptr %196, align 8
  %198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %193, ptr noundef %197, ptr noundef %1) #11
  br label %218

199:                                              ; preds = %192, %188
  %200 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 10
  %201 = load ptr, ptr %200, align 8
  %202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %201, ptr noundef %1) #11
  br label %218

203:                                              ; preds = %182, %178, %174
  %204 = phi i32 [ %184, %182 ], [ %150, %174 ], [ %150, %178 ]
  %205 = phi i32 [ %185, %182 ], [ %151, %174 ], [ %151, %178 ]
  %206 = phi i64 [ %183, %182 ], [ 1151999, %174 ], [ 1151999, %178 ]
  %207 = load ptr, ptr %0, align 8
  %208 = icmp eq ptr %207, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %203
  tail call void @fput(ptr noundef nonnull %207) #10
  br label %210

210:                                              ; preds = %209, %203
  %211 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 8
  store i32 %205, ptr %211, align 4
  %212 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 7
  store i32 %204, ptr %212, align 8
  %213 = load i8, ptr %3, align 8
  %214 = and i8 %213, -3
  %215 = or i8 %214, %93
  store i8 %215, ptr %3, align 8
  store ptr %14, ptr %0, align 8
  %216 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 1
  store i64 %89, ptr %216, align 8
  %217 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 2
  store i64 %206, ptr %217, align 8
  br label %220

218:                                              ; preds = %199, %195, %110, %70, %66, %52, %48
  %219 = phi i32 [ %111, %110 ], [ -22, %66 ], [ -22, %70 ], [ -22, %48 ], [ -22, %52 ], [ -525, %199 ], [ -525, %195 ]
  tail call void @fput(ptr noundef %14) #10
  br label %220

220:                                              ; preds = %218, %210, %31
  %221 = phi i32 [ %32, %31 ], [ %219, %218 ], [ 0, %210 ]
  ret i32 %221
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @I_BDEV(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsg_lun_fsync_sub(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  %7 = icmp ne ptr %2, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = tail call i32 @vfs_fsync(ptr noundef nonnull %2, i32 noundef 1) #10
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ %10, %9 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @store_cdrom_address(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = lshr i32 %2, 2
  %7 = add nuw nsw i32 %6, 150
  %8 = freeze i32 %7
  %9 = udiv i32 %8, 75
  %10 = mul i32 %9, 75
  %11 = sub i32 %8, %10
  %12 = trunc i32 %11 to i8
  %13 = getelementptr i8, ptr %0, i32 3
  store i8 %12, ptr %13, align 1
  %14 = urem i32 %9, 60
  %15 = trunc i32 %14 to i8
  %16 = getelementptr i8, ptr %0, i32 2
  store i8 %15, ptr %16, align 1
  %17 = udiv i32 %7, 4500
  %18 = trunc i32 %17 to i8
  %19 = getelementptr i8, ptr %0, i32 1
  store i8 %18, ptr %19, align 1
  store i8 0, ptr %0, align 1
  br label %22

20:                                               ; preds = %3
  %21 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  store i32 %21, ptr %0, align 1
  br label %22

22:                                               ; preds = %20, %5
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsg_show_ro(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = load ptr, ptr %0, align 8
  %4 = icmp ne ptr %3, null
  %5 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 8
  %7 = zext i1 %4 to i8
  %8 = lshr i8 %6, %7
  %9 = and i8 %8, 1
  %10 = zext i8 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsg_show_nofua(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 8
  %5 = lshr i8 %4, 7
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsg_show_file(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @down_read(ptr noundef %1) #10
  %4 = load ptr, ptr %0, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @file_path(ptr noundef nonnull %4, ptr noundef %2, i32 noundef 4095) #10
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = ptrtoint ptr %7 to i32
  br label %17

11:                                               ; preds = %6
  %12 = tail call i32 @strlen(ptr noundef %7)
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %2, ptr align 1 %7, i32 %12, i1 false)
  %13 = getelementptr i8, ptr %2, i32 %12
  store i8 10, ptr %13, align 1
  %14 = add i32 %12, 1
  %15 = getelementptr i8, ptr %2, i32 %14
  store i8 0, ptr %15, align 1
  br label %17

16:                                               ; preds = %3
  store i8 0, ptr %2, align 1
  br label %17

17:                                               ; preds = %16, %11, %9
  %18 = phi i32 [ %10, %9 ], [ %14, %11 ], [ 0, %16 ]
  tail call void @up_read(ptr noundef %1) #10
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsg_show_cdrom(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 8
  %5 = lshr i8 %4, 3
  %6 = and i8 %5, 1
  %7 = zext i8 %6 to i32
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsg_show_removable(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 8
  %5 = lshr i8 %4, 2
  %6 = and i8 %5, 1
  %7 = zext i8 %6 to i32
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsg_show_inquiry_string(ptr noundef %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 12
  %4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef %3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsg_store_ro(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !12
  %6 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  call void @down_read(ptr noundef %1) #10
  %9 = load ptr, ptr %0, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i8, ptr %5, align 1, !range !13
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 3
  %15 = load i8, ptr %14, align 8
  %16 = select i1 %13, i8 0, i8 2
  %17 = and i8 %15, -4
  %18 = or i8 %16, %12
  %19 = or i8 %18, %17
  store i8 %19, ptr %14, align 8
  br label %20

20:                                               ; preds = %11, %8
  %21 = phi i32 [ %3, %11 ], [ -16, %8 ]
  call void @up_read(ptr noundef %1) #10
  br label %22

22:                                               ; preds = %20, %4
  %23 = phi i32 [ %21, %20 ], [ %6, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsg_store_nofua(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !12
  %5 = call i32 @kstrtobool(ptr noundef %1, ptr noundef nonnull %4) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = load i8, ptr %4, align 1, !range !13
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 3
  %12 = load i8, ptr %11, align 8
  %13 = icmp sgt i8 %12, -1
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8
  %16 = and i8 %12, 2
  %17 = icmp eq i8 %16, 0
  %18 = icmp ne ptr %15, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = call i32 @vfs_fsync(ptr noundef nonnull %15, i32 noundef 1) #10
  %22 = load i8, ptr %4, align 1, !range !13
  %23 = shl nuw i8 %22, 7
  br label %24

24:                                               ; preds = %20, %14, %10, %7
  %25 = phi i8 [ %23, %20 ], [ 0, %14 ], [ 0, %10 ], [ -128, %7 ]
  %26 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 3
  %27 = load i8, ptr %26, align 8
  %28 = and i8 %27, 127
  %29 = or i8 %28, %25
  store i8 %29, ptr %26, align 8
  br label %30

30:                                               ; preds = %24, %3
  %31 = phi i32 [ %2, %24 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsg_store_file(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %38

12:                                               ; preds = %9, %4
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %12
  %15 = add i32 %3, -1
  %16 = getelementptr i8, ptr %2, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 10
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i8 0, ptr %16, align 1
  br label %20

20:                                               ; preds = %19, %14
  tail call void @down_write(ptr noundef %1) #10
  %21 = load i8, ptr %2, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @fsg_lun_open(ptr noundef %0, ptr noundef %2)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %35

26:                                               ; preds = %12
  tail call void @down_write(ptr noundef %1) #10
  br label %27

27:                                               ; preds = %26, %20
  %28 = load ptr, ptr %0, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  tail call void @fput(ptr noundef nonnull %28) #10
  store ptr null, ptr %0, align 8
  br label %31

31:                                               ; preds = %30, %23
  %32 = phi i32 [ 145920, %30 ], [ 403456, %23 ]
  %33 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 6
  store i32 %32, ptr %33, align 4
  br label %34

34:                                               ; preds = %31, %27
  tail call void @up_write(ptr noundef %1) #10
  br label %38

35:                                               ; preds = %23
  tail call void @up_write(ptr noundef %1) #10
  %36 = icmp slt i32 %24, 0
  %37 = select i1 %36, i32 %24, i32 %3
  br label %38

38:                                               ; preds = %35, %34, %9
  %39 = phi i32 [ -16, %9 ], [ %3, %34 ], [ %37, %35 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsg_store_cdrom(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !12
  %6 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %4
  call void @down_read(ptr noundef %1) #10
  %9 = load i8, ptr %5, align 1, !range !13
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 3
  %13 = load i8, ptr %12, align 8
  br label %21

14:                                               ; preds = %8
  %15 = load ptr, ptr %0, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 3
  %19 = load i8, ptr %18, align 8
  %20 = or i8 %19, 3
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i8 [ %13, %11 ], [ %20, %17 ]
  %23 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 3
  %24 = shl nuw nsw i8 %9, 3
  %25 = and i8 %22, -9
  %26 = or i8 %25, %24
  store i8 %26, ptr %23, align 8
  br label %27

27:                                               ; preds = %21, %14
  %28 = phi i32 [ %3, %21 ], [ -16, %14 ]
  call void @up_read(ptr noundef %1) #10
  br label %29

29:                                               ; preds = %27, %4
  %30 = phi i32 [ %28, %27 ], [ %6, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsg_store_removable(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !12
  %5 = call i32 @kstrtobool(ptr noundef %1, ptr noundef nonnull %4) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load i8, ptr %4, align 1, !range !13
  %9 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 3
  %10 = load i8, ptr %9, align 8
  %11 = shl nuw nsw i8 %8, 2
  %12 = and i8 %10, -5
  %13 = or i8 %12, %11
  store i8 %13, ptr %9, align 8
  br label %14

14:                                               ; preds = %7, %3
  %15 = phi i32 [ %2, %7 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  ret i32 %15
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsg_store_inquiry_string(ptr nocapture noundef %0, ptr noundef %1, i32 noundef returned %2) #5 {
  %4 = tail call i32 @llvm.umin.i32(i32 %2, i32 29)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i8, ptr %1, align 1
  %8 = icmp eq i8 %7, 10
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %3
  %10 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 12
  store i8 0, ptr %10, align 8
  br label %19

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.fsg_lun, ptr %0, i32 0, i32 12
  %13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %12, i32 noundef 29, ptr noundef nonnull @.str.17, ptr noundef %1)
  %14 = add nsw i32 %4, -1
  %15 = getelementptr %struct.fsg_lun, ptr %0, i32 0, i32 12, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 10
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i8 32, ptr %15, align 1
  br label %19

19:                                               ; preds = %18, %11, %9
  ret i32 %2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!8 = !{i64 2151601143}
!9 = !{i64 2151600985}
!10 = !{i64 2151601287}
!11 = !{i64 2149392604}
!12 = !{!"auto-init"}
!13 = !{i8 0, i8 2}
