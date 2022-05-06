; ModuleID = '/llk/IR/fs/debugfs/file.c_pt.bc'
source_filename = "../fs/debugfs/file.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_real_fops:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_real_fops\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_real_fops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_file_get:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_file_get\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_file_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_file_put:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_file_put\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_file_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_attr_read:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_attr_read\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_attr_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_attr_write:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_attr_write\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_attr_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_u8:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_u8\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_u8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_u16:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_u16\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_u16:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_u32\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_u64\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_ulong:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_ulong\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_ulong:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_x8:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_x8\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_x8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_x16:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_x16\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_x16:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_x32:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_x32\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_x32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_x64:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_x64\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_x64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_size_t:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_size_t\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_size_t:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_atomic_t:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_atomic_t\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_atomic_t:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_read_file_bool:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_read_file_bool\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_read_file_bool:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_write_file_bool:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_write_file_bool\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_write_file_bool:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_bool:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_bool\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_bool:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_blob:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_blob\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_blob:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_u32_array:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_u32_array\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_u32_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_print_regs32:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_print_regs32\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_print_regs32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_regset32:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_regset32\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_regset32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_devm_seqfile:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_devm_seqfile\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_devm_seqfile:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.52, %struct.list_head, %struct.list_head, %union.anon.53 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%union.anon.52 = type { %struct.list_head }
%union.anon.53 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.debugfs_fsdata = type { ptr, %struct.refcount_struct, %struct.completion }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.debugfs_devm_entry = type { ptr, ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.debugfs_u32_array = type { ptr, i32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }

@debugfs_noop_file_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr @default_read_file, ptr @default_write_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [18 x i8] c"fs/debugfs/file.c\00", align 1
@__kstrtab_debugfs_real_fops = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_real_fops = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_real_fops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_real_fops to i32), ptr @__kstrtab_debugfs_real_fops, ptr @__kstrtabns_debugfs_real_fops }, section "___ksymtab_gpl+debugfs_real_fops", align 4
@__kstrtab_debugfs_file_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_file_get = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_file_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_file_get to i32), ptr @__kstrtab_debugfs_file_get, ptr @__kstrtabns_debugfs_file_get }, section "___ksymtab_gpl+debugfs_file_get", align 4
@__kstrtab_debugfs_file_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_file_put = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_file_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_file_put to i32), ptr @__kstrtab_debugfs_file_put, ptr @__kstrtabns_debugfs_file_put }, section "___ksymtab_gpl+debugfs_file_put", align 4
@debugfs_open_proxy_file_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @open_proxy_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@debugfs_full_proxy_file_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @full_proxy_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_debugfs_attr_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_attr_read = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_attr_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_attr_read to i32), ptr @__kstrtab_debugfs_attr_read, ptr @__kstrtabns_debugfs_attr_read }, section "___ksymtab_gpl+debugfs_attr_read", align 4
@__kstrtab_debugfs_attr_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_attr_write = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_attr_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_attr_write to i32), ptr @__kstrtab_debugfs_attr_write, ptr @__kstrtabns_debugfs_attr_write }, section "___ksymtab_gpl+debugfs_attr_write", align 4
@fops_u8 = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_u8_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_u8_ro = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_u8_ro_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_u8_wo = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_u8_wo_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_debugfs_create_u8 = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_u8 = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_u8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_u8 to i32), ptr @__kstrtab_debugfs_create_u8, ptr @__kstrtabns_debugfs_create_u8 }, section "___ksymtab_gpl+debugfs_create_u8", align 4
@fops_u16 = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_u16_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_u16_ro = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_u16_ro_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_u16_wo = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_u16_wo_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_debugfs_create_u16 = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_u16 = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_u16 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_u16 to i32), ptr @__kstrtab_debugfs_create_u16, ptr @__kstrtabns_debugfs_create_u16 }, section "___ksymtab_gpl+debugfs_create_u16", align 4
@fops_u32 = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_u32_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_u32_ro = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_u32_ro_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_u32_wo = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_u32_wo_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_debugfs_create_u32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_u32 = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_u32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_u32 to i32), ptr @__kstrtab_debugfs_create_u32, ptr @__kstrtabns_debugfs_create_u32 }, section "___ksymtab_gpl+debugfs_create_u32", align 4
@fops_u64 = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_u64_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_u64_ro = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_u64_ro_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_u64_wo = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_u64_wo_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_debugfs_create_u64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_u64 = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_u64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_u64 to i32), ptr @__kstrtab_debugfs_create_u64, ptr @__kstrtabns_debugfs_create_u64 }, section "___ksymtab_gpl+debugfs_create_u64", align 4
@fops_ulong = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_ulong_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_ulong_ro = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_ulong_ro_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_ulong_wo = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_ulong_wo_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_debugfs_create_ulong = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_ulong = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_ulong = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_ulong to i32), ptr @__kstrtab_debugfs_create_ulong, ptr @__kstrtabns_debugfs_create_ulong }, section "___ksymtab_gpl+debugfs_create_ulong", align 4
@fops_x8 = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_x8_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_x8_ro = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_x8_ro_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_x8_wo = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_x8_wo_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_debugfs_create_x8 = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_x8 = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_x8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_x8 to i32), ptr @__kstrtab_debugfs_create_x8, ptr @__kstrtabns_debugfs_create_x8 }, section "___ksymtab_gpl+debugfs_create_x8", align 4
@fops_x16 = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_x16_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_x16_ro = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_x16_ro_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_x16_wo = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_x16_wo_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_debugfs_create_x16 = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_x16 = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_x16 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_x16 to i32), ptr @__kstrtab_debugfs_create_x16, ptr @__kstrtabns_debugfs_create_x16 }, section "___ksymtab_gpl+debugfs_create_x16", align 4
@fops_x32 = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_x32_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_x32_ro = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_x32_ro_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_x32_wo = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_x32_wo_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_debugfs_create_x32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_x32 = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_x32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_x32 to i32), ptr @__kstrtab_debugfs_create_x32, ptr @__kstrtabns_debugfs_create_x32 }, section "___ksymtab_gpl+debugfs_create_x32", align 4
@fops_x64 = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_x64_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_x64_ro = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_x64_ro_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_x64_wo = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_x64_wo_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_debugfs_create_x64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_x64 = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_x64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_x64 to i32), ptr @__kstrtab_debugfs_create_x64, ptr @__kstrtabns_debugfs_create_x64 }, section "___ksymtab_gpl+debugfs_create_x64", align 4
@fops_size_t = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_size_t_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_size_t_ro = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_size_t_ro_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_size_t_wo = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_size_t_wo_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_debugfs_create_size_t = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_size_t = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_size_t = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_size_t to i32), ptr @__kstrtab_debugfs_create_size_t, ptr @__kstrtabns_debugfs_create_size_t }, section "___ksymtab_gpl+debugfs_create_size_t", align 4
@fops_atomic_t = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_atomic_t_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_atomic_t_ro = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_atomic_t_ro_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_atomic_t_wo = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_atomic_t_wo_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_debugfs_create_atomic_t = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_atomic_t = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_atomic_t = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_atomic_t to i32), ptr @__kstrtab_debugfs_create_atomic_t, ptr @__kstrtabns_debugfs_create_atomic_t }, section "___ksymtab_gpl+debugfs_create_atomic_t", align 4
@__kstrtab_debugfs_read_file_bool = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_read_file_bool = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_read_file_bool = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_read_file_bool to i32), ptr @__kstrtab_debugfs_read_file_bool, ptr @__kstrtabns_debugfs_read_file_bool }, section "___ksymtab_gpl+debugfs_read_file_bool", align 4
@__kstrtab_debugfs_write_file_bool = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_write_file_bool = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_write_file_bool = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_write_file_bool to i32), ptr @__kstrtab_debugfs_write_file_bool, ptr @__kstrtabns_debugfs_write_file_bool }, section "___ksymtab_gpl+debugfs_write_file_bool", align 4
@fops_bool = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @debugfs_read_file_bool, ptr @debugfs_write_file_bool, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_bool_ro = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @debugfs_read_file_bool, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_bool_wo = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @debugfs_write_file_bool, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_debugfs_create_bool = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_bool = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_bool = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_bool to i32), ptr @__kstrtab_debugfs_create_bool, ptr @__kstrtabns_debugfs_create_bool }, section "___ksymtab_gpl+debugfs_create_bool", align 4
@fops_str = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @debugfs_read_file_str, ptr @debugfs_write_file_str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_str_ro = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @debugfs_read_file_str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_str_wo = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @debugfs_write_file_str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fops_blob = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_file_blob, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_debugfs_create_blob = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_blob = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_blob = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_blob to i32), ptr @__kstrtab_debugfs_create_blob, ptr @__kstrtabns_debugfs_create_blob }, section "___ksymtab_gpl+debugfs_create_blob", align 4
@u32_array_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @u32_array_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @u32_array_open, ptr null, ptr @u32_array_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_debugfs_create_u32_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_u32_array = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_u32_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_u32_array to i32), ptr @__kstrtab_debugfs_create_u32_array, ptr @__kstrtabns_debugfs_create_u32_array }, section "___ksymtab_gpl+debugfs_create_u32_array", align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%s = 0x%08x\0A\00", align 1
@__kstrtab_debugfs_print_regs32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_print_regs32 = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_print_regs32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_print_regs32 to i32), ptr @__kstrtab_debugfs_print_regs32, ptr @__kstrtabns_debugfs_print_regs32 }, section "___ksymtab_gpl+debugfs_print_regs32", align 4
@fops_regset32 = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @debugfs_open_regset32, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_debugfs_create_regset32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_regset32 = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_regset32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_regset32 to i32), ptr @__kstrtab_debugfs_create_regset32, ptr @__kstrtabns_debugfs_create_regset32 }, section "___ksymtab_gpl+debugfs_create_regset32", align 4
@debugfs_devm_entry_ops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @debugfs_devm_entry_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_debugfs_create_devm_seqfile = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_devm_seqfile = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_devm_seqfile = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_devm_seqfile to i32), ptr @__kstrtab_debugfs_create_devm_seqfile, ptr @__kstrtabns_debugfs_create_devm_seqfile }, section "___ksymtab_gpl+debugfs_create_devm_seqfile", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"debugfs file owner did not clean up at exit: %pd\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"debugfs file owner replaced proxy fops: %pd\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"0x%02llx\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"0x%04llx\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"0x%08llx\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"0x%016llx\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_debugfs_attr_read, ptr @__ksymtab_debugfs_attr_write, ptr @__ksymtab_debugfs_create_atomic_t, ptr @__ksymtab_debugfs_create_blob, ptr @__ksymtab_debugfs_create_bool, ptr @__ksymtab_debugfs_create_devm_seqfile, ptr @__ksymtab_debugfs_create_regset32, ptr @__ksymtab_debugfs_create_size_t, ptr @__ksymtab_debugfs_create_u16, ptr @__ksymtab_debugfs_create_u32, ptr @__ksymtab_debugfs_create_u32_array, ptr @__ksymtab_debugfs_create_u64, ptr @__ksymtab_debugfs_create_u8, ptr @__ksymtab_debugfs_create_ulong, ptr @__ksymtab_debugfs_create_x16, ptr @__ksymtab_debugfs_create_x32, ptr @__ksymtab_debugfs_create_x64, ptr @__ksymtab_debugfs_create_x8, ptr @__ksymtab_debugfs_file_get, ptr @__ksymtab_debugfs_file_put, ptr @__ksymtab_debugfs_print_regs32, ptr @__ksymtab_debugfs_read_file_bool, ptr @__ksymtab_debugfs_real_fops, ptr @__ksymtab_debugfs_write_file_bool], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @default_read_file(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef readnone %3) #1 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @default_write_file(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef returned %2, ptr nocapture noundef readnone %3) #1 {
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @debugfs_real_fops(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef null) #12
  br label %12

