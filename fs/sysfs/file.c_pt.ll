; ModuleID = '/llk/IR/fs/sysfs/file.c_pt.bc'
source_filename = "../fs/sysfs/file.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_notify\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_create_file_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_create_file_ns\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_create_file_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_create_files:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_create_files\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_create_files:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_add_file_to_group:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_add_file_to_group\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_add_file_to_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_chmod_file:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_chmod_file\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_chmod_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_break_active_protection:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_break_active_protection\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_break_active_protection:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_unbreak_active_protection:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_unbreak_active_protection\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_unbreak_active_protection:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_remove_file_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_remove_file_ns\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_remove_file_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_remove_file_self:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_remove_file_self\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_remove_file_self:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_remove_files:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_remove_files\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_remove_files:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_remove_file_from_group:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_remove_file_from_group\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_remove_file_from_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_create_bin_file:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_create_bin_file\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_create_bin_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_remove_bin_file:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_remove_bin_file\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_remove_bin_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_file_change_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_file_change_owner\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_file_change_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_change_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_change_owner\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_change_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_emit\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_emit_at:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_emit_at\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_emit_at:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernfs_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.59, ptr, i64, i16, i16, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.59 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.__va_list = type { ptr }
%struct.kernfs_open_file = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, %struct.list_head, ptr, i32, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.60, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.61, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.62, ptr, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, ptr, ptr }
%union.anon.60 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.61 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.62 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.63 = type { ptr }