10:                                               ; preds = %1
  %11 = load ptr, ptr %5, align 4
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi ptr [ null, %9 ], [ %11, %10 ]
  ret ptr %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @debugfs_file_get(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %3 = load volatile ptr, ptr %2, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 24) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %62, label %11

11:                                               ; preds = %7
  %12 = and i32 %4, -2
  %13 = inttoptr i32 %12 to ptr
  store ptr %13, ptr %9, align 8
  %14 = getelementptr inbounds %struct.debugfs_fsdata, ptr %9, i32 0, i32 1
  store volatile i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.debugfs_fsdata, ptr %9, i32 0, i32 2
  store i32 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.debugfs_fsdata, ptr %9, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %16, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %17 = ptrtoint ptr %9 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #12, !srcloc !9
  br label %18

18:                                               ; preds = %18, %11
  %19 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %2, i32 %4, i32 %17) #12, !srcloc !10
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %18

22:                                               ; preds = %18
  %23 = extractvalue { i32, i32 } %19, 1
  %24 = inttoptr i32 %23 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %25 = icmp eq ptr %3, %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  tail call void @kfree(ptr noundef nonnull %9) #12
  %27 = load volatile ptr, ptr %2, align 4
  br label %28

28:                                               ; preds = %26, %22, %1
  %29 = phi ptr [ %27, %26 ], [ %9, %22 ], [ %3, %1 ]
  %30 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %37, label %62

37:                                               ; preds = %33, %28
  %38 = getelementptr inbounds %struct.debugfs_fsdata, ptr %29, i32 0, i32 1
  %39 = load volatile i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %51, %37
  %42 = phi i32 [ %49, %51 ], [ %39, %37 ]
  %43 = add i32 %42, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #12, !srcloc !9
  br label %44

44:                                               ; preds = %44, %41
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 %42, i32 %43, ptr elementtype(i32) %38) #12, !srcloc !12
  %46 = extractvalue { i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %44

48:                                               ; preds = %44
  %49 = extractvalue { i32, i32 } %45, 1
  %50 = icmp eq i32 %49, %42
  br i1 %50, label %53, label %51, !prof !13

51:                                               ; preds = %48
  %52 = icmp eq i32 %49, 0
  br i1 %52, label %53, label %41

53:                                               ; preds = %51, %48, %37
  %54 = phi i32 [ 0, %37 ], [ 0, %51 ], [ %42, %48 ]
  %55 = add i32 %54, 1
  %56 = or i32 %55, %54
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %59, label %58, !prof !13

58:                                               ; preds = %53
  tail call void @refcount_warn_saturate(ptr noundef %38, i32 noundef 0) #12
  br label %59

59:                                               ; preds = %58, %53
  %60 = icmp eq i32 %54, 0
  %61 = select i1 %60, i32 -5, i32 0
  br label %62

62:                                               ; preds = %59, %33, %7
  %63 = phi i32 [ -12, %7 ], [ -5, %33 ], [ %61, %59 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_file_put(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %3 = load volatile ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.debugfs_fsdata, ptr %3, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #12, !srcloc !9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #12, !srcloc !15
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %13, label %10, !prof !13

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #12
  br label %13

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %12 = getelementptr inbounds %struct.debugfs_fsdata, ptr %3, i32 0, i32 2
  tail call void @complete(ptr noundef %12) #12
  br label %13

13:                                               ; preds = %11, %10, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @open_proxy_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @debugfs_file_get(ptr noundef %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %5, -5
  %9 = select i1 %8, i32 -2, i32 %5
  br label %57

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef null) #12
  br label %24

18:                                               ; preds = %10
  %19 = load ptr, ptr %13, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %19, align 4
  %23 = tail call zeroext i1 @try_module_get(ptr noundef %22) #12
  br i1 %23, label %32, label %24

24:                                               ; preds = %21, %18, %17
  %25 = phi ptr [ null, %17 ], [ null, %18 ], [ %19, %21 ]
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %26, align 64
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %44, label %31

31:                                               ; preds = %28, %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 190, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %4) #12
  br label %44

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %34, align 4
  tail call void @module_put(ptr noundef %37) #12
  br label %38

38:                                               ; preds = %36, %32
  store ptr %19, ptr %33, align 4
  %39 = getelementptr inbounds %struct.file_operations, ptr %19, i32 0, i32 14
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call i32 %40(ptr noundef %0, ptr noundef %1) #12
  br label %44

44:                                               ; preds = %42, %38, %31, %28
  %45 = phi i32 [ %43, %42 ], [ 0, %38 ], [ -6, %31 ], [ -6, %28 ]
  %46 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 11
  %47 = load volatile ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.debugfs_fsdata, ptr %47, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #12, !srcloc !9
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #12, !srcloc !15
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = icmp sgt i32 %50, 0
  br i1 %53, label %57, label %54, !prof !13

54:                                               ; preds = %52
  tail call void @refcount_warn_saturate(ptr noundef %48, i32 noundef 3) #12
  br label %57

55:                                               ; preds = %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %56 = getelementptr inbounds %struct.debugfs_fsdata, ptr %47, i32 0, i32 2
  tail call void @complete(ptr noundef %56) #12
  br label %57

57:                                               ; preds = %55, %54, %52, %7
  %58 = phi i32 [ %9, %7 ], [ %45, %52 ], [ %45, %54 ], [ %45, %55 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @full_proxy_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @debugfs_file_get(ptr noundef %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %5, -5
  %9 = select i1 %8, i32 -2, i32 %5
  br label %111

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef null) #12
  br label %24

18:                                               ; preds = %10
  %19 = load ptr, ptr %13, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %19, align 4
  %23 = tail call zeroext i1 @try_module_get(ptr noundef %22) #12
  br i1 %23, label %32, label %24

24:                                               ; preds = %21, %18, %17
  %25 = phi ptr [ null, %17 ], [ null, %18 ], [ %19, %21 ]
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %26, align 64
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %98, label %31

31:                                               ; preds = %28, %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %4) #12
  br label %98

32:                                               ; preds = %21
  %33 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %34 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 128) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %95, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.file_operations, ptr %34, i32 0, i32 16
  store ptr @full_proxy_release, ptr %37, align 8
  %38 = getelementptr inbounds %struct.file_operations, ptr %19, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.file_operations, ptr %34, i32 0, i32 1
  store ptr @full_proxy_llseek, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %36
  %44 = getelementptr inbounds %struct.file_operations, ptr %19, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.file_operations, ptr %34, i32 0, i32 2
  store ptr @full_proxy_read, ptr %48, align 8
  br label %49

49:                                               ; preds = %47, %43
  %50 = getelementptr inbounds %struct.file_operations, ptr %19, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.file_operations, ptr %34, i32 0, i32 3
  store ptr @full_proxy_write, ptr %54, align 4
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr inbounds %struct.file_operations, ptr %19, i32 0, i32 9
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.file_operations, ptr %34, i32 0, i32 9
  store ptr @full_proxy_poll, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = getelementptr inbounds %struct.file_operations, ptr %19, i32 0, i32 10
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.file_operations, ptr %34, i32 0, i32 10
  store ptr @full_proxy_unlocked_ioctl, ptr %66, align 8
  br label %67

67:                                               ; preds = %65, %61
  %68 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %69, align 4
  tail call void @module_put(ptr noundef %72) #12
  br label %73

73:                                               ; preds = %71, %67
  store ptr %34, ptr %68, align 4
  %74 = getelementptr inbounds %struct.file_operations, ptr %19, i32 0, i32 14
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %98, label %77

77:                                               ; preds = %73
  %78 = tail call i32 %75(ptr noundef %0, ptr noundef %1) #12
  %79 = icmp eq i32 %78, 0
  %80 = load ptr, ptr %68, align 4
  br i1 %79, label %92, label %81

81:                                               ; preds = %77
  %82 = icmp eq ptr %80, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %81
  %84 = load ptr, ptr %80, align 4
  tail call void @module_put(ptr noundef %84) #12
  br label %85

85:                                               ; preds = %83, %81
  %86 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.inode, ptr %87, i32 0, i32 39
  %89 = load ptr, ptr %88, align 8
  store ptr %89, ptr %68, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %95, !prof !17

91:                                               ; preds = %85
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/debugfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 343, 0\0A.popsection", ""() #12, !srcloc !18
  unreachable

92:                                               ; preds = %77
  %93 = icmp eq ptr %80, %34
  br i1 %93, label %98, label %94

94:                                               ; preds = %92
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 348, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %4) #12
  br label %95