@__kstrtab_sysfs_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_notify to i32), ptr @__kstrtab_sysfs_notify, ptr @__kstrtabns_sysfs_notify }, section "___ksymtab_gpl+sysfs_notify", align 4
@.str = private unnamed_addr constant [16 x i8] c"fs/sysfs/file.c\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"\013missing sysfs attribute operations for kobject: %s\0A\00", align 1
@sysfs_prealloc_kfops_rw = internal constant %struct.kernfs_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sysfs_kf_read, i32 0, i8 1, ptr @sysfs_kf_write, ptr null, ptr null }, align 4
@sysfs_prealloc_kfops_ro = internal constant %struct.kernfs_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sysfs_kf_read, i32 0, i8 1, ptr null, ptr null, ptr null }, align 4
@sysfs_prealloc_kfops_wo = internal constant %struct.kernfs_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 1, ptr @sysfs_kf_write, ptr null, ptr null }, align 4
@sysfs_file_kfops_rw = internal constant %struct.kernfs_ops { ptr null, ptr null, ptr @sysfs_kf_seq_show, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0, ptr @sysfs_kf_write, ptr null, ptr null }, align 4
@sysfs_file_kfops_ro = internal constant %struct.kernfs_ops { ptr null, ptr null, ptr @sysfs_kf_seq_show, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0, ptr null, ptr null, ptr null }, align 4
@sysfs_file_kfops_wo = internal constant %struct.kernfs_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0, ptr @sysfs_kf_write, ptr null, ptr null }, align 4
@sysfs_file_kfops_empty = internal constant %struct.kernfs_ops zeroinitializer, align 4
@sysfs_bin_kfops_mmap = internal constant %struct.kernfs_ops { ptr @sysfs_kf_bin_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sysfs_kf_bin_read, i32 0, i8 0, ptr @sysfs_kf_bin_write, ptr null, ptr @sysfs_kf_bin_mmap }, align 4
@sysfs_bin_kfops_rw = internal constant %struct.kernfs_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sysfs_kf_bin_read, i32 0, i8 0, ptr @sysfs_kf_bin_write, ptr null, ptr null }, align 4
@sysfs_bin_kfops_ro = internal constant %struct.kernfs_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sysfs_kf_bin_read, i32 0, i8 0, ptr null, ptr null, ptr null }, align 4
@sysfs_bin_kfops_wo = internal constant %struct.kernfs_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0, ptr @sysfs_kf_bin_write, ptr null, ptr null }, align 4
@__kstrtab_sysfs_create_file_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_create_file_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_create_file_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_create_file_ns to i32), ptr @__kstrtab_sysfs_create_file_ns, ptr @__kstrtabns_sysfs_create_file_ns }, section "___ksymtab_gpl+sysfs_create_file_ns", align 4
@__kstrtab_sysfs_create_files = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_create_files = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_create_files = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_create_files to i32), ptr @__kstrtab_sysfs_create_files, ptr @__kstrtabns_sysfs_create_files }, section "___ksymtab_gpl+sysfs_create_files", align 4
@__kstrtab_sysfs_add_file_to_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_add_file_to_group = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_add_file_to_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_add_file_to_group to i32), ptr @__kstrtab_sysfs_add_file_to_group, ptr @__kstrtabns_sysfs_add_file_to_group }, section "___ksymtab_gpl+sysfs_add_file_to_group", align 4
@__kstrtab_sysfs_chmod_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_chmod_file = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_chmod_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_chmod_file to i32), ptr @__kstrtab_sysfs_chmod_file, ptr @__kstrtabns_sysfs_chmod_file }, section "___ksymtab_gpl+sysfs_chmod_file", align 4
@__kstrtab_sysfs_break_active_protection = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_break_active_protection = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_break_active_protection = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_break_active_protection to i32), ptr @__kstrtab_sysfs_break_active_protection, ptr @__kstrtabns_sysfs_break_active_protection }, section "___ksymtab_gpl+sysfs_break_active_protection", align 4
@__kstrtab_sysfs_unbreak_active_protection = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_unbreak_active_protection = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_unbreak_active_protection = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_unbreak_active_protection to i32), ptr @__kstrtab_sysfs_unbreak_active_protection, ptr @__kstrtabns_sysfs_unbreak_active_protection }, section "___ksymtab_gpl+sysfs_unbreak_active_protection", align 4
@__kstrtab_sysfs_remove_file_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_remove_file_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_remove_file_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_remove_file_ns to i32), ptr @__kstrtab_sysfs_remove_file_ns, ptr @__kstrtabns_sysfs_remove_file_ns }, section "___ksymtab_gpl+sysfs_remove_file_ns", align 4
@sysfs_remove_file_self.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_sysfs_remove_file_self = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_remove_file_self = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_remove_file_self = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_remove_file_self to i32), ptr @__kstrtab_sysfs_remove_file_self, ptr @__kstrtabns_sysfs_remove_file_self }, section "___ksymtab_gpl+sysfs_remove_file_self", align 4
@__kstrtab_sysfs_remove_files = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_remove_files = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_remove_files = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_remove_files to i32), ptr @__kstrtab_sysfs_remove_files, ptr @__kstrtabns_sysfs_remove_files }, section "___ksymtab_gpl+sysfs_remove_files", align 4
@__kstrtab_sysfs_remove_file_from_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_remove_file_from_group = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_remove_file_from_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_remove_file_from_group to i32), ptr @__kstrtab_sysfs_remove_file_from_group, ptr @__kstrtabns_sysfs_remove_file_from_group }, section "___ksymtab_gpl+sysfs_remove_file_from_group", align 4
@__kstrtab_sysfs_create_bin_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_create_bin_file = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_create_bin_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_create_bin_file to i32), ptr @__kstrtab_sysfs_create_bin_file, ptr @__kstrtabns_sysfs_create_bin_file }, section "___ksymtab_gpl+sysfs_create_bin_file", align 4
@__kstrtab_sysfs_remove_bin_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_remove_bin_file = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_remove_bin_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_remove_bin_file to i32), ptr @__kstrtab_sysfs_remove_bin_file, ptr @__kstrtabns_sysfs_remove_bin_file }, section "___ksymtab_gpl+sysfs_remove_bin_file", align 4
@__kstrtab_sysfs_file_change_owner = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_file_change_owner = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_file_change_owner = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_file_change_owner to i32), ptr @__kstrtab_sysfs_file_change_owner, ptr @__kstrtabns_sysfs_file_change_owner }, section "___ksymtab_gpl+sysfs_file_change_owner", align 4
@__kstrtab_sysfs_change_owner = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_change_owner = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_change_owner = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_change_owner to i32), ptr @__kstrtab_sysfs_change_owner, ptr @__kstrtabns_sysfs_change_owner }, section "___ksymtab_gpl+sysfs_change_owner", align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid sysfs_emit: buf:%p\0A\00", align 1
@__kstrtab_sysfs_emit = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_emit = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_emit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_emit to i32), ptr @__kstrtab_sysfs_emit, ptr @__kstrtabns_sysfs_emit }, section "___ksymtab_gpl+sysfs_emit", align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"invalid sysfs_emit_at: buf:%p at:%d\0A\00", align 1
@__kstrtab_sysfs_emit_at = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_emit_at = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_emit_at = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_emit_at to i32), ptr @__kstrtab_sysfs_emit_at, ptr @__kstrtabns_sysfs_emit_at }, section "___ksymtab_gpl+sysfs_emit_at", align 4
@sysfs_kf_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sysfs_kf_seq_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"fill_read_buffer: %pS returned bad count\0A\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_sysfs_add_file_to_group, ptr @__ksymtab_sysfs_break_active_protection, ptr @__ksymtab_sysfs_change_owner, ptr @__ksymtab_sysfs_chmod_file, ptr @__ksymtab_sysfs_create_bin_file, ptr @__ksymtab_sysfs_create_file_ns, ptr @__ksymtab_sysfs_create_files, ptr @__ksymtab_sysfs_emit, ptr @__ksymtab_sysfs_emit_at, ptr @__ksymtab_sysfs_file_change_owner, ptr @__ksymtab_sysfs_notify, ptr @__ksymtab_sysfs_remove_bin_file, ptr @__ksymtab_sysfs_remove_file_from_group, ptr @__ksymtab_sysfs_remove_file_ns, ptr @__ksymtab_sysfs_remove_file_self, ptr @__ksymtab_sysfs_remove_files, ptr @__ksymtab_sysfs_unbreak_active_protection], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sysfs_notify(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ne ptr %5, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call ptr @kernfs_find_and_get_ns(ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef null) #8
  br label %12