95:                                               ; preds = %94, %85, %32
  %96 = phi i32 [ 0, %94 ], [ -12, %32 ], [ %78, %85 ]
  tail call void @kfree(ptr noundef %34) #12
  %97 = load ptr, ptr %19, align 4
  tail call void @module_put(ptr noundef %97) #12
  br label %98

98:                                               ; preds = %95, %92, %73, %31, %28
  %99 = phi i32 [ %96, %95 ], [ 0, %92 ], [ 0, %73 ], [ -6, %31 ], [ -6, %28 ]
  %100 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 11
  %101 = load volatile ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.debugfs_fsdata, ptr %101, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %102) #12, !srcloc !9
  %103 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %102, ptr %102, i32 1, ptr elementtype(i32) %102) #12, !srcloc !15
  %104 = extractvalue { i32, i32, i32 } %103, 0
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %109, label %106

106:                                              ; preds = %98
  %107 = icmp sgt i32 %104, 0
  br i1 %107, label %111, label %108, !prof !13

108:                                              ; preds = %106
  tail call void @refcount_warn_saturate(ptr noundef %102, i32 noundef 3) #12
  br label %111

109:                                              ; preds = %98
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %110 = getelementptr inbounds %struct.debugfs_fsdata, ptr %101, i32 0, i32 2
  tail call void @complete(ptr noundef %110) #12
  br label %111