11:                                               ; preds = %3
  tail call void @kernfs_get(ptr noundef %5) #8
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi ptr [ %10, %9 ], [ %5, %11 ]
  %14 = icmp ne ptr %13, null
  %15 = icmp ne ptr %2, null
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = tail call ptr @kernfs_find_and_get_ns(ptr noundef nonnull %13, ptr noundef nonnull %2, ptr noundef null) #8
  tail call void @kernfs_put(ptr noundef nonnull %13) #8
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %18, %17 ], [ %13, %12 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @kernfs_notify(ptr noundef nonnull %20) #8
  tail call void @kernfs_put(ptr noundef nonnull %20) #8
  br label %23

23:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_add_file_mode_ns(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, [1 x i32] %3, [1 x i32] %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.kobject, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.kobj_type, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16, !prof !8

14:                                               ; preds = %6
  %15 = load ptr, ptr %8, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 267, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %15) #8
  br label %45

16:                                               ; preds = %6
  %17 = and i16 %2, 4096
  %18 = icmp eq i16 %17, 0
  %19 = load ptr, ptr %12, align 4
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.sysfs_ops, ptr %12, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %18, label %29, label %24

24:                                               ; preds = %16
  br i1 %20, label %27, label %25

25:                                               ; preds = %24
  %26 = select i1 %23, ptr @sysfs_prealloc_kfops_ro, ptr @sysfs_prealloc_kfops_rw
  br label %34

27:                                               ; preds = %24
  %28 = select i1 %23, ptr @sysfs_file_kfops_empty, ptr @sysfs_prealloc_kfops_wo
  br label %34

29:                                               ; preds = %16
  br i1 %20, label %32, label %30

30:                                               ; preds = %29
  %31 = select i1 %23, ptr @sysfs_file_kfops_ro, ptr @sysfs_file_kfops_rw
  br label %34

32:                                               ; preds = %29
  %33 = select i1 %23, ptr @sysfs_file_kfops_empty, ptr @sysfs_file_kfops_wo
  br label %34

34:                                               ; preds = %32, %30, %27, %25
  %35 = phi ptr [ %28, %27 ], [ %33, %32 ], [ %26, %25 ], [ %31, %30 ]
  %36 = load ptr, ptr %1, align 4
  %37 = and i16 %2, 511
  %38 = tail call ptr @__kernfs_create_file(ptr noundef %0, ptr noundef %36, i16 noundef zeroext %37, [1 x i32] %3, [1 x i32] %4, i64 noundef 4096, ptr noundef nonnull %35, ptr noundef %1, ptr noundef %5, ptr noundef null) #8
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = ptrtoint ptr %38 to i32
  %42 = icmp eq ptr %38, inttoptr (i32 -17 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load ptr, ptr %1, align 4
  tail call void @sysfs_warn_dup(ptr noundef %0, ptr noundef %44) #8
  br label %45

45:                                               ; preds = %43, %40, %34, %14
  %46 = phi i32 [ -22, %14 ], [ 0, %34 ], [ -17, %43 ], [ %41, %40 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kernfs_create_file(ptr noundef, ptr noundef, i16 noundef zeroext, [1 x i32], [1 x i32], i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_warn_dup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_add_bin_file_mode_ns(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, [1 x i32] %3, [1 x i32] %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.bin_attribute, ptr %1, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bin_attribute, ptr %1, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.bin_attribute, ptr %1, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %13, label %19, label %17

17:                                               ; preds = %10
  %18 = select i1 %16, ptr @sysfs_bin_kfops_ro, ptr @sysfs_bin_kfops_rw
  br label %21

19:                                               ; preds = %10
  %20 = select i1 %16, ptr @sysfs_file_kfops_empty, ptr @sysfs_bin_kfops_wo
  br label %21

21:                                               ; preds = %19, %17, %6
  %22 = phi ptr [ @sysfs_bin_kfops_mmap, %6 ], [ %20, %19 ], [ %18, %17 ]
  %23 = load ptr, ptr %1, align 4
  %24 = and i16 %2, 511
  %25 = getelementptr inbounds %struct.bin_attribute, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = zext i32 %26 to i64
  %28 = tail call ptr @__kernfs_create_file(ptr noundef %0, ptr noundef %23, i16 noundef zeroext %24, [1 x i32] %3, [1 x i32] %4, i64 noundef %27, ptr noundef nonnull %22, ptr noundef %1, ptr noundef %5, ptr noundef null) #8
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = ptrtoint ptr %28 to i32
  %32 = icmp eq ptr %28, inttoptr (i32 -17 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load ptr, ptr %1, align 4
  tail call void @sysfs_warn_dup(ptr noundef %0, ptr noundef %34) #8
  br label %35

35:                                               ; preds = %33, %30, %21
  %36 = phi i32 [ 0, %21 ], [ -17, %33 ], [ %31, %30 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_create_file_ns(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.kuid_t, align 4
  %5 = alloca %struct.kgid_t, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = icmp eq ptr %0, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %1, null
  %12 = or i1 %11, %10
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %7, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 351, i32 noundef 9, ptr noundef null) #8
  br label %23

14:                                               ; preds = %7
  call void @kobject_get_ownership(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %17 = load i16, ptr %16, align 4
  %18 = load i32, ptr %4, align 4
  %19 = insertvalue [1 x i32] poison, i32 %18, 0
  %20 = load i32, ptr %5, align 4
  %21 = insertvalue [1 x i32] poison, i32 %20, 0
  %22 = call i32 @sysfs_add_file_mode_ns(ptr noundef %15, ptr noundef nonnull %1, i16 noundef zeroext %17, [1 x i32] %19, [1 x i32] %21, ptr noundef %2)
  br label %23

23:                                               ; preds = %14, %13
  %24 = phi i32 [ -22, %13 ], [ %22, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %24
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_get_ownership(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_create_files(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.kuid_t, align 4
  %4 = alloca %struct.kgid_t, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %0, null
  %9 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  br label %10

10:                                               ; preds = %17, %7
  %11 = phi ptr [ %5, %7 ], [ %28, %17 ]
  %12 = phi i32 [ 0, %7 ], [ %26, %17 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  br i1 %8, label %16, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %9, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %13, %10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 351, i32 noundef 9, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %33

17:                                               ; preds = %13
  call void @kobject_get_ownership(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr inbounds %struct.attribute, ptr %11, i32 0, i32 1
  %20 = load i16, ptr %19, align 4
  %21 = load i32, ptr %3, align 4
  %22 = insertvalue [1 x i32] poison, i32 %21, 0
  %23 = load i32, ptr %4, align 4
  %24 = insertvalue [1 x i32] poison, i32 %23, 0
  %25 = call i32 @sysfs_add_file_mode_ns(ptr noundef %18, ptr noundef nonnull %11, i16 noundef zeroext %20, [1 x i32] %22, [1 x i32] %24, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %26 = add i32 %12, 1
  %27 = getelementptr ptr, ptr %1, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp ne ptr %28, null
  %30 = icmp eq i32 %25, 0
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %10, label %32

32:                                               ; preds = %17
  br i1 %30, label %47, label %33

33:                                               ; preds = %32, %16
  %34 = phi i32 [ -22, %16 ], [ %25, %32 ]
  %35 = icmp sgt i32 %12, -1
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi i32 [ %12, %36 ], [ %45, %38 ]
  %40 = getelementptr ptr, ptr %1, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %37, align 4
  %43 = load ptr, ptr %41, align 4
  %44 = call i32 @kernfs_remove_by_name_ns(ptr noundef %42, ptr noundef %43, ptr noundef null) #8
  %45 = add nsw i32 %39, -1
  %46 = icmp sgt i32 %39, 0
  br i1 %46, label %38, label %47

47:                                               ; preds = %38, %33, %32, %2
  %48 = phi i32 [ %34, %33 ], [ %25, %32 ], [ 0, %2 ], [ %34, %38 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_add_file_to_group(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.kuid_t, align 4
  %5 = alloca %struct.kgid_t, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = icmp eq ptr %2, null
  %7 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  br i1 %6, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @kernfs_find_and_get_ns(ptr noundef %8, ptr noundef nonnull %2, ptr noundef null) #8
  br label %12

11:                                               ; preds = %3
  tail call void @kernfs_get(ptr noundef %8) #8
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi ptr [ %10, %9 ], [ %8, %11 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  call void @kobject_get_ownership(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %16 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %17 = load i16, ptr %16, align 4
  %18 = load i32, ptr %4, align 4
  %19 = insertvalue [1 x i32] poison, i32 %18, 0
  %20 = load i32, ptr %5, align 4
  %21 = insertvalue [1 x i32] poison, i32 %20, 0
  %22 = call i32 @sysfs_add_file_mode_ns(ptr noundef nonnull %13, ptr noundef %1, i16 noundef zeroext %17, [1 x i32] %19, [1 x i32] %21, ptr noundef null)
  call void @kernfs_put(ptr noundef nonnull %13) #8
  br label %23

23:                                               ; preds = %15, %12
  %24 = phi i32 [ %22, %15 ], [ -2, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_chmod_file(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) #0 {
  %4 = alloca %struct.iattr, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i32 80, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %1, align 4
  %8 = tail call ptr @kernfs_find_and_get_ns(ptr noundef %6, ptr noundef %7, ptr noundef null) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = and i16 %2, 4095
  %12 = getelementptr inbounds %struct.kernfs_node, ptr %8, i32 0, i32 11
  %13 = load i16, ptr %12, align 2
  %14 = and i16 %13, -4096
  %15 = or i16 %14, %11
  %16 = getelementptr inbounds %struct.iattr, ptr %4, i32 0, i32 1
  store i16 %15, ptr %16, align 4
  store i32 1, ptr %4, align 8
  %17 = call i32 @kernfs_setattr(ptr noundef nonnull %8, ptr noundef nonnull %4) #8
  call void @kernfs_put(ptr noundef nonnull %8) #8
  br label %18

18:                                               ; preds = %10, %3
  %19 = phi i32 [ %17, %10 ], [ -2, %3 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_setattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sysfs_break_active_protection(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @kobject_get(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %1, align 4
  %7 = tail call ptr @kernfs_find_and_get_ns(ptr noundef %5, ptr noundef %6, ptr noundef null) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @kernfs_break_active_protection(ptr noundef nonnull %7) #8
  br label %10

10:                                               ; preds = %9, %2
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_break_active_protection(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sysfs_unbreak_active_protection(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @kernfs_unbreak_active_protection(ptr noundef %0) #8
  tail call void @kernfs_put(ptr noundef %0) #8
  tail call void @kobject_put(ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_unbreak_active_protection(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sysfs_remove_file_ns(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %1, align 4
  %7 = tail call i32 @kernfs_remove_by_name_ns(ptr noundef %5, ptr noundef %6, ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_remove_by_name_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @sysfs_remove_file_self(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = tail call ptr @kernfs_find_and_get_ns(ptr noundef %4, ptr noundef %5, ptr noundef null) #8
  %7 = icmp eq ptr %6, null
  %8 = load i1, ptr @sysfs_remove_file_self.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %2
  store i1 true, ptr @sysfs_remove_file_self.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 509, i32 noundef 9, ptr noundef null) #8
  br label %12

12:                                               ; preds = %11, %2
  br i1 %7, label %15, label %13

13:                                               ; preds = %12
  %14 = tail call zeroext i1 @kernfs_remove_self(ptr noundef nonnull %6) #8
  tail call void @kernfs_put(ptr noundef nonnull %6) #8
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi i1 [ %14, %13 ], [ false, %12 ]
  ret i1 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kernfs_remove_self(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sysfs_remove_files(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %3, %5 ], [ %15, %7 ]
  %9 = phi i32 [ 0, %5 ], [ %13, %7 ]
  %10 = load ptr, ptr %6, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = tail call i32 @kernfs_remove_by_name_ns(ptr noundef %10, ptr noundef %11, ptr noundef null) #8
  %13 = add i32 %9, 1
  %14 = getelementptr ptr, ptr %1, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7

17:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sysfs_remove_file_from_group(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %2, null
  %5 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  br i1 %4, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @kernfs_find_and_get_ns(ptr noundef %6, ptr noundef nonnull %2, ptr noundef null) #8
  br label %10

9:                                                ; preds = %3
  tail call void @kernfs_get(ptr noundef %6) #8
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi ptr [ %8, %7 ], [ %6, %9 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %1, align 4
  %15 = tail call i32 @kernfs_remove_by_name_ns(ptr noundef nonnull %11, ptr noundef %14, ptr noundef null) #8
  tail call void @kernfs_put(ptr noundef nonnull %11) #8
  br label %16

16:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_create_bin_file(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.kuid_t, align 4
  %4 = alloca %struct.kgid_t, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = icmp eq ptr %0, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = icmp eq ptr %1, null
  %11 = or i1 %10, %9
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %6, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 564, i32 noundef 9, ptr noundef null) #8
  br label %49

13:                                               ; preds = %6
  call void @kobject_get_ownership(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = load i32, ptr %3, align 4
  %18 = insertvalue [1 x i32] poison, i32 %17, 0
  %19 = load i32, ptr %4, align 4
  %20 = insertvalue [1 x i32] poison, i32 %19, 0
  %21 = getelementptr inbounds %struct.bin_attribute, ptr %1, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.bin_attribute, ptr %1, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  %28 = getelementptr inbounds %struct.bin_attribute, ptr %1, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %27, label %33, label %31

31:                                               ; preds = %24
  %32 = select i1 %30, ptr @sysfs_bin_kfops_ro, ptr @sysfs_bin_kfops_rw
  br label %35

33:                                               ; preds = %24
  %34 = select i1 %30, ptr @sysfs_file_kfops_empty, ptr @sysfs_bin_kfops_wo
  br label %35

35:                                               ; preds = %33, %31, %13
  %36 = phi ptr [ @sysfs_bin_kfops_mmap, %13 ], [ %34, %33 ], [ %32, %31 ]
  %37 = load ptr, ptr %1, align 4
  %38 = and i16 %16, 511
  %39 = getelementptr inbounds %struct.bin_attribute, ptr %1, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = zext i32 %40 to i64
  %42 = call ptr @__kernfs_create_file(ptr noundef %14, ptr noundef %37, i16 noundef zeroext %38, [1 x i32] %18, [1 x i32] %20, i64 noundef %41, ptr noundef nonnull %36, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #8
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = ptrtoint ptr %42 to i32
  %46 = icmp eq ptr %42, inttoptr (i32 -17 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load ptr, ptr %1, align 4
  call void @sysfs_warn_dup(ptr noundef %14, ptr noundef %48) #8
  br label %49

49:                                               ; preds = %47, %44, %35, %12
  %50 = phi i32 [ -22, %12 ], [ 0, %35 ], [ -17, %47 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sysfs_remove_bin_file(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = tail call i32 @kernfs_remove_by_name_ns(ptr noundef %4, ptr noundef %5, ptr noundef null) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_link_change_owner(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, [1 x i32] %3, [1 x i32] %4) local_unnamed_addr #0 {
  %6 = alloca %struct.iattr, align 8
  %7 = icmp eq ptr %2, null
  br i1 %7, label %46, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 2
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %46, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 7
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.kernfs_node, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = tail call ptr @kernfs_find_and_get_ns(ptr noundef %20, ptr noundef nonnull %2, ptr noundef %24) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %44, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.kernfs_node, ptr %25, i32 0, i32 10
  %29 = load i16, ptr %28, align 8
  %30 = and i16 %29, 15
  %31 = icmp eq i16 %30, 4
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.kernfs_node, ptr %25, i32 0, i32 7
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.kernfs_node, ptr %34, i32 0, i32 8
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = extractvalue [1 x i32] %3, 0
  %40 = extractvalue [1 x i32] %4, 0
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %6, i8 0, i64 80, i1 false) #8
  store i32 6, ptr %6, align 8
  %41 = getelementptr inbounds %struct.iattr, ptr %6, i32 0, i32 2
  store i32 %39, ptr %41, align 8
  %42 = getelementptr inbounds %struct.iattr, ptr %6, i32 0, i32 3
  store i32 %40, ptr %42, align 4
  %43 = call i32 @kernfs_setattr(ptr noundef nonnull %25, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #8
  br label %44

44:                                               ; preds = %38, %32, %27, %18
  %45 = phi i32 [ -22, %27 ], [ -22, %32 ], [ %43, %38 ], [ -2, %18 ]
  call void @kernfs_put(ptr noundef %25) #8
  br label %46

46:                                               ; preds = %44, %13, %8, %5
  %47 = phi i32 [ %45, %44 ], [ -22, %13 ], [ -22, %8 ], [ -22, %5 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_find_and_get_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_file_change_owner(ptr nocapture noundef readonly %0, ptr noundef %1, [1 x i32] %2, [1 x i32] %3) #0 {
  %5 = alloca %struct.iattr, align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr @kernfs_find_and_get_ns(ptr noundef %14, ptr noundef nonnull %1, ptr noundef null) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = extractvalue [1 x i32] %2, 0
  %19 = extractvalue [1 x i32] %3, 0
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false) #8
  store i32 6, ptr %5, align 8
  %20 = getelementptr inbounds %struct.iattr, ptr %5, i32 0, i32 2
  store i32 %18, ptr %20, align 8
  %21 = getelementptr inbounds %struct.iattr, ptr %5, i32 0, i32 3
  store i32 %19, ptr %21, align 4
  %22 = call i32 @kernfs_setattr(ptr noundef nonnull %15, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #8
  call void @kernfs_put(ptr noundef nonnull %15) #8
  br label %23

23:                                               ; preds = %17, %12, %7, %4
  %24 = phi i32 [ %22, %17 ], [ -22, %4 ], [ -22, %7 ], [ -2, %12 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_change_owner(ptr noundef %0, [1 x i32] %1, [1 x i32] %2) #0 {
  %4 = alloca %struct.iattr, align 8
  %5 = alloca %struct.iattr, align 8
  %6 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %57, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = extractvalue [1 x i32] %1, 0
  %14 = extractvalue [1 x i32] %2, 0
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false) #8
  store i32 6, ptr %5, align 8
  %15 = getelementptr inbounds %struct.iattr, ptr %5, i32 0, i32 2
  store i32 %13, ptr %15, align 8
  %16 = getelementptr inbounds %struct.iattr, ptr %5, i32 0, i32 3
  store i32 %14, ptr %16, align 4
  %17 = call i32 @kernfs_setattr(ptr noundef %12, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %56, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.kobj_type, ptr %21, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.iattr, ptr %4, i32 0, i32 2
  %29 = getelementptr inbounds %struct.iattr, ptr %4, i32 0, i32 3
  br label %33

30:                                               ; preds = %48
  %31 = getelementptr ptr, ptr %34, i32 1
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %30, %27
  %34 = phi ptr [ %25, %27 ], [ %31, %30 ]
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %51, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %35, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %57, label %40

40:                                               ; preds = %37
  %41 = load i8, ptr %6, align 4
  %42 = and i8 %41, 2
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %11, align 4
  %46 = call ptr @kernfs_find_and_get_ns(ptr noundef %45, ptr noundef nonnull %38, ptr noundef null) #8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false) #8
  store i32 6, ptr %4, align 8
  store i32 %13, ptr %28, align 8
  store i32 %14, ptr %29, align 4
  %49 = call i32 @kernfs_setattr(ptr noundef nonnull %46, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #8
  call void @kernfs_put(ptr noundef nonnull %46) #8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %30, label %57

51:                                               ; preds = %33, %30, %23
  %52 = getelementptr inbounds %struct.kobj_type, ptr %21, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = call i32 @sysfs_groups_change_owner(ptr noundef %0, ptr noundef %53, [1 x i32] %1, [1 x i32] %2) #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %19
  br label %57

57:                                               ; preds = %56, %51, %48, %44, %40, %37, %10, %3
  %58 = phi i32 [ 0, %56 ], [ %54, %51 ], [ -22, %3 ], [ %17, %10 ], [ -22, %37 ], [ -22, %40 ], [ -2, %44 ], [ %49, %48 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_groups_change_owner(ptr noundef, ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_emit(ptr noundef %0, ptr noundef %1, ...) #0 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = icmp eq ptr %0, null
  %5 = ptrtoint ptr %0 to i32
  %6 = and i32 %5, 4095
  %7 = icmp ne i32 %6, 0
  %8 = or i1 %4, %7
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 748, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %0) #8
  br label %14

10:                                               ; preds = %2
  call void @llvm.va_start(ptr nonnull %3)
  %11 = load i32, ptr %3, align 4
  %12 = insertvalue [1 x i32] poison, i32 %11, 0
  %13 = call i32 @vscnprintf(ptr noundef nonnull %0, i32 noundef 4096, ptr noundef %1, [1 x i32] %12) #8
  call void @llvm.va_end(ptr nonnull %3)
  br label %14

14:                                               ; preds = %10, %9
  %15 = phi i32 [ 0, %9 ], [ %13, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysfs_emit_at(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) #0 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = icmp eq ptr %0, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = ptrtoint ptr %0 to i32
  %8 = and i32 %7, 4095
  %9 = icmp ne i32 %8, 0
  %10 = icmp ugt i32 %1, 4095
  %11 = or i1 %10, %9
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %6, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 776, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %0, i32 noundef %1) #8
  br label %19

13:                                               ; preds = %6
  call void @llvm.va_start(ptr nonnull %4)
  %14 = getelementptr i8, ptr %0, i32 %1
  %15 = sub nuw nsw i32 4096, %1
  %16 = load i32, ptr %4, align 4
  %17 = insertvalue [1 x i32] poison, i32 %16, 0
  %18 = call i32 @vscnprintf(ptr noundef %14, i32 noundef %15, ptr noundef %2, [1 x i32] %17) #8
  call void @llvm.va_end(ptr nonnull %4)
  br label %19

19:                                               ; preds = %13, %12
  %20 = phi i32 [ 0, %12 ], [ %18, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysfs_kf_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.kobject, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.kobj_type, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %4
  %17 = phi ptr [ %15, %13 ], [ null, %4 ]
  %18 = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ne ptr %19, %1
  %21 = load i1, ptr @sysfs_kf_read.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %16
  store i1 true, ptr @sysfs_kf_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef null) #8
  br label %25

25:                                               ; preds = %24, %16
  br i1 %20, label %45, label %26

26:                                               ; preds = %25
  %27 = load ptr, ptr %17, align 4
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.kernfs_node, ptr %28, i32 0, i32 8
  %30 = load ptr, ptr %29, align 8
  %31 = tail call i32 %27(ptr noundef %9, ptr noundef %30, ptr noundef %1) #8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %26
  %34 = icmp eq i64 %3, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %33
  %36 = zext i32 %31 to i64
  %37 = icmp sgt i64 %36, %3
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = trunc i64 %3 to i32
  %40 = sub i32 %31, %39
  %41 = getelementptr i8, ptr %1, i32 %39
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %1, ptr align 1 %41, i32 %40, i1 false)
  br label %42

42:                                               ; preds = %38, %33
  %43 = phi i32 [ %40, %38 ], [ %31, %33 ]
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 %2)
  br label %45

45:                                               ; preds = %42, %35, %26, %25
  %46 = phi i32 [ %44, %42 ], [ 0, %25 ], [ %31, %26 ], [ 0, %35 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysfs_kf_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.kobject, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.kobj_type, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %4
  %17 = phi ptr [ %15, %13 ], [ null, %4 ]
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.sysfs_ops, ptr %17, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 8
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 %21(ptr noundef %9, ptr noundef %23, ptr noundef %1, i32 noundef %2) #8
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i32 [ %24, %19 ], [ 0, %16 ]
  ret i32 %26
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysfs_kf_seq_show(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.kobject, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.kobj_type, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi ptr [ %15, %13 ], [ null, %2 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = load i1, ptr @sysfs_kf_seq_show.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !8

23:                                               ; preds = %16
  store i1 true, ptr @sysfs_kf_seq_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef null) #8
  br label %24

24:                                               ; preds = %23, %16
  br i1 %19, label %62, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %29, %27
  br i1 %30, label %31, label %32, !prof !8

31:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/seq_file.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #8, !srcloc !10
  unreachable

32:                                               ; preds = %25
  %33 = icmp ugt i32 %29, %27
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr i8, ptr %35, i32 %27
  br label %37

37:                                               ; preds = %34, %32
  %38 = phi ptr [ %36, %34 ], [ null, %32 ]
  %39 = sub i32 %29, %27
  %40 = icmp ult i32 %39, 4096
  br i1 %40, label %60, label %41

41:                                               ; preds = %37
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %38, i8 0, i32 4096, i1 false)
  %42 = load ptr, ptr %17, align 4
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr inbounds %struct.kernfs_node, ptr %43, i32 0, i32 8
  %45 = load ptr, ptr %44, align 8
  %46 = tail call i32 %42(ptr noundef %9, ptr noundef %45, ptr noundef %38) #8
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %41
  %49 = icmp ugt i32 %46, 4095
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load ptr, ptr %17, align 4
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %51) #9
  br label %53

53:                                               ; preds = %50, %48
  %54 = phi i32 [ 4095, %50 ], [ %46, %48 ]
  %55 = load i32, ptr %26, align 4
  %56 = add i32 %55, %54
  %57 = load i32, ptr %28, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %60, !prof !8

59:                                               ; preds = %53
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/seq_file.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 89, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

60:                                               ; preds = %53, %37
  %61 = phi i32 [ %29, %37 ], [ %56, %53 ]
  store i32 %61, ptr %26, align 4
  br label %62

62:                                               ; preds = %60, %41, %24
  %63 = phi i32 [ -22, %24 ], [ %46, %41 ], [ 0, %60 ]
  ret i32 %63
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysfs_kf_bin_open(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bin_attribute, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = tail call ptr %6() #8
  %10 = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 17
  store ptr %9, ptr %12, align 8
  br label %13

13:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysfs_kf_bin_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.kernfs_node, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 13
  %17 = load i64, ptr %16, align 8
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %4
  %20 = icmp eq i64 %17, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %19
  %22 = icmp sgt i64 %17, %3
  br i1 %22, label %23, label %37

23:                                               ; preds = %21
  %24 = zext i32 %2 to i64
  %25 = add i64 %24, %3
  %26 = icmp sgt i64 %25, %17
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = sub i64 %17, %3
  %29 = trunc i64 %28 to i32
  br label %30

30:                                               ; preds = %27, %23, %19
  %31 = phi i32 [ %29, %27 ], [ %2, %23 ], [ %2, %19 ]
  %32 = getelementptr inbounds %struct.bin_attribute, ptr %7, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = tail call i32 %33(ptr noundef %13, ptr noundef %11, ptr noundef %7, ptr noundef %1, i64 noundef %3, i32 noundef %31) #8
  br label %37

37:                                               ; preds = %35, %30, %21, %4
  %38 = phi i32 [ %36, %35 ], [ 0, %4 ], [ 0, %21 ], [ -5, %30 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysfs_kf_bin_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.kernfs_node, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 13
  %17 = load i64, ptr %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = icmp sgt i64 %17, %3
  br i1 %20, label %21, label %34

21:                                               ; preds = %19
  %22 = sub i64 %17, %3
  %23 = trunc i64 %22 to i32
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 %2)
  br label %25

25:                                               ; preds = %21, %4
  %26 = phi i32 [ %24, %21 ], [ %2, %4 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.bin_attribute, ptr %7, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i32 %30(ptr noundef %13, ptr noundef %11, ptr noundef %7, ptr noundef %1, i64 noundef %3, i32 noundef %26) #8
  br label %34

34:                                               ; preds = %32, %28, %25, %19
  %35 = phi i32 [ %33, %32 ], [ -27, %19 ], [ 0, %25 ], [ -5, %28 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysfs_kf_bin_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.bin_attribute, ptr %5, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %11(ptr noundef %13, ptr noundef %9, ptr noundef %5, ptr noundef %1) #8
  ret i32 %14
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 2151709129, i64 2151709617, i64 2151709166, i64 2151709222, i64 2151709256, i64 2151709280, i64 2151709321, i64 2151709342, i64 2151709370, i64 2151709404}
!11 = !{i64 2151710362, i64 2151710850, i64 2151710399, i64 2151710455, i64 2151710489, i64 2151710513, i64 2151710554, i64 2151710575, i64 2151710603, i64 2151710637}