111:                                              ; preds = %109, %108, %106, %7
  %112 = phi i32 [ %9, %7 ], [ %99, %106 ], [ %99, %108 ], [ %99, %109 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @debugfs_attr_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @debugfs_file_get(ptr noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22, !prof !13

9:                                                ; preds = %4
  %10 = tail call i32 @simple_attr_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12
  %11 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 11
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.debugfs_fsdata, ptr %12, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #12, !srcloc !9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #12, !srcloc !15
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %9
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %22, label %19, !prof !13

19:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 3) #12
  br label %22

20:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %21 = getelementptr inbounds %struct.debugfs_fsdata, ptr %12, i32 0, i32 2
  tail call void @complete(ptr noundef %21) #12
  br label %22

22:                                               ; preds = %20, %19, %17, %4
  %23 = phi i32 [ %7, %4 ], [ %10, %17 ], [ %10, %19 ], [ %10, %20 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @debugfs_attr_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @debugfs_file_get(ptr noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22, !prof !13

9:                                                ; preds = %4
  %10 = tail call i32 @simple_attr_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12
  %11 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 11
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.debugfs_fsdata, ptr %12, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #12, !srcloc !9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #12, !srcloc !15
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %9
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %22, label %19, !prof !13

19:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 3) #12
  br label %22

20:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %21 = getelementptr inbounds %struct.debugfs_fsdata, ptr %12, i32 0, i32 2
  tail call void @complete(ptr noundef %21) #12
  br label %22

22:                                               ; preds = %20, %19, %17, %4
  %23 = phi i32 [ %7, %4 ], [ %10, %17 ], [ %10, %19 ], [ %10, %20 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_create_u8(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = zext i16 %1 to i32
  %6 = and i32 %5, 146
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 292
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @fops_u8_wo, ptr @fops_u8
  %11 = select i1 %7, ptr @fops_u8_ro, ptr %10
  %12 = tail call ptr @debugfs_create_file_unsafe(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %11) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_create_u16(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = zext i16 %1 to i32
  %6 = and i32 %5, 146
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 292
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @fops_u16_wo, ptr @fops_u16
  %11 = select i1 %7, ptr @fops_u16_ro, ptr %10
  %12 = tail call ptr @debugfs_create_file_unsafe(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %11) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_create_u32(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = zext i16 %1 to i32
  %6 = and i32 %5, 146
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 292
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @fops_u32_wo, ptr @fops_u32
  %11 = select i1 %7, ptr @fops_u32_ro, ptr %10
  %12 = tail call ptr @debugfs_create_file_unsafe(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %11) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_create_u64(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = zext i16 %1 to i32
  %6 = and i32 %5, 146
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 292
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @fops_u64_wo, ptr @fops_u64
  %11 = select i1 %7, ptr @fops_u64_ro, ptr %10
  %12 = tail call ptr @debugfs_create_file_unsafe(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %11) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_create_ulong(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = zext i16 %1 to i32
  %6 = and i32 %5, 146
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 292
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @fops_ulong_wo, ptr @fops_ulong
  %11 = select i1 %7, ptr @fops_ulong_ro, ptr %10
  %12 = tail call ptr @debugfs_create_file_unsafe(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %11) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_create_x8(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = zext i16 %1 to i32
  %6 = and i32 %5, 146
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 292
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @fops_x8_wo, ptr @fops_x8
  %11 = select i1 %7, ptr @fops_x8_ro, ptr %10
  %12 = tail call ptr @debugfs_create_file_unsafe(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %11) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_create_x16(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = zext i16 %1 to i32
  %6 = and i32 %5, 146
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 292
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @fops_x16_wo, ptr @fops_x16
  %11 = select i1 %7, ptr @fops_x16_ro, ptr %10
  %12 = tail call ptr @debugfs_create_file_unsafe(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %11) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_create_x32(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = zext i16 %1 to i32
  %6 = and i32 %5, 146
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 292
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @fops_x32_wo, ptr @fops_x32
  %11 = select i1 %7, ptr @fops_x32_ro, ptr %10
  %12 = tail call ptr @debugfs_create_file_unsafe(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %11) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_create_x64(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = zext i16 %1 to i32
  %6 = and i32 %5, 146
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 292
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @fops_x64_wo, ptr @fops_x64
  %11 = select i1 %7, ptr @fops_x64_ro, ptr %10
  %12 = tail call ptr @debugfs_create_file_unsafe(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %11) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_create_size_t(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = zext i16 %1 to i32
  %6 = and i32 %5, 146
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 292
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @fops_size_t_wo, ptr @fops_size_t
  %11 = select i1 %7, ptr @fops_size_t_ro, ptr %10
  %12 = tail call ptr @debugfs_create_file_unsafe(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %11) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_create_atomic_t(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = zext i16 %1 to i32
  %6 = and i32 %5, 146
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 292
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @fops_atomic_t_wo, ptr @fops_atomic_t
  %11 = select i1 %7, ptr @fops_atomic_t_ro, ptr %10
  %12 = tail call ptr @debugfs_create_file_unsafe(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %11) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @debugfs_read_file_bool(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @debugfs_file_get(ptr noundef %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %30, !prof !13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %12 = load ptr, ptr %11, align 8
  %13 = load i8, ptr %12, align 1, !range !19
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.debugfs_fsdata, ptr %16, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #12, !srcloc !9
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #12, !srcloc !15
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %10
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %26, label %23, !prof !13

23:                                               ; preds = %21
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 3) #12
  br label %26

24:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %25 = getelementptr inbounds %struct.debugfs_fsdata, ptr %16, i32 0, i32 2
  tail call void @complete(ptr noundef %25) #12
  br label %26

26:                                               ; preds = %24, %23, %21
  %27 = select i1 %14, i8 78, i8 89
  store i8 %27, ptr %5, align 2
  %28 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 10, ptr %28, align 1
  %29 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef 2) #12
  br label %30

30:                                               ; preds = %26, %4
  %31 = phi i32 [ %29, %26 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @debugfs_write_file_bool(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture readnone %3) #2 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #12
  store i8 0, ptr %5, align 1, !annotation !20
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @kstrtobool_from_user(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %4
  %13 = call i32 @debugfs_file_get(ptr noundef %9)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %28, !prof !13

15:                                               ; preds = %12
  %16 = load i8, ptr %5, align 1, !range !19
  store i8 %16, ptr %7, align 1
  %17 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.debugfs_fsdata, ptr %18, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #12, !srcloc !9
  %20 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #12, !srcloc !15
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = icmp sgt i32 %21, 0
  br i1 %24, label %28, label %25, !prof !13

25:                                               ; preds = %23
  call void @refcount_warn_saturate(ptr noundef %19, i32 noundef 3) #12
  br label %28

26:                                               ; preds = %15
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %27 = getelementptr inbounds %struct.debugfs_fsdata, ptr %18, i32 0, i32 2
  call void @complete(ptr noundef %27) #12
  br label %28

28:                                               ; preds = %26, %25, %23, %12, %4
  %29 = phi i32 [ %13, %12 ], [ %2, %4 ], [ %2, %23 ], [ %2, %25 ], [ %2, %26 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool_from_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_create_bool(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = zext i16 %1 to i32
  %6 = and i32 %5, 146
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 292
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @fops_bool_wo, ptr @fops_bool
  %11 = select i1 %7, ptr @fops_bool_ro, ptr %10
  %12 = tail call ptr @debugfs_create_file_unsafe(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %11) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @debugfs_read_file_str(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @debugfs_file_get(ptr noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %48, !prof !13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @strlen(ptr noundef %12)
  %14 = add i32 %13, 1
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.debugfs_fsdata, ptr %19, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #12, !srcloc !9
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #12, !srcloc !15
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = icmp sgt i32 %22, 0
  br i1 %25, label %48, label %26, !prof !13

26:                                               ; preds = %24
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef 3) #12
  br label %48

27:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %28 = getelementptr inbounds %struct.debugfs_fsdata, ptr %19, i32 0, i32 2
  tail call void @complete(ptr noundef %28) #12
  br label %48

29:                                               ; preds = %9
  %30 = tail call i32 @strscpy(ptr noundef nonnull %15, ptr noundef %12, i32 noundef %14) #12
  %31 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 11
  %32 = load volatile ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.debugfs_fsdata, ptr %32, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #12, !srcloc !9
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #12, !srcloc !15
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %42, label %39, !prof !13

39:                                               ; preds = %37
  tail call void @refcount_warn_saturate(ptr noundef %33, i32 noundef 3) #12
  br label %42

40:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %41 = getelementptr inbounds %struct.debugfs_fsdata, ptr %32, i32 0, i32 2
  tail call void @complete(ptr noundef %41) #12
  br label %42

42:                                               ; preds = %40, %39, %37
  %43 = icmp slt i32 %30, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  tail call void @kfree(ptr noundef nonnull %15) #12
  br label %48

45:                                               ; preds = %42
  %46 = getelementptr i8, ptr %15, i32 %30
  store i8 10, ptr %46, align 1
  %47 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %15, i32 noundef %14) #12
  tail call void @kfree(ptr noundef nonnull %15) #12
  br label %48

48:                                               ; preds = %45, %44, %27, %26, %24, %4
  %49 = phi i32 [ %30, %44 ], [ %47, %45 ], [ %7, %4 ], [ -12, %24 ], [ -12, %26 ], [ -12, %27 ]
  ret i32 %49
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_create_str(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = zext i16 %1 to i32
  %6 = and i32 %5, 146
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 292
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @fops_str_wo, ptr @fops_str
  %11 = select i1 %7, ptr @fops_str_ro, ptr %10
  %12 = tail call ptr @debugfs_create_file_unsafe(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %11) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @debugfs_create_blob(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = and i16 %1, 292
  %6 = tail call ptr @debugfs_create_file_unsafe(ptr noundef %0, i16 noundef zeroext %5, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @fops_blob) #12
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_create_u32_array(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = tail call ptr @debugfs_create_file_unsafe(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @u32_array_fops) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_print_regs32(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #2 {
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %5
  %8 = icmp eq ptr %4, null
  %9 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  br label %11

11:                                               ; preds = %24, %7
  %12 = phi ptr [ %1, %7 ], [ %26, %24 ]
  %13 = phi i32 [ 0, %7 ], [ %25, %24 ]
  br i1 %8, label %15, label %14

14:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #12
  br label %15

15:                                               ; preds = %14, %11
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr inbounds %struct.debugfs_reg32, ptr %12, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %3, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #12, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %16, i32 noundef %20) #12
  %21 = load i32, ptr %9, align 4
  %22 = load i32, ptr %10, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = add nuw nsw i32 %13, 1
  %26 = getelementptr %struct.debugfs_reg32, ptr %12, i32 1
  %27 = icmp eq i32 %25, %2
  br i1 %27, label %28, label %11

28:                                               ; preds = %24, %15, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_create_regset32(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = tail call ptr @debugfs_create_file(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @fops_regset32) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_create_devm_seqfile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 8, i32 noundef 3520) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  store ptr %3, ptr %7, align 4
  %10 = getelementptr inbounds %struct.debugfs_devm_entry, ptr %7, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  %11 = tail call ptr @debugfs_create_file(ptr noundef %1, i16 noundef zeroext 292, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull @debugfs_devm_entry_ops) #12
  br label %12

12:                                               ; preds = %9, %6, %4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @full_proxy_release(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef null) #12
  br label %13

11:                                               ; preds = %2
  %12 = load ptr, ptr %6, align 4
  br label %13

13:                                               ; preds = %11, %10
  %14 = phi ptr [ null, %10 ], [ %12, %11 ]
  %15 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.file_operations, ptr %14, i32 0, i32 16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = tail call i32 %18(ptr noundef %0, ptr noundef %1) #12
  %22 = load ptr, ptr %15, align 4
  br label %23

23:                                               ; preds = %20, %13
  %24 = phi ptr [ %16, %13 ], [ %22, %20 ]
  %25 = phi i32 [ 0, %13 ], [ %21, %20 ]
  %26 = icmp eq ptr %24, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %24, align 4
  tail call void @module_put(ptr noundef %28) #12
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 39
  %33 = load ptr, ptr %32, align 8
  store ptr %33, ptr %15, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36, !prof !17

35:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/debugfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 277, 0\0A.popsection", ""() #12, !srcloc !23
  unreachable

36:                                               ; preds = %29
  tail call void @kfree(ptr noundef %16) #12
  %37 = icmp eq ptr %14, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr %14, align 4
  tail call void @module_put(ptr noundef %39) #12
  br label %40

40:                                               ; preds = %38, %36
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @full_proxy_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @debugfs_file_get(ptr noundef %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !13

8:                                                ; preds = %3
  %9 = sext i32 %6 to i64
  br label %36

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef null) #12
  br label %20

18:                                               ; preds = %10
  %19 = load ptr, ptr %13, align 4
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi ptr [ null, %17 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.file_operations, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i64 %23(ptr noundef %0, i64 noundef %1, i32 noundef %2) #12
  %25 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 11
  %26 = load volatile ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.debugfs_fsdata, ptr %26, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #12, !srcloc !9
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #12, !srcloc !15
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = icmp sgt i32 %29, 0
  br i1 %32, label %36, label %33, !prof !13

33:                                               ; preds = %31
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef 3) #12
  br label %36

34:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %35 = getelementptr inbounds %struct.debugfs_fsdata, ptr %26, i32 0, i32 2
  tail call void @complete(ptr noundef %35) #12
  br label %36

36:                                               ; preds = %34, %33, %31, %8
  %37 = phi i64 [ %9, %8 ], [ %24, %31 ], [ %24, %33 ], [ %24, %34 ]
  ret i64 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @full_proxy_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @debugfs_file_get(ptr noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %35, !prof !13

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef null) #12
  br label %19

17:                                               ; preds = %9
  %18 = load ptr, ptr %12, align 4
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi ptr [ null, %16 ], [ %18, %17 ]
  %21 = getelementptr inbounds %struct.file_operations, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12
  %24 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 11
  %25 = load volatile ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.debugfs_fsdata, ptr %25, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #12, !srcloc !9
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #12, !srcloc !15
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %35, label %32, !prof !13

32:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #12
  br label %35

33:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %34 = getelementptr inbounds %struct.debugfs_fsdata, ptr %25, i32 0, i32 2
  tail call void @complete(ptr noundef %34) #12
  br label %35

35:                                               ; preds = %33, %32, %30, %4
  %36 = phi i32 [ %7, %4 ], [ %23, %30 ], [ %23, %32 ], [ %23, %33 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @full_proxy_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @debugfs_file_get(ptr noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %35, !prof !13

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef null) #12
  br label %19

17:                                               ; preds = %9
  %18 = load ptr, ptr %12, align 4
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi ptr [ null, %16 ], [ %18, %17 ]
  %21 = getelementptr inbounds %struct.file_operations, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12
  %24 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 11
  %25 = load volatile ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.debugfs_fsdata, ptr %25, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #12, !srcloc !9
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #12, !srcloc !15
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %35, label %32, !prof !13

32:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #12
  br label %35

33:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %34 = getelementptr inbounds %struct.debugfs_fsdata, ptr %25, i32 0, i32 2
  tail call void @complete(ptr noundef %34) #12
  br label %35

35:                                               ; preds = %33, %32, %30, %4
  %36 = phi i32 [ %7, %4 ], [ %23, %30 ], [ %23, %32 ], [ %23, %33 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @full_proxy_poll(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @debugfs_file_get(ptr noundef %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef null) #12
  br label %17

15:                                               ; preds = %7
  %16 = load ptr, ptr %10, align 4
  br label %17

17:                                               ; preds = %15, %14
  %18 = phi ptr [ null, %14 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.file_operations, ptr %18, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %0, ptr noundef %1) #12
  %22 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 11
  %23 = load volatile ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.debugfs_fsdata, ptr %23, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #12, !srcloc !9
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #12, !srcloc !15
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = icmp sgt i32 %26, 0
  br i1 %29, label %33, label %30, !prof !13

30:                                               ; preds = %28
  tail call void @refcount_warn_saturate(ptr noundef %24, i32 noundef 3) #12
  br label %33

31:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %32 = getelementptr inbounds %struct.debugfs_fsdata, ptr %23, i32 0, i32 2
  tail call void @complete(ptr noundef %32) #12
  br label %33

33:                                               ; preds = %31, %30, %28, %2
  %34 = phi i32 [ 16, %2 ], [ %21, %28 ], [ %21, %30 ], [ %21, %31 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @full_proxy_unlocked_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @debugfs_file_get(ptr noundef %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %34, !prof !13

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef null) #12
  br label %18

16:                                               ; preds = %8
  %17 = load ptr, ptr %11, align 4
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi ptr [ null, %15 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.file_operations, ptr %19, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %0, i32 noundef %1, i32 noundef %2) #12
  %23 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 11
  %24 = load volatile ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.debugfs_fsdata, ptr %24, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #12, !srcloc !9
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #12, !srcloc !15
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %18
  %30 = icmp sgt i32 %27, 0
  br i1 %30, label %34, label %31, !prof !13

31:                                               ; preds = %29
  tail call void @refcount_warn_saturate(ptr noundef %25, i32 noundef 3) #12
  br label %34

32:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %33 = getelementptr inbounds %struct.debugfs_fsdata, ptr %24, i32 0, i32 2
  tail call void @complete(ptr noundef %33) #12
  br label %34

34:                                               ; preds = %32, %31, %29, %3
  %35 = phi i32 [ %6, %3 ], [ %22, %29 ], [ %22, %31 ], [ %22, %32 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_u8_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_u8_get, ptr noundef nonnull @debugfs_u8_set, ptr noundef nonnull @.str.6) #12
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @debugfs_u8_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i64
  store i64 %4, ptr %1, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @debugfs_u8_set(ptr nocapture noundef writeonly %0, i64 noundef %1) #8 {
  %3 = trunc i64 %1 to i8
  store i8 %3, ptr %0, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_u8_ro_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_u8_get, ptr noundef null, ptr noundef nonnull @.str.6) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_u8_wo_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @debugfs_u8_set, ptr noundef nonnull @.str.6) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_u16_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_u16_get, ptr noundef nonnull @debugfs_u16_set, ptr noundef nonnull @.str.6) #12
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @debugfs_u16_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = load i16, ptr %0, align 2
  %4 = zext i16 %3 to i64
  store i64 %4, ptr %1, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @debugfs_u16_set(ptr nocapture noundef writeonly %0, i64 noundef %1) #8 {
  %3 = trunc i64 %1 to i16
  store i16 %3, ptr %0, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_u16_ro_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_u16_get, ptr noundef null, ptr noundef nonnull @.str.6) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_u16_wo_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @debugfs_u16_set, ptr noundef nonnull @.str.6) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_u32_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_u32_get, ptr noundef nonnull @debugfs_u32_set, ptr noundef nonnull @.str.6) #12
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @debugfs_u32_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = load i32, ptr %0, align 4
  %4 = zext i32 %3 to i64
  store i64 %4, ptr %1, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @debugfs_u32_set(ptr nocapture noundef writeonly %0, i64 noundef %1) #8 {
  %3 = trunc i64 %1 to i32
  store i32 %3, ptr %0, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_u32_ro_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_u32_get, ptr noundef null, ptr noundef nonnull @.str.6) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_u32_wo_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @debugfs_u32_set, ptr noundef nonnull @.str.6) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_u64_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_u64_get, ptr noundef nonnull @debugfs_u64_set, ptr noundef nonnull @.str.6) #12
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @debugfs_u64_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = load i64, ptr %0, align 8
  store i64 %3, ptr %1, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @debugfs_u64_set(ptr nocapture noundef writeonly %0, i64 noundef %1) #8 {
  store i64 %1, ptr %0, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_u64_ro_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_u64_get, ptr noundef null, ptr noundef nonnull @.str.6) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_u64_wo_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @debugfs_u64_set, ptr noundef nonnull @.str.6) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_ulong_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_ulong_get, ptr noundef nonnull @debugfs_ulong_set, ptr noundef nonnull @.str.6) #12
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @debugfs_ulong_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = load i32, ptr %0, align 4
  %4 = zext i32 %3 to i64
  store i64 %4, ptr %1, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @debugfs_ulong_set(ptr nocapture noundef writeonly %0, i64 noundef %1) #8 {
  %3 = trunc i64 %1 to i32
  store i32 %3, ptr %0, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_ulong_ro_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_ulong_get, ptr noundef null, ptr noundef nonnull @.str.6) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_ulong_wo_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @debugfs_ulong_set, ptr noundef nonnull @.str.6) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_x8_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_u8_get, ptr noundef nonnull @debugfs_u8_set, ptr noundef nonnull @.str.7) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_x8_ro_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_u8_get, ptr noundef null, ptr noundef nonnull @.str.7) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_x8_wo_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @debugfs_u8_set, ptr noundef nonnull @.str.7) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_x16_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_u16_get, ptr noundef nonnull @debugfs_u16_set, ptr noundef nonnull @.str.8) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_x16_ro_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_u16_get, ptr noundef null, ptr noundef nonnull @.str.8) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_x16_wo_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @debugfs_u16_set, ptr noundef nonnull @.str.8) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_x32_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_u32_get, ptr noundef nonnull @debugfs_u32_set, ptr noundef nonnull @.str.9) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_x32_ro_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_u32_get, ptr noundef null, ptr noundef nonnull @.str.9) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_x32_wo_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @debugfs_u32_set, ptr noundef nonnull @.str.9) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_x64_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_u64_get, ptr noundef nonnull @debugfs_u64_set, ptr noundef nonnull @.str.10) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_x64_ro_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_u64_get, ptr noundef null, ptr noundef nonnull @.str.10) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_x64_wo_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @debugfs_u64_set, ptr noundef nonnull @.str.10) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_size_t_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_size_t_get, ptr noundef nonnull @debugfs_size_t_set, ptr noundef nonnull @.str.6) #12
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @debugfs_size_t_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = load i32, ptr %0, align 4
  %4 = zext i32 %3 to i64
  store i64 %4, ptr %1, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @debugfs_size_t_set(ptr nocapture noundef writeonly %0, i64 noundef %1) #8 {
  %3 = trunc i64 %1 to i32
  store i32 %3, ptr %0, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_size_t_ro_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_size_t_get, ptr noundef null, ptr noundef nonnull @.str.6) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_size_t_wo_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @debugfs_size_t_set, ptr noundef nonnull @.str.6) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_atomic_t_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_atomic_t_get, ptr noundef nonnull @debugfs_atomic_t_set, ptr noundef nonnull @.str.11) #12
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @debugfs_atomic_t_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = load volatile i32, ptr %0, align 4
  %4 = sext i32 %3 to i64
  store i64 %4, ptr %1, align 8
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @debugfs_atomic_t_set(ptr noundef %0, i64 noundef %1) #10 {
  %3 = trunc i64 %1 to i32
  store volatile i32 %3, ptr %0, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_atomic_t_ro_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @debugfs_atomic_t_get, ptr noundef null, ptr noundef nonnull @.str.11) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fops_atomic_t_wo_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @debugfs_atomic_t_set, ptr noundef nonnull @.str.11) #12
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @debugfs_write_file_str(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef readnone %3) #1 {
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_file_blob(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @debugfs_file_get(ptr noundef %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27, !prof !13

11:                                               ; preds = %4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.debugfs_blob_wrapper, ptr %6, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %12, i32 noundef %14) #12
  %16 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.debugfs_fsdata, ptr %17, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #12, !srcloc !9
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #12, !srcloc !15
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %11
  %23 = icmp sgt i32 %20, 0
  br i1 %23, label %27, label %24, !prof !13

24:                                               ; preds = %22
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef 3) #12
  br label %27

25:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %26 = getelementptr inbounds %struct.debugfs_fsdata, ptr %17, i32 0, i32 2
  tail call void @complete(ptr noundef %26) #12
  br label %27

27:                                               ; preds = %25, %24, %22, %4
  %28 = phi i32 [ %9, %4 ], [ %15, %22 ], [ %15, %24 ], [ %15, %25 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @u32_array_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @strlen(ptr noundef %6)
  %8 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %6, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @u32_array_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.debugfs_u32_array, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = mul i32 %6, 11
  %8 = add i32 %7, 1
  %9 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %9, i32 %7
  store i8 0, ptr %12, align 1
  %13 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %9, ptr %13, align 8
  %14 = load i32, ptr %5, align 4
  %15 = add i32 %14, -1
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load ptr, ptr %4, align 4
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ %31, %19 ], [ %15, %17 ]
  %21 = phi ptr [ %29, %19 ], [ %9, %17 ]
  %22 = phi i32 [ %30, %19 ], [ %7, %17 ]
  %23 = phi ptr [ %25, %19 ], [ %18, %17 ]
  %24 = icmp eq i32 %20, 0
  %25 = getelementptr i32, ptr %23, i32 1
  %26 = load i32, ptr %23, align 4
  %27 = select i1 %24, i32 10, i32 32
  %28 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef %22, ptr noundef nonnull @.str.12, i32 noundef %26, i32 noundef %27) #12
  %29 = getelementptr i8, ptr %21, i32 %28
  %30 = sub i32 %22, %28
  %31 = add nsw i32 %20, -1
  br i1 %24, label %32, label %19

32:                                               ; preds = %19, %11
  %33 = tail call i32 @nonseekable_open(ptr noundef %0, ptr noundef %1) #12
  br label %34

34:                                               ; preds = %32, %2
  %35 = phi i32 [ %33, %32 ], [ -12, %2 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @u32_array_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %4) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @debugfs_open_regset32(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @debugfs_show_regset32, ptr noundef %4) #12
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @debugfs_show_regset32(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.debugfs_regset32, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %6, i32 noundef 4) #12
  br label %10

10:                                               ; preds = %8, %2
  %11 = getelementptr inbounds %struct.debugfs_regset32, ptr %4, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.debugfs_regset32, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp sgt i32 %12, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %10
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %19 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  br label %20

20:                                               ; preds = %31, %16
  %21 = phi ptr [ %17, %16 ], [ %33, %31 ]
  %22 = phi i32 [ 0, %16 ], [ %32, %31 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13) #12
  %23 = load ptr, ptr %21, align 4
  %24 = getelementptr inbounds %struct.debugfs_reg32, ptr %21, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %14, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #12, !srcloc !21
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %23, i32 noundef %27) #12
  %28 = load i32, ptr %18, align 4
  %29 = load i32, ptr %19, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %20
  %32 = add nuw nsw i32 %22, 1
  %33 = getelementptr %struct.debugfs_reg32, ptr %21, i32 1
  %34 = icmp eq i32 %32, %12
  br i1 %34, label %35, label %20

35:                                               ; preds = %31, %20, %10
  %36 = load ptr, ptr %5, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %36, i32 noundef 5) #12
  br label %40

40:                                               ; preds = %38, %35
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @debugfs_devm_entry_open(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.debugfs_devm_entry, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @single_open(ptr noundef %1, ptr noundef %5, ptr noundef %7) #12
  ret i32 %8
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

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
!8 = !{i64 2153030709}
!9 = !{i64 578561, i64 2148068532, i64 2148068558, i64 2148068605, i64 2148068627, i64 2148068655, i64 2148068675}
!10 = !{i64 589935, i64 589956, i64 589979, i64 589998, i64 590017}
!11 = !{i64 2153031090}
!12 = !{i64 564624, i64 564648, i64 564669, i64 564686, i64 564703}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148181627}
!15 = !{i64 2148083762, i64 2148083794, i64 2148083823, i64 2148083857, i64 2148083888, i64 2148083911}
!16 = !{i64 2149031074}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2153048417, i64 2153048899, i64 2153048454, i64 2153048510, i64 2153048544, i64 2153048568, i64 2153048609, i64 2153048630, i64 2153048658, i64 2153048692}
!19 = !{i8 0, i8 2}
!20 = !{!"auto-init"}
!21 = !{i64 4920558}
!22 = !{i64 2153098937}
!23 = !{i64 2153044868, i64 2153045350, i64 2153044905, i64 2153044961, i64 2153044995, i64 2153045019, i64 2153045060, i64 2153045081, i64 2153045109, i64 2153045143}
