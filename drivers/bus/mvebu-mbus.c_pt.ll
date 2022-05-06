; ModuleID = '/llk/IR/drivers/bus/mvebu-mbus.c_pt.bc'
source_filename = "../drivers/bus/mvebu-mbus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mv_mbus_dram_info:\09\09\09\09\09"
module asm "\09.asciz \09\22mv_mbus_dram_info\22\09\09\09\09\09"
module asm "__kstrtabns_mv_mbus_dram_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mv_mbus_dram_info_nooverlap:\09\09\09\09\09"
module asm "\09.asciz \09\22mv_mbus_dram_info_nooverlap\22\09\09\09\09\09"
module asm "__kstrtabns_mv_mbus_dram_info_nooverlap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mvebu_mbus_add_window_remap_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22mvebu_mbus_add_window_remap_by_id\22\09\09\09\09\09"
module asm "__kstrtabns_mvebu_mbus_add_window_remap_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mvebu_mbus_add_window_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22mvebu_mbus_add_window_by_id\22\09\09\09\09\09"
module asm "__kstrtabns_mvebu_mbus_add_window_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mvebu_mbus_del_window:\09\09\09\09\09"
module asm "\09.asciz \09\22mvebu_mbus_del_window\22\09\09\09\09\09"
module asm "__kstrtabns_mvebu_mbus_del_window:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mvebu_mbus_get_pcie_mem_aperture:\09\09\09\09\09"
module asm "\09.asciz \09\22mvebu_mbus_get_pcie_mem_aperture\22\09\09\09\09\09"
module asm "__kstrtabns_mvebu_mbus_get_pcie_mem_aperture:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mvebu_mbus_get_pcie_io_aperture:\09\09\09\09\09"
module asm "\09.asciz \09\22mvebu_mbus_get_pcie_io_aperture\22\09\09\09\09\09"
module asm "__kstrtabns_mvebu_mbus_get_pcie_io_aperture:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mvebu_mbus_get_dram_win_info:\09\09\09\09\09"
module asm "\09.asciz \09\22mvebu_mbus_get_dram_win_info\22\09\09\09\09\09"
module asm "__kstrtabns_mvebu_mbus_get_dram_win_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mvebu_mbus_get_io_win_info:\09\09\09\09\09"
module asm "\09.asciz \09\22mvebu_mbus_get_io_win_info\22\09\09\09\09\09"
module asm "__kstrtabns_mvebu_mbus_get_io_win_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mbus_dram_target_info = type { i8, i32, [4 x %struct.mbus_dram_window] }
%struct.mbus_dram_window = type { i8, i8, i64, i64 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mvebu_mbus_state = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.resource, %struct.resource, ptr, i32, i32, i32, [20 x %struct.mvebu_mbus_win_data] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mvebu_mbus_win_data = type { i32, i32, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mvebu_mbus_soc_data = type { i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.memblock = type { i8, i32, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i32, i32, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.57, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.58, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.59, ptr, %struct.address_space, %struct.list_head, %union.anon.60, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.57 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.59 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.60 = type { ptr }

@mvebu_mbus_dram_info = internal global %struct.mbus_dram_target_info zeroinitializer, align 8
@__kstrtab_mv_mbus_dram_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_mv_mbus_dram_info = external dso_local constant [0 x i8], align 1
@__ksymtab_mv_mbus_dram_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mv_mbus_dram_info to i32), ptr @__kstrtab_mv_mbus_dram_info, ptr @__kstrtabns_mv_mbus_dram_info }, section "___ksymtab_gpl+mv_mbus_dram_info", align 4
@mvebu_mbus_dram_info_nooverlap = internal global %struct.mbus_dram_target_info zeroinitializer, align 8
@__kstrtab_mv_mbus_dram_info_nooverlap = external dso_local constant [0 x i8], align 1
@__kstrtabns_mv_mbus_dram_info_nooverlap = external dso_local constant [0 x i8], align 1
@__ksymtab_mv_mbus_dram_info_nooverlap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mv_mbus_dram_info_nooverlap to i32), ptr @__kstrtab_mv_mbus_dram_info_nooverlap, ptr @__kstrtabns_mv_mbus_dram_info_nooverlap }, section "___ksymtab_gpl+mv_mbus_dram_info_nooverlap", align 4
@mbus_state = internal global %struct.mvebu_mbus_state zeroinitializer, align 4
@.str = private unnamed_addr constant [72 x i8] c"\013mvebu_mbus: cannot add window '%x:%x', conflicts with another window\0A\00", align 1
@__kstrtab_mvebu_mbus_add_window_remap_by_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_mvebu_mbus_add_window_remap_by_id = external dso_local constant [0 x i8], align 1
@__ksymtab_mvebu_mbus_add_window_remap_by_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mvebu_mbus_add_window_remap_by_id to i32), ptr @__kstrtab_mvebu_mbus_add_window_remap_by_id, ptr @__kstrtabns_mvebu_mbus_add_window_remap_by_id }, section "___ksymtab_gpl+mvebu_mbus_add_window_remap_by_id", align 4
@__kstrtab_mvebu_mbus_add_window_by_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_mvebu_mbus_add_window_by_id = external dso_local constant [0 x i8], align 1
@__ksymtab_mvebu_mbus_add_window_by_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mvebu_mbus_add_window_by_id to i32), ptr @__kstrtab_mvebu_mbus_add_window_by_id, ptr @__kstrtabns_mvebu_mbus_add_window_by_id }, section "___ksymtab_gpl+mvebu_mbus_add_window_by_id", align 4
@__kstrtab_mvebu_mbus_del_window = external dso_local constant [0 x i8], align 1
@__kstrtabns_mvebu_mbus_del_window = external dso_local constant [0 x i8], align 1
@__ksymtab_mvebu_mbus_del_window = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mvebu_mbus_del_window to i32), ptr @__kstrtab_mvebu_mbus_del_window, ptr @__kstrtabns_mvebu_mbus_del_window }, section "___ksymtab_gpl+mvebu_mbus_del_window", align 4
@__kstrtab_mvebu_mbus_get_pcie_mem_aperture = external dso_local constant [0 x i8], align 1
@__kstrtabns_mvebu_mbus_get_pcie_mem_aperture = external dso_local constant [0 x i8], align 1
@__ksymtab_mvebu_mbus_get_pcie_mem_aperture = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mvebu_mbus_get_pcie_mem_aperture to i32), ptr @__kstrtab_mvebu_mbus_get_pcie_mem_aperture, ptr @__kstrtabns_mvebu_mbus_get_pcie_mem_aperture }, section "___ksymtab_gpl+mvebu_mbus_get_pcie_mem_aperture", align 4
@__kstrtab_mvebu_mbus_get_pcie_io_aperture = external dso_local constant [0 x i8], align 1
@__kstrtabns_mvebu_mbus_get_pcie_io_aperture = external dso_local constant [0 x i8], align 1
@__ksymtab_mvebu_mbus_get_pcie_io_aperture = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mvebu_mbus_get_pcie_io_aperture to i32), ptr @__kstrtab_mvebu_mbus_get_pcie_io_aperture, ptr @__kstrtabns_mvebu_mbus_get_pcie_io_aperture }, section "___ksymtab_gpl+mvebu_mbus_get_pcie_io_aperture", align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"\013mvebu_mbus: invalid dram address %pa\0A\00", align 1
@__kstrtab_mvebu_mbus_get_dram_win_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_mvebu_mbus_get_dram_win_info = external dso_local constant [0 x i8], align 1
@__ksymtab_mvebu_mbus_get_dram_win_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mvebu_mbus_get_dram_win_info to i32), ptr @__kstrtab_mvebu_mbus_get_dram_win_info, ptr @__kstrtabns_mvebu_mbus_get_dram_win_info }, section "___ksymtab_gpl+mvebu_mbus_get_dram_win_info", align 4
@__kstrtab_mvebu_mbus_get_io_win_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_mvebu_mbus_get_io_win_info = external dso_local constant [0 x i8], align 1
@__ksymtab_mvebu_mbus_get_io_win_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mvebu_mbus_get_io_win_info to i32), ptr @__kstrtab_mvebu_mbus_get_io_win_info, ptr @__kstrtabns_mvebu_mbus_get_io_win_info }, section "___ksymtab_gpl+mvebu_mbus_get_io_win_info", align 4
@__initcall__kmod_mvebu_mbus__219_1032_mvebu_mbus_debugfs_init5 = internal global ptr @mvebu_mbus_debugfs_init, section ".initcall5.init", align 4
@of_mvebu_mbus_ids = internal constant [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada370-mbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_370_mbus_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada375-mbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_xp_mbus_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada380-mbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_xp_mbus_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armadaxp-mbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_xp_mbus_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,kirkwood-mbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kirkwood_mbus_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,dove-mbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dove_mbus_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion5x-88f5281-mbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @orion5x_4win_mbus_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion5x-88f5182-mbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @orion5x_2win_mbus_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion5x-88f5181-mbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @orion5x_2win_mbus_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion5x-88f6183-mbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @orion5x_4win_mbus_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv78xx0-mbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mv78xx0_mbus_data }, %struct.of_device_id zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"\013mvebu_mbus: could not find a matching SoC family\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"\013mvebu_mbus: required 'controller' property missing\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"\013mvebu_mbus: could not find an 'mbus-controller' node\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"\013mvebu_mbus: cannot get MBUS register address\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"\013mvebu_mbus: cannot get SDRAM register address\0A\00", align 1
@.str.9 = private unnamed_addr constant [96 x i8] c"\014mvebu_mbus: [Firmware Warn]: deprecated mbus-mvebu Device Tree, suspend/resume will not work\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"drivers/bus/mvebu-mbus.c\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Invalid MBus window size: 0x%zx\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Invalid MBus base/size: %pa len 0x%zx\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"mvebu-mbus\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"sdram\00", align 1
@mvebu_sdram_debug_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvebu_sdram_debug_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@mvebu_devs_debug_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mvebu_devs_debug_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"[%02d] disabled\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"[%02d] %016llx - %016llx : %04x:%04x\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c" (Invalid base/size!!)\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c" (remap %016llx)\0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@armada_370_mbus_data = internal constant %struct.mvebu_mbus_soc_data { i32 20, i8 1, ptr @armada_370_xp_mbus_win_cfg_offset, ptr @generic_mbus_win_remap_8_offset, ptr @mvebu_mbus_default_setup_cpu_target, ptr @mvebu_mbus_default_save_cpu_target, ptr @mvebu_sdram_debug_show_orion }, align 4
@armada_xp_mbus_data = internal constant %struct.mvebu_mbus_soc_data { i32 20, i8 1, ptr @armada_370_xp_mbus_win_cfg_offset, ptr @armada_xp_mbus_win_remap_offset, ptr @mvebu_mbus_default_setup_cpu_target, ptr @mvebu_mbus_default_save_cpu_target, ptr @mvebu_sdram_debug_show_orion }, align 4
@kirkwood_mbus_data = internal constant %struct.mvebu_mbus_soc_data { i32 8, i8 0, ptr @generic_mbus_win_cfg_offset, ptr @generic_mbus_win_remap_4_offset, ptr @mvebu_mbus_default_setup_cpu_target, ptr @mvebu_mbus_default_save_cpu_target, ptr @mvebu_sdram_debug_show_orion }, align 4
@dove_mbus_data = internal constant %struct.mvebu_mbus_soc_data { i32 8, i8 0, ptr @generic_mbus_win_cfg_offset, ptr @generic_mbus_win_remap_4_offset, ptr @mvebu_mbus_dove_setup_cpu_target, ptr @mvebu_mbus_dove_save_cpu_target, ptr @mvebu_sdram_debug_show_dove }, align 4
@orion5x_4win_mbus_data = internal constant %struct.mvebu_mbus_soc_data { i32 8, i8 0, ptr @generic_mbus_win_cfg_offset, ptr @generic_mbus_win_remap_4_offset, ptr @mvebu_mbus_default_setup_cpu_target, ptr @mvebu_mbus_default_save_cpu_target, ptr @mvebu_sdram_debug_show_orion }, align 4
@orion5x_2win_mbus_data = internal constant %struct.mvebu_mbus_soc_data { i32 8, i8 0, ptr @generic_mbus_win_cfg_offset, ptr @generic_mbus_win_remap_2_offset, ptr @mvebu_mbus_default_setup_cpu_target, ptr @mvebu_mbus_default_save_cpu_target, ptr @mvebu_sdram_debug_show_orion }, align 4
@mv78xx0_mbus_data = internal constant %struct.mvebu_mbus_soc_data { i32 14, i8 0, ptr @mv78xx0_mbus_win_cfg_offset, ptr @generic_mbus_win_remap_8_offset, ptr @mvebu_mbus_default_setup_cpu_target, ptr @mvebu_mbus_default_save_cpu_target, ptr @mvebu_sdram_debug_show_orion }, align 4
@.str.21 = private unnamed_addr constant [15 x i8] c"[%d] disabled\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"[%d] %016llx - %016llx : cs%d\0A\00", align 1
@mvebu_mbus_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @mvebu_mbus_suspend, ptr @mvebu_mbus_resume, ptr null }, align 4
@memblock = external dso_local global %struct.memblock, align 4
@.str.23 = private unnamed_addr constant [18 x i8] c"pcie-mem-aperture\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"pcie-io-aperture\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"\014mvebu_mbus: malformed ranges entry '%pOFn'\0A\00", align 1
@.str.29 = private unnamed_addr constant [76 x i8] c"\013mvebu_mbus: cannot add window '%04x:%04x', conflicts with another window\0A\00", align 1
@.str.30 = private unnamed_addr constant [63 x i8] c"\013mvebu_mbus: cannot add window '%04x:%04x', too many windows\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__initcall__kmod_mvebu_mbus__219_1032_mvebu_mbus_debugfs_init5, ptr @__ksymtab_mv_mbus_dram_info, ptr @__ksymtab_mv_mbus_dram_info_nooverlap, ptr @__ksymtab_mvebu_mbus_add_window_by_id, ptr @__ksymtab_mvebu_mbus_add_window_remap_by_id, ptr @__ksymtab_mvebu_mbus_del_window, ptr @__ksymtab_mvebu_mbus_get_dram_win_info, ptr @__ksymtab_mvebu_mbus_get_io_win_info, ptr @__ksymtab_mvebu_mbus_get_pcie_io_aperture, ptr @__ksymtab_mvebu_mbus_get_pcie_mem_aperture], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @mv_mbus_dram_info() #0 {
  ret ptr @mvebu_mbus_dram_info
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @mv_mbus_dram_info_nooverlap() #0 {
  ret ptr @mvebu_mbus_dram_info_nooverlap
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mvebu_mbus_save_cpu_target(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %3 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef nonnull @mbus_state, ptr noundef %0) #11
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mvebu_mbus_add_window_remap_by_id(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = zext i32 %2 to i64
  %7 = zext i32 %3 to i64
  %8 = add nuw nsw i64 %7, %6
  %9 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %46, label %12

12:                                               ; preds = %39, %5
  %13 = phi ptr [ %41, %39 ], [ %9, %5 ]
  %14 = phi i32 [ %40, %39 ], [ 0, %5 ]
  %15 = load ptr, ptr @mbus_state, align 4
  %16 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %13, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(i32 noundef %14) #11
  %19 = getelementptr i8, ptr %15, i32 %18
  %20 = getelementptr i8, ptr %19, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !10
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %12
  %26 = and i32 %21, 15
  %27 = zext i32 %26 to i64
  %28 = shl nuw nsw i64 %27, 32
  %29 = and i32 %21, -65536
  %30 = zext i32 %29 to i64
  %31 = or i64 %28, %30
  %32 = or i32 %22, 65535
  %33 = add i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = add nuw nsw i64 %31, %34
  %36 = icmp ugt i64 %35, %6
  %37 = icmp ugt i64 %8, %31
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %44, label %39

39:                                               ; preds = %25, %12
  %40 = add nuw i32 %14, 1
  %41 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %42 = load i32, ptr %41, align 4
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %12, label %46

44:                                               ; preds = %25
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0, i32 noundef %1) #12
  br label %50

46:                                               ; preds = %39, %5
  %47 = trunc i32 %1 to i8
  %48 = trunc i32 %0 to i8
  %49 = tail call fastcc i32 @mvebu_mbus_alloc_window(i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %48, i8 noundef zeroext %47)
  br label %50

50:                                               ; preds = %46, %44
  %51 = phi i32 [ %49, %46 ], [ -22, %44 ]
  ret i32 %51
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mvebu_mbus_alloc_window(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 {
  %6 = icmp eq i32 %2, -1
  %7 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %8 = load i32, ptr %7, align 4
  br i1 %6, label %9, label %35

9:                                                ; preds = %5
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %66, label %11

11:                                               ; preds = %30, %9
  %12 = phi ptr [ %32, %30 ], [ %7, %9 ]
  %13 = phi i32 [ %31, %30 ], [ 0, %9 ]
  %14 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %12, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(i32 noundef %13) #11
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %30

18:                                               ; preds = %11
  %19 = load ptr, ptr @mbus_state, align 4
  %20 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %21 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(i32 noundef %13) #11
  %24 = getelementptr i8, ptr %19, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = tail call fastcc i32 @mvebu_mbus_setup_window(i32 noundef %13, i32 noundef %0, i32 noundef %1, i32 noundef -1, i8 noundef zeroext %3, i8 noundef zeroext %4)
  br label %66

30:                                               ; preds = %18, %11
  %31 = add nuw i32 %13, 1
  %32 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %11, label %35

35:                                               ; preds = %30, %5
  %36 = phi i32 [ %8, %5 ], [ %33, %30 ]
  %37 = phi ptr [ %7, %5 ], [ %32, %30 ]
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %66, label %39

39:                                               ; preds = %61, %35
  %40 = phi ptr [ %63, %61 ], [ %37, %35 ]
  %41 = phi i32 [ %62, %61 ], [ 0, %35 ]
  br i1 %6, label %49, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %40, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 %44(i32 noundef %41) #11
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %61, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  br label %49

49:                                               ; preds = %47, %39
  %50 = phi ptr [ %48, %47 ], [ %40, %39 ]
  %51 = load ptr, ptr @mbus_state, align 4
  %52 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %50, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 %53(i32 noundef %41) #11
  %55 = getelementptr i8, ptr %51, i32 %54
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = tail call fastcc i32 @mvebu_mbus_setup_window(i32 noundef %41, i32 noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4)
  br label %66

61:                                               ; preds = %49, %42
  %62 = add nuw i32 %41, 1
  %63 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %64 = load i32, ptr %63, align 4
  %65 = icmp ult i32 %62, %64
  br i1 %65, label %39, label %66

66:                                               ; preds = %61, %59, %35, %28, %9
  %67 = phi i32 [ %29, %28 ], [ %60, %59 ], [ -12, %35 ], [ -12, %9 ], [ -12, %61 ]
  ret i32 %67
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mvebu_mbus_add_window_by_id(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = tail call i32 @mvebu_mbus_add_window_remap_by_id(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef -1)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mvebu_mbus_del_window(i32 noundef %0, i32 noundef %1) #1 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = zext i32 %0 to i64
  br label %8

8:                                                ; preds = %33, %6
  %9 = phi ptr [ %3, %6 ], [ %35, %33 ]
  %10 = phi i32 [ 0, %6 ], [ %34, %33 ]
  %11 = load ptr, ptr @mbus_state, align 4
  %12 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(i32 noundef %10) #11
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = getelementptr i8, ptr %15, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !10
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %8
  %22 = and i32 %17, 15
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 32
  %25 = and i32 %17, -65536
  %26 = zext i32 %25 to i64
  %27 = or i64 %24, %26
  %28 = or i32 %18, 65535
  %29 = add i32 %28, 1
  %30 = icmp eq i64 %27, %7
  %31 = icmp eq i32 %29, %1
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %38, label %33

33:                                               ; preds = %21, %8
  %34 = add nuw i32 %10, 1
  %35 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %36 = load i32, ptr %35, align 4
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %8, label %41

38:                                               ; preds = %21
  %39 = icmp slt i32 %10, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  tail call fastcc void @mvebu_mbus_disable_window(i32 noundef %10)
  br label %41

41:                                               ; preds = %40, %38, %33, %2
  %42 = phi i32 [ 0, %40 ], [ %10, %38 ], [ -19, %2 ], [ -19, %33 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mvebu_mbus_disable_window(i32 noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @mbus_state, align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %4 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(i32 noundef %0) #11
  %7 = getelementptr i8, ptr %2, i32 %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %8 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !14
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #11, !srcloc !13
  %9 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %10 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(i32 noundef %0) #11
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr @mbus_state, align 4
  %16 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %17 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(i32 noundef %0) #11
  %20 = getelementptr i8, ptr %15, i32 %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  %21 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !16
  tail call void @arm_heavy_mb() #11
  %22 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #11, !srcloc !13
  br label %23

23:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @mvebu_mbus_get_pcie_mem_aperture(ptr noundef writeonly %0) #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef align 4 dereferenceable(32) getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 7), i32 32, i1 false)
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @mvebu_mbus_get_pcie_io_aperture(ptr noundef writeonly %0) #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef align 4 dereferenceable(32) getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 8), i32 32, i1 false)
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mvebu_mbus_get_dram_win_info(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = zext i32 %0 to i64
  br label %9

9:                                                ; preds = %24, %7
  %10 = phi i32 [ 0, %7 ], [ %25, %24 ]
  %11 = getelementptr %struct.mbus_dram_window, ptr getelementptr inbounds (%struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info, i32 0, i32 2), i32 %10, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = icmp ugt i64 %12, %8
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.mbus_dram_window, ptr getelementptr inbounds (%struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info, i32 0, i32 2), i32 %10, i32 3
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %12, -1
  %18 = add i64 %17, %16
  %19 = icmp ult i64 %18, %8
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load i8, ptr @mvebu_mbus_dram_info, align 8
  store i8 %21, ptr %1, align 1
  %22 = getelementptr %struct.mbus_dram_window, ptr getelementptr inbounds (%struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info, i32 0, i32 2), i32 %10, i32 1
  %23 = load i8, ptr %22, align 1
  store i8 %23, ptr %2, align 1
  br label %29

24:                                               ; preds = %14, %9
  %25 = add nuw nsw i32 %10, 1
  %26 = icmp eq i32 %25, %5
  br i1 %26, label %27, label %9

27:                                               ; preds = %24, %3
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #12
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i32 [ -22, %27 ], [ 0, %20 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mvebu_mbus_get_io_win_info(i32 noundef %0, ptr nocapture noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) #1 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %53, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %2, null
  %10 = icmp eq ptr %3, null
  %11 = zext i32 %0 to i64
  br label %12

12:                                               ; preds = %48, %8
  %13 = phi ptr [ %5, %8 ], [ %50, %48 ]
  %14 = phi i32 [ 0, %8 ], [ %49, %48 ]
  %15 = load ptr, ptr @mbus_state, align 4
  %16 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %13, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(i32 noundef %14) #11
  %19 = getelementptr i8, ptr %15, i32 %18
  %20 = getelementptr i8, ptr %19, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !10
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %12
  %26 = and i32 %21, 15
  %27 = zext i32 %26 to i64
  %28 = shl nuw nsw i64 %27, 32
  %29 = and i32 %21, -65536
  %30 = zext i32 %29 to i64
  %31 = or i64 %28, %30
  %32 = or i32 %22, 65535
  %33 = add i32 %32, 1
  store i32 %33, ptr %1, align 4
  br i1 %9, label %37, label %34

34:                                               ; preds = %25
  %35 = trunc i32 %22 to i8
  %36 = lshr i8 %35, 4
  store i8 %36, ptr %2, align 1
  br label %37

37:                                               ; preds = %34, %25
  br i1 %10, label %41, label %38

38:                                               ; preds = %37
  %39 = lshr i32 %22, 8
  %40 = trunc i32 %39 to i8
  store i8 %40, ptr %3, align 1
  br label %41

41:                                               ; preds = %38, %37
  %42 = icmp ugt i64 %31, %11
  br i1 %42, label %48, label %43

43:                                               ; preds = %41
  %44 = load i32, ptr %1, align 4
  %45 = zext i32 %44 to i64
  %46 = add nuw nsw i64 %31, %45
  %47 = icmp ult i64 %46, %11
  br i1 %47, label %48, label %53

48:                                               ; preds = %43, %41, %12
  %49 = add nuw i32 %14, 1
  %50 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %12, label %53

53:                                               ; preds = %48, %43, %4
  %54 = phi i32 [ -22, %4 ], [ %14, %43 ], [ -22, %48 ]
  ret i32 %54
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mvebu_mbus_debugfs_init() #6 section ".init.text" {
  %1 = load ptr, ptr @mbus_state, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.13, ptr noundef null) #11
  store ptr %4, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 4), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 292, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @mvebu_sdram_debug_fops) #11
  store ptr %7, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 5), align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 4), align 4
  %9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 292, ptr noundef %8, ptr noundef null, ptr noundef nonnull @mvebu_devs_debug_fops) #11
  store ptr %9, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 6), align 4
  br label %10

10:                                               ; preds = %6, %3, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @mvebu_mbus_init(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 section ".init.text" {
  br label %6

6:                                                ; preds = %11, %5
  %7 = phi ptr [ getelementptr inbounds ([12 x %struct.of_device_id], ptr @of_mvebu_mbus_ids, i32 0, i32 0, i32 2), %5 ], [ %13, %11 ]
  %8 = phi ptr [ @of_mvebu_mbus_ids, %5 ], [ %12, %11 ]
  %9 = tail call i32 @strcmp(ptr noundef %7, ptr noundef %0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr %struct.of_device_id, ptr %8, i32 1
  %13 = getelementptr %struct.of_device_id, ptr %8, i32 1, i32 2
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %6

16:                                               ; preds = %11
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  br label %22

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.of_device_id, ptr %8, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  store ptr %20, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %21 = tail call fastcc i32 @mvebu_mbus_common_init(i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false) #13
  br label %22

22:                                               ; preds = %18, %16
  %23 = phi i32 [ %21, %18 ], [ -19, %16 ]
  ret i32 %23
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @mvebu_mbus_common_init(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #6 section ".init.text" {
  %8 = tail call ptr @ioremap(i32 noundef %0, i32 noundef %1) #11
  store ptr %8, ptr @mbus_state, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %42, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @ioremap(i32 noundef %2, i32 noundef %3) #11
  store ptr %11, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 1), align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load ptr, ptr @mbus_state, align 4
  tail call void @iounmap(ptr noundef %14) #11
  br label %42

15:                                               ; preds = %10
  store i32 %2, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 3), align 4
  %16 = icmp eq i32 %4, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %15
  %18 = tail call ptr @ioremap(i32 noundef %4, i32 noundef %5) #11
  store ptr %18, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 2), align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 1), align 4
  tail call void @iounmap(ptr noundef %21) #11
  %22 = load ptr, ptr @mbus_state, align 4
  tail call void @iounmap(ptr noundef %22) #11
  br label %42

23:                                               ; preds = %15
  store ptr null, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 2), align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %28, %24
  %29 = phi i32 [ %30, %28 ], [ 0, %24 ]
  tail call fastcc void @mvebu_mbus_disable_window(i32 noundef %29)
  %30 = add nuw i32 %29, 1
  %31 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %28, label %34

34:                                               ; preds = %28, %24
  %35 = phi ptr [ %25, %24 ], [ %31, %28 ]
  %36 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %35, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef nonnull @mbus_state) #11
  tail call fastcc void @mvebu_mbus_setup_cpu_target_nooverlap() #13
  br i1 %6, label %38, label %41

38:                                               ; preds = %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !17
  tail call void @arm_heavy_mb() #11
  %39 = load ptr, ptr @mbus_state, align 4
  %40 = getelementptr i8, ptr %39, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 65535) #11, !srcloc !13
  br label %41

41:                                               ; preds = %38, %34
  tail call void @register_syscore_ops(ptr noundef nonnull @mvebu_mbus_syscore_ops) #11
  br label %42

42:                                               ; preds = %41, %20, %13, %7
  %43 = phi i32 [ 0, %41 ], [ -12, %20 ], [ -12, %13 ], [ -12, %7 ]
  ret i32 %43
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @mvebu_mbus_dt_init(i1 noundef zeroext %0) local_unnamed_addr #6 section ".init.text" {
  %2 = alloca %struct.resource, align 4
  %3 = alloca %struct.resource, align 4
  %4 = alloca %struct.resource, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store ptr null, ptr %5, align 4, !annotation !18
  %6 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @of_mvebu_mbus_ids, ptr noundef nonnull %5) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  br label %66

10:                                               ; preds = %1
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.of_device_id, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %14 = call ptr @of_get_property(ptr noundef nonnull %6, ptr noundef nonnull @.str.4, ptr noundef null) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %66

18:                                               ; preds = %10
  %19 = load i32, ptr %14, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #11
  %21 = call ptr @of_find_node_by_phandle(i32 noundef %20) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %66

25:                                               ; preds = %18
  %26 = call i32 @of_address_to_resource(ptr noundef nonnull %21, i32 noundef 0, ptr noundef nonnull %2) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %66

30:                                               ; preds = %25
  %31 = call i32 @of_address_to_resource(ptr noundef nonnull %21, i32 noundef 1, ptr noundef nonnull %3) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %66

35:                                               ; preds = %30
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false)
  %36 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %37 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %36, i32 0, i32 1
  %38 = load i8, ptr %37, align 4, !range !19
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = call i32 @of_address_to_resource(ptr noundef nonnull %21, i32 noundef 2, ptr noundef nonnull %4) #11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #12
  br label %45

45:                                               ; preds = %43, %40, %35
  %46 = zext i1 %0 to i32
  store i32 %46, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 10), align 4
  call fastcc void @mvebu_mbus_get_pcie_resources(ptr noundef nonnull %6) #13
  %47 = load i32, ptr %2, align 4
  %48 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = sub i32 1, %47
  %51 = add i32 %50, %49
  %52 = load i32, ptr %3, align 4
  %53 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = sub i32 1, %52
  %56 = add i32 %55, %54
  %57 = load i32, ptr %4, align 4
  %58 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = sub i32 1, %57
  %61 = add i32 %60, %59
  %62 = call fastcc i32 @mvebu_mbus_common_init(i32 noundef %47, i32 noundef %51, i32 noundef %52, i32 noundef %56, i32 noundef %57, i32 noundef %61, i1 noundef zeroext %0) #13
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %45
  %65 = call fastcc i32 @mbus_dt_setup(ptr noundef nonnull %6) #13
  br label %66

66:                                               ; preds = %64, %45, %33, %28, %23, %16, %8
  %67 = phi i32 [ -22, %28 ], [ -22, %33 ], [ %65, %64 ], [ -19, %23 ], [ -22, %16 ], [ -19, %8 ], [ %62, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  ret i32 %67
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @mvebu_mbus_get_pcie_resources(ptr noundef %0) unnamed_addr #6 section ".init.text" {
  %2 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store i64 0, ptr %2, align 8, !annotation !18
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 7), i8 0, i32 32, i1 false)
  store i32 -1, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 7, i32 1), align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 8), i8 0, i32 32, i1 false)
  store i32 -1, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 8, i32 1), align 4
  %3 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0) #11
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 8
  store i32 %6, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 7), align 4
  %7 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %6, -1
  %10 = add i32 %9, %8
  store i32 %10, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 7, i32 1), align 4
  store i32 512, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 7, i32 3), align 4
  br label %11

11:                                               ; preds = %5, %1
  %12 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0) #11
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, ptr %2, align 8
  store i32 %15, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 8), align 4
  %16 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %15, -1
  %19 = add i32 %18, %17
  store i32 %19, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 8, i32 1), align 4
  store i32 256, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 8, i32 3), align 4
  br label %20

20:                                               ; preds = %14, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @mbus_dt_setup(ptr noundef %0) unnamed_addr #6 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store ptr null, ptr %6, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store ptr null, ptr %7, align 4, !annotation !18
  %8 = call fastcc i32 @mbus_parse_ranges(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %64, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %6, align 4
  %12 = load ptr, ptr %7, align 4
  %13 = icmp ult ptr %11, %12
  br i1 %13, label %14, label %64

14:                                               ; preds = %10
  %15 = load i32, ptr %3, align 4
  %16 = load i32, ptr %2, align 4
  %17 = icmp eq i32 %16, 0
  %18 = load i32, ptr %4, align 4
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr %5, align 4
  br label %21

21:                                               ; preds = %61, %14
  %22 = phi ptr [ %11, %14 ], [ %62, %61 ]
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #11
  %25 = zext i32 %24 to i64
  %26 = and i64 %25, 4026531840
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %21
  %29 = lshr i64 %25, 24
  %30 = trunc i64 %29 to i8
  %31 = and i8 %30, 15
  %32 = lshr i64 %25, 16
  %33 = trunc i64 %32 to i8
  %34 = getelementptr i32, ptr %22, i32 %15
  br i1 %17, label %44, label %35

35:                                               ; preds = %35, %28
  %36 = phi i32 [ %38, %35 ], [ %16, %28 ]
  %37 = phi ptr [ %39, %35 ], [ %34, %28 ]
  %38 = add i32 %36, -1
  %39 = getelementptr i32, ptr %37, i32 1
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %41, label %35

41:                                               ; preds = %35
  %42 = load i32, ptr %37, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #11
  br label %44

44:                                               ; preds = %41, %28
  %45 = phi i32 [ 0, %28 ], [ %43, %41 ]
  br i1 %19, label %57, label %46

46:                                               ; preds = %44
  %47 = getelementptr i32, ptr %34, i32 %16
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i32 [ %51, %48 ], [ %18, %46 ]
  %50 = phi ptr [ %52, %48 ], [ %47, %46 ]
  %51 = add i32 %49, -1
  %52 = getelementptr i32, ptr %50, i32 1
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %54, label %48

54:                                               ; preds = %48
  %55 = load i32, ptr %50, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #11
  br label %57

57:                                               ; preds = %54, %44
  %58 = phi i32 [ 0, %44 ], [ %56, %54 ]
  %59 = tail call fastcc i32 @mbus_dt_setup_win(i32 noundef %45, i32 noundef %58, i8 noundef zeroext %31, i8 noundef zeroext %33) #13
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57, %21
  %62 = getelementptr i32, ptr %22, i32 %20
  %63 = icmp ult ptr %62, %12
  br i1 %63, label %21, label %64

64:                                               ; preds = %61, %57, %10, %1
  %65 = phi i32 [ %8, %1 ], [ 0, %10 ], [ 0, %61 ], [ %59, %57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mvebu_mbus_setup_window(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #1 {
  %7 = alloca i32, align 4
  store i32 %1, ptr %7, align 4
  %8 = load ptr, ptr @mbus_state, align 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %10 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(i32 noundef %0) #11
  %13 = getelementptr i8, ptr %8, i32 %12
  %14 = tail call i32 @llvm.ctpop.i32(i32 %2) #11, !range !20
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 338, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %2) #11
  br label %53

17:                                               ; preds = %6
  %18 = add i32 %2, -1
  %19 = and i32 %18, %1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 344, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull %7, i32 noundef %2) #11
  br label %53

22:                                               ; preds = %17
  %23 = and i32 %18, -65536
  %24 = zext i8 %5 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = or i32 %25, %23
  %27 = zext i8 %4 to i32
  %28 = shl nuw nsw i32 %27, 4
  %29 = or i32 %26, %28
  %30 = load i32, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 10), align 4
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 1, i32 3
  %33 = or i32 %29, %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !21
  tail call void @arm_heavy_mb() #11
  %34 = and i32 %1, -65536
  %35 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %34) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !22
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %33) #11, !srcloc !13
  %36 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %37 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(i32 noundef %0) #11
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %53, label %41

41:                                               ; preds = %22
  %42 = load ptr, ptr @mbus_state, align 4
  %43 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %44 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %45(i32 noundef %0) #11
  %47 = getelementptr i8, ptr %42, i32 %46
  %48 = icmp eq i32 %3, -1
  %49 = select i1 %48, i32 %1, i32 %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !23
  tail call void @arm_heavy_mb() #11
  %50 = and i32 %49, -65536
  %51 = getelementptr i8, ptr %47, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %50) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !24
  tail call void @arm_heavy_mb() #11
  %52 = getelementptr i8, ptr %47, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #11, !srcloc !13
  br label %53

53:                                               ; preds = %41, %22, %21, %16
  %54 = phi i32 [ -22, %21 ], [ -22, %16 ], [ 0, %41 ], [ 0, %22 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_sdram_debug_open(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @mvebu_sdram_debug_show, ptr noundef %4) #11
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_sdram_debug_show(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %4 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef nonnull @mbus_state, ptr noundef %0, ptr noundef %1) #11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_devs_debug_open(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @mvebu_devs_debug_show, ptr noundef %4) #11
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_devs_debug_show(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %76, label %6

6:                                                ; preds = %71, %2
  %7 = phi ptr [ %73, %71 ], [ %3, %2 ]
  %8 = phi i32 [ %72, %71 ], [ 0, %2 ]
  %9 = load ptr, ptr @mbus_state, align 4
  %10 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(i32 noundef %8) #11
  %13 = getelementptr i8, ptr %9, i32 %12
  %14 = getelementptr i8, ptr %13, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !10
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %50, label %19

19:                                               ; preds = %6
  %20 = and i32 %15, 15
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 32
  %23 = and i32 %15, -65536
  %24 = zext i32 %23 to i64
  %25 = or i64 %22, %24
  %26 = or i32 %16, 65535
  %27 = add i32 %26, 1
  %28 = lshr i32 %16, 4
  %29 = lshr i32 %16, 8
  %30 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %31 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(i32 noundef %8) #11
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %51, label %35

35:                                               ; preds = %19
  %36 = load ptr, ptr @mbus_state, align 4
  %37 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %38 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 %39(i32 noundef %8) #11
  %41 = getelementptr i8, ptr %36, i32 %40
  %42 = getelementptr i8, ptr %41, i32 8
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !25
  %44 = getelementptr i8, ptr %41, i32 12
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !26
  %46 = zext i32 %45 to i64
  %47 = shl nuw i64 %46, 32
  %48 = zext i32 %43 to i64
  %49 = or i64 %47, %48
  br label %51

50:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %8) #11
  br label %71

51:                                               ; preds = %35, %19
  %52 = phi i64 [ 0, %19 ], [ %49, %35 ]
  %53 = zext i32 %27 to i64
  %54 = add nuw nsw i64 %25, %53
  %55 = and i32 %28, 15
  %56 = and i32 %29, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %8, i64 noundef %25, i64 noundef %54, i32 noundef %55, i32 noundef %56) #11
  %57 = tail call i32 @llvm.ctpop.i32(i32 %27) #11, !range !27
  %58 = icmp eq i32 %57, 1
  %59 = and i32 %16, %23
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %63, label %62

62:                                               ; preds = %51
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.18) #11
  br label %63

63:                                               ; preds = %62, %51
  %64 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %65 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %64, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = tail call i32 %66(i32 noundef %8) #11
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, i64 noundef %52) #11
  br label %71

70:                                               ; preds = %63
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20) #11
  br label %71

71:                                               ; preds = %70, %69, %50
  %72 = add nuw i32 %8, 1
  %73 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %74 = load i32, ptr %73, align 4
  %75 = icmp ult i32 %72, %74
  br i1 %75, label %6, label %76

76:                                               ; preds = %71, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @armada_370_xp_mbus_win_cfg_offset(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 8
  %3 = shl i32 %0, 4
  %4 = shl i32 %0, 3
  %5 = add i32 %4, 80
  %6 = select i1 %2, i32 %3, i32 %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @generic_mbus_win_remap_8_offset(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 8
  %3 = shl i32 %0, 4
  %4 = select i1 %2, i32 %3, i32 -1
  ret i32 %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mvebu_mbus_default_setup_cpu_target(ptr nocapture noundef readonly %0) #6 section ".init.text" {
  store i8 0, ptr @mvebu_mbus_dram_info, align 8
  %2 = getelementptr inbounds %struct.mvebu_mbus_state, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.mvebu_mbus_state, ptr %0, i32 0, i32 10
  br label %4

4:                                                ; preds = %41, %1
  %5 = phi i32 [ 0, %1 ], [ %43, %41 ]
  %6 = phi i32 [ 0, %1 ], [ %42, %41 ]
  %7 = load ptr, ptr %2, align 4
  %8 = shl i32 %5, 3
  %9 = getelementptr i8, ptr %7, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !28
  %11 = load ptr, ptr %2, align 4
  %12 = or i32 %8, 4
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !29
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  %17 = and i32 %10, 15
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %41

20:                                               ; preds = %4
  %21 = add i32 %6, 1
  %22 = getelementptr %struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info, i32 0, i32 2, i32 %6
  %23 = trunc i32 %5 to i8
  store i8 %23, ptr %22, align 8
  %24 = shl nuw nsw i32 1, %5
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 15
  %27 = xor i8 %26, 15
  %28 = getelementptr %struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info, i32 0, i32 2, i32 %6, i32 1
  store i8 %27, ptr %28, align 1
  %29 = load i32, ptr %3, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  %32 = or i8 %27, 16
  store i8 %32, ptr %28, align 1
  br label %33

33:                                               ; preds = %31, %20
  %34 = and i32 %10, -16777216
  %35 = zext i32 %34 to i64
  %36 = getelementptr %struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info, i32 0, i32 2, i32 %6, i32 2
  store i64 %35, ptr %36, align 8
  %37 = or i32 %14, 16777215
  %38 = zext i32 %37 to i64
  %39 = add nuw nsw i64 %38, 1
  %40 = getelementptr %struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info, i32 0, i32 2, i32 %6, i32 3
  store i64 %39, ptr %40, align 8
  br label %41

41:                                               ; preds = %33, %4
  %42 = phi i32 [ %21, %33 ], [ %6, %4 ]
  %43 = add nuw nsw i32 %5, 1
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %45, label %4

45:                                               ; preds = %41
  store i32 %42, ptr getelementptr inbounds (%struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_mbus_default_save_cpu_target(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.mvebu_mbus_state, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.mvebu_mbus_state, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %3, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !30
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !31
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %10 = load i32, ptr %4, align 4
  %11 = getelementptr i32, ptr %1, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %10) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %12 = getelementptr i32, ptr %1, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %6) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !34
  tail call void @arm_heavy_mb() #11
  %13 = load i32, ptr %4, align 4
  %14 = add i32 %13, 4
  %15 = getelementptr i32, ptr %1, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %14) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !35
  tail call void @arm_heavy_mb() #11
  %16 = getelementptr i32, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %9) #11, !srcloc !13
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !30
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr i8, ptr %20, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !31
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %23 = load i32, ptr %4, align 4
  %24 = add i32 %23, 8
  %25 = getelementptr i32, ptr %1, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %24) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %26 = getelementptr i32, ptr %1, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %19) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !34
  tail call void @arm_heavy_mb() #11
  %27 = load i32, ptr %4, align 4
  %28 = add i32 %27, 12
  %29 = getelementptr i32, ptr %1, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %28) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !35
  tail call void @arm_heavy_mb() #11
  %30 = getelementptr i32, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %22) #11, !srcloc !13
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr i8, ptr %31, i32 16
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !30
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr i8, ptr %34, i32 20
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !31
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %37 = load i32, ptr %4, align 4
  %38 = add i32 %37, 16
  %39 = getelementptr i32, ptr %1, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %38) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %40 = getelementptr i32, ptr %1, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %33) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !34
  tail call void @arm_heavy_mb() #11
  %41 = load i32, ptr %4, align 4
  %42 = add i32 %41, 20
  %43 = getelementptr i32, ptr %1, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %42) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !35
  tail call void @arm_heavy_mb() #11
  %44 = getelementptr i32, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %36) #11, !srcloc !13
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr i8, ptr %45, i32 24
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !30
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr i8, ptr %48, i32 28
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !31
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %51 = load i32, ptr %4, align 4
  %52 = add i32 %51, 24
  %53 = getelementptr i32, ptr %1, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %52) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !33
  tail call void @arm_heavy_mb() #11
  %54 = getelementptr i32, ptr %1, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %47) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !34
  tail call void @arm_heavy_mb() #11
  %55 = load i32, ptr %4, align 4
  %56 = add i32 %55, 28
  %57 = getelementptr i32, ptr %1, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %56) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !35
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %50) #11, !srcloc !13
  ret i32 16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_sdram_debug_show_orion(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #1 {
  %4 = getelementptr inbounds %struct.mvebu_mbus_state, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !36
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !37
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef 0) #11
  br label %26

13:                                               ; preds = %3
  %14 = and i32 %6, 15
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 32
  %17 = and i32 %6, -16777216
  %18 = zext i32 %17 to i64
  %19 = or i64 %16, %18
  %20 = or i32 %9, 16777215
  %21 = zext i32 %20 to i64
  %22 = or i64 %19, 1
  %23 = add nuw nsw i64 %22, %21
  %24 = lshr i32 %9, 2
  %25 = and i32 %24, 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef 0, i64 noundef %19, i64 noundef %23, i32 noundef %25) #11
  br label %26

26:                                               ; preds = %13, %12
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i8, ptr %27, i32 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !36
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr i8, ptr %30, i32 12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !37
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %26
  %36 = and i32 %29, 15
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 32
  %39 = and i32 %29, -16777216
  %40 = zext i32 %39 to i64
  %41 = or i64 %38, %40
  %42 = or i32 %32, 16777215
  %43 = zext i32 %42 to i64
  %44 = or i64 %41, 1
  %45 = add nuw nsw i64 %44, %43
  %46 = lshr i32 %32, 2
  %47 = and i32 %46, 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef 1, i64 noundef %41, i64 noundef %45, i32 noundef %47) #11
  br label %49

48:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef 1) #11
  br label %49

49:                                               ; preds = %48, %35
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr i8, ptr %50, i32 16
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !36
  %53 = load ptr, ptr %4, align 4
  %54 = getelementptr i8, ptr %53, i32 20
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !37
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %49
  %59 = and i32 %52, 15
  %60 = zext i32 %59 to i64
  %61 = shl nuw nsw i64 %60, 32
  %62 = and i32 %52, -16777216
  %63 = zext i32 %62 to i64
  %64 = or i64 %61, %63
  %65 = or i32 %55, 16777215
  %66 = zext i32 %65 to i64
  %67 = or i64 %64, 1
  %68 = add nuw nsw i64 %67, %66
  %69 = lshr i32 %55, 2
  %70 = and i32 %69, 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef 2, i64 noundef %64, i64 noundef %68, i32 noundef %70) #11
  br label %72

71:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef 2) #11
  br label %72

72:                                               ; preds = %71, %58
  %73 = load ptr, ptr %4, align 4
  %74 = getelementptr i8, ptr %73, i32 24
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !36
  %76 = load ptr, ptr %4, align 4
  %77 = getelementptr i8, ptr %76, i32 28
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !37
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %72
  %82 = and i32 %75, 15
  %83 = zext i32 %82 to i64
  %84 = shl nuw nsw i64 %83, 32
  %85 = and i32 %75, -16777216
  %86 = zext i32 %85 to i64
  %87 = or i64 %84, %86
  %88 = or i32 %78, 16777215
  %89 = zext i32 %88 to i64
  %90 = or i64 %87, 1
  %91 = add nuw nsw i64 %90, %89
  %92 = lshr i32 %78, 2
  %93 = and i32 %92, 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef 3, i64 noundef %87, i64 noundef %91, i32 noundef %93) #11
  br label %95

94:                                               ; preds = %72
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef 3) #11
  br label %95

95:                                               ; preds = %94, %81
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @generic_mbus_win_cfg_offset(i32 noundef %0) #0 {
  %2 = shl i32 %0, 4
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @armada_xp_mbus_win_remap_offset(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 8
  %3 = shl i32 %0, 4
  %4 = icmp eq i32 %0, 13
  %5 = select i1 %4, i32 232, i32 -1
  %6 = select i1 %2, i32 %3, i32 %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @generic_mbus_win_remap_4_offset(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 4
  %3 = shl i32 %0, 4
  %4 = select i1 %2, i32 %3, i32 -1
  ret i32 %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mvebu_mbus_dove_setup_cpu_target(ptr nocapture noundef readonly %0) #6 section ".init.text" {
  store i8 0, ptr @mvebu_mbus_dram_info, align 8
  %2 = getelementptr inbounds %struct.mvebu_mbus_state, ptr %0, i32 0, i32 1
  br label %3

3:                                                ; preds = %26, %1
  %4 = phi i1 [ true, %1 ], [ false, %26 ]
  %5 = phi i32 [ 0, %1 ], [ 1, %26 ]
  %6 = phi i32 [ 0, %1 ], [ %27, %26 ]
  %7 = load ptr, ptr %2, align 4
  %8 = shl nuw nsw i32 %5, 4
  %9 = getelementptr i8, ptr %7, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !38
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %3
  %14 = add i32 %6, 1
  %15 = getelementptr %struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info, i32 0, i32 2, i32 %6
  %16 = trunc i32 %5 to i8
  store i8 %16, ptr %15, align 8
  %17 = getelementptr %struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info, i32 0, i32 2, i32 %6, i32 1
  store i8 0, ptr %17, align 1
  %18 = and i32 %10, -8388608
  %19 = zext i32 %18 to i64
  %20 = getelementptr %struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info, i32 0, i32 2, i32 %6, i32 2
  store i64 %19, ptr %20, align 8
  %21 = lshr i32 %10, 16
  %22 = and i32 %21, 15
  %23 = shl nuw i32 65536, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr %struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info, i32 0, i32 2, i32 %6, i32 3
  store i64 %24, ptr %25, align 8
  br label %26

26:                                               ; preds = %13, %3
  %27 = phi i32 [ %14, %13 ], [ %6, %3 ]
  br i1 %4, label %3, label %28

28:                                               ; preds = %26
  store i32 %27, ptr getelementptr inbounds (%struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_mbus_dove_save_cpu_target(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.mvebu_mbus_state, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.mvebu_mbus_state, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %3, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !39
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !40
  tail call void @arm_heavy_mb() #11
  %7 = load i32, ptr %4, align 4
  %8 = getelementptr i32, ptr %1, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %7) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !41
  tail call void @arm_heavy_mb() #11
  %9 = getelementptr i32, ptr %1, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #11, !srcloc !13
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !39
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !40
  tail call void @arm_heavy_mb() #11
  %13 = load i32, ptr %4, align 4
  %14 = add i32 %13, 16
  %15 = getelementptr i32, ptr %1, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %14) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !41
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #11, !srcloc !13
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_sdram_debug_show_dove(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #1 {
  %4 = getelementptr inbounds %struct.mvebu_mbus_state, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !42
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef 0) #11
  br label %18

10:                                               ; preds = %3
  %11 = and i32 %6, -8388608
  %12 = zext i32 %11 to i64
  %13 = lshr i32 %6, 16
  %14 = and i32 %13, 15
  %15 = shl nuw i32 65536, %14
  %16 = zext i32 %15 to i64
  %17 = add nuw nsw i64 %16, %12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef 0, i64 noundef %12, i64 noundef %17, i32 noundef 0) #11
  br label %18

18:                                               ; preds = %10, %9
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !42
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %18
  %25 = and i32 %21, -8388608
  %26 = zext i32 %25 to i64
  %27 = lshr i32 %21, 16
  %28 = and i32 %27, 15
  %29 = shl nuw i32 65536, %28
  %30 = zext i32 %29 to i64
  %31 = add nuw nsw i64 %30, %26
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef 1, i64 noundef %26, i64 noundef %31, i32 noundef 1) #11
  br label %33

32:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef 1) #11
  br label %33

33:                                               ; preds = %32, %24
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @generic_mbus_win_remap_2_offset(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 2
  %3 = shl i32 %0, 4
  %4 = select i1 %2, i32 %3, i32 -1
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mv78xx0_mbus_win_cfg_offset(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 8
  %3 = shl i32 %0, 4
  %4 = add i32 %3, 2176
  %5 = select i1 %2, i32 %3, i32 %4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #9

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @mvebu_mbus_setup_cpu_target_nooverlap() unnamed_addr #6 section ".init.text" {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  store i64 0, ptr %1, align 8, !annotation !18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store i64 0, ptr %2, align 8, !annotation !18
  call fastcc void @mvebu_mbus_find_bridge_hole(ptr noundef nonnull %1, ptr noundef nonnull %2) #13
  %3 = load i32, ptr getelementptr inbounds (%struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %50

5:                                                ; preds = %0
  %6 = load i64, ptr %1, align 8
  %7 = load i64, ptr %2, align 8
  %8 = load i32, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 10), align 4
  %9 = icmp eq i32 %8, 0
  br label %10

10:                                               ; preds = %46, %5
  %11 = phi i32 [ 0, %5 ], [ %48, %46 ]
  %12 = phi i32 [ 0, %5 ], [ %47, %46 ]
  %13 = getelementptr %struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info, i32 0, i32 2, i32 %11, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr %struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info, i32 0, i32 2, i32 %11, i32 3
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, %14
  %18 = icmp ult i64 %14, %6
  %19 = icmp ugt i64 %17, %7
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %10
  %22 = xor i1 %19, true
  %23 = select i1 %18, i1 true, i1 %22
  %24 = sub i64 %14, %7
  %25 = select i1 %23, i64 %14, i64 %7
  %26 = select i1 %23, i64 0, i64 %24
  %27 = add i64 %26, %16
  %28 = icmp ult i64 %25, %6
  %29 = icmp ult i64 %6, %17
  %30 = select i1 %28, i1 %29, i1 false
  %31 = sub i64 %6, %17
  %32 = select i1 %30, i64 %31, i64 0
  %33 = add i64 %27, %32
  %34 = add i32 %12, 1
  %35 = getelementptr %struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info_nooverlap, i32 0, i32 2, i32 %12
  %36 = trunc i32 %11 to i8
  store i8 %36, ptr %35, align 8
  %37 = shl nuw i32 1, %11
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 15
  %40 = xor i8 %39, 15
  %41 = getelementptr %struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info_nooverlap, i32 0, i32 2, i32 %12, i32 1
  %42 = or i8 %40, 16
  %43 = select i1 %9, i8 %40, i8 %42
  store i8 %43, ptr %41, align 1
  %44 = getelementptr %struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info_nooverlap, i32 0, i32 2, i32 %12, i32 2
  store i64 %25, ptr %44, align 8
  %45 = getelementptr %struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info_nooverlap, i32 0, i32 2, i32 %12, i32 3
  store i64 %33, ptr %45, align 8
  br label %46

46:                                               ; preds = %21, %10
  %47 = phi i32 [ %34, %21 ], [ %12, %10 ]
  %48 = add nuw nsw i32 %11, 1
  %49 = icmp eq i32 %48, %3
  br i1 %49, label %50, label %10

50:                                               ; preds = %46, %0
  %51 = phi i32 [ 0, %0 ], [ %47, %46 ]
  store i8 0, ptr @mvebu_mbus_dram_info_nooverlap, align 8
  store i32 %51, ptr getelementptr inbounds (%struct.mbus_dram_target_info, ptr @mvebu_mbus_dram_info_nooverlap, i32 0, i32 1), align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #9

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @mvebu_mbus_find_bridge_hole(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store i64 0, ptr %5, align 8
  call void @__next_mem_range(ptr noundef nonnull %5, i32 noundef -1, i32 noundef 9, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #11
  %6 = load i64, ptr %5, align 8
  %7 = icmp eq i64 %6, -1
  br i1 %7, label %15, label %8

8:                                                ; preds = %8, %2
  %9 = phi i64 [ %12, %8 ], [ 0, %2 ]
  %10 = load i32, ptr %4, align 4
  %11 = zext i32 %10 to i64
  %12 = call i64 @llvm.umax.i64(i64 %9, i64 %11)
  call void @__next_mem_range(ptr noundef nonnull %5, i32 noundef -1, i32 noundef 9, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #11
  %13 = load i64, ptr %5, align 8
  %14 = icmp eq i64 %13, -1
  br i1 %14, label %15, label %8

15:                                               ; preds = %8, %2
  %16 = phi i64 [ 0, %2 ], [ %12, %8 ]
  store i64 %16, ptr %0, align 8
  store i64 4294967296, ptr %1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__next_mem_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_mbus_suspend() #1 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 2), align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %51, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %45, label %7

7:                                                ; preds = %38, %3
  %8 = phi ptr [ %40, %38 ], [ %4, %3 ]
  %9 = phi i32 [ %39, %38 ], [ 0, %3 ]
  %10 = load ptr, ptr @mbus_state, align 4
  %11 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(i32 noundef %9) #11
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = getelementptr i8, ptr %14, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !43
  %17 = getelementptr %struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 13, i32 %9
  %18 = getelementptr %struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 13, i32 %9, i32 1
  store i32 %16, ptr %18, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !44
  store i32 %19, ptr %17, align 4
  %20 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %21 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(i32 noundef %9) #11
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %38, label %25

25:                                               ; preds = %7
  %26 = load ptr, ptr @mbus_state, align 4
  %27 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %28 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(i32 noundef %9) #11
  %31 = getelementptr i8, ptr %26, i32 %30
  %32 = getelementptr i8, ptr %31, i32 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !45
  %34 = getelementptr %struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 13, i32 %9, i32 2
  store i32 %33, ptr %34, align 4
  %35 = getelementptr i8, ptr %31, i32 12
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !46
  %37 = getelementptr %struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 13, i32 %9, i32 3
  store i32 %36, ptr %37, align 4
  br label %38

38:                                               ; preds = %25, %7
  %39 = add nuw i32 %9, 1
  %40 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %41 = load i32, ptr %40, align 4
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %7, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 2), align 4
  br label %45

45:                                               ; preds = %43, %3
  %46 = phi ptr [ %44, %43 ], [ %1, %3 ]
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !47
  store i32 %47, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 11), align 4
  %48 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 2), align 4
  %49 = getelementptr i8, ptr %48, i32 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !48
  store i32 %50, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 12), align 4
  br label %51

51:                                               ; preds = %45, %0
  %52 = phi i32 [ 0, %45 ], [ -19, %0 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvebu_mbus_resume() #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !49
  tail call void @arm_heavy_mb() #11
  %1 = load i32, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 11), align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 2), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %1) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !50
  tail call void @arm_heavy_mb() #11
  %3 = load i32, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 12), align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 2), align 4
  %5 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #11, !srcloc !13
  %6 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %40, %0
  %10 = phi ptr [ %42, %40 ], [ %6, %0 ]
  %11 = phi i32 [ %41, %40 ], [ 0, %0 ]
  %12 = load ptr, ptr @mbus_state, align 4
  %13 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(i32 noundef %11) #11
  %16 = getelementptr i8, ptr %12, i32 %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !51
  tail call void @arm_heavy_mb() #11
  %17 = getelementptr %struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 13, i32 %11
  %18 = getelementptr %struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 13, i32 %11, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !52
  tail call void @arm_heavy_mb() #11
  %21 = load i32, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %21) #11, !srcloc !13
  %22 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %23 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(i32 noundef %11) #11
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %40, label %27

27:                                               ; preds = %9
  %28 = load ptr, ptr @mbus_state, align 4
  %29 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %30 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(i32 noundef %11) #11
  %33 = getelementptr i8, ptr %28, i32 %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !53
  tail call void @arm_heavy_mb() #11
  %34 = getelementptr %struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 13, i32 %11, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !54
  tail call void @arm_heavy_mb() #11
  %37 = getelementptr %struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 13, i32 %11, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr i8, ptr %33, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %38) #11, !srcloc !13
  br label %40

40:                                               ; preds = %27, %9
  %41 = add nuw i32 %11, 1
  %42 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %43 = load i32, ptr %42, align 4
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %9, label %45

45:                                               ; preds = %40, %0
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @mbus_parse_ranges(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #6 section ".init.text" {
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 0, ptr %8, align 4, !annotation !18
  %9 = call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull %8) #11
  store ptr %9, ptr %5, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 0, ptr %4, align 4
  store i32 0, ptr %3, align 4
  store i32 0, ptr %2, align 4
  store i32 0, ptr %1, align 4
  store ptr null, ptr %6, align 4
  store ptr null, ptr %5, align 4
  br label %33

12:                                               ; preds = %7
  %13 = load i32, ptr %8, align 4
  %14 = lshr i32 %13, 2
  %15 = getelementptr i32, ptr %9, i32 %14
  store ptr %15, ptr %6, align 4
  %16 = call i32 @of_n_addr_cells(ptr noundef %0) #11
  store i32 %16, ptr %1, align 4
  %17 = call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef null) #11
  %18 = load i32, ptr %17, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18) #11
  store i32 %19, ptr %2, align 4
  %20 = call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef null) #11
  %21 = load i32, ptr %20, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21) #11
  store i32 %22, ptr %3, align 4
  %23 = load i32, ptr %1, align 4
  %24 = load i32, ptr %2, align 4
  %25 = add i32 %23, %22
  %26 = add i32 %25, %24
  store i32 %26, ptr %4, align 4
  %27 = shl i32 %26, 2
  %28 = load i32, ptr %8, align 4
  %29 = srem i32 %28, %27
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %12
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %0) #12
  br label %33

33:                                               ; preds = %31, %12, %11
  %34 = phi i32 [ 0, %11 ], [ -22, %31 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  ret i32 %34
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @mbus_dt_setup_win(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #6 section ".init.text" {
  %5 = zext i32 %0 to i64
  %6 = zext i32 %1 to i64
  %7 = add nuw nsw i64 %6, %5
  %8 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %38, %4
  %12 = phi ptr [ %40, %38 ], [ %8, %4 ]
  %13 = phi i32 [ %39, %38 ], [ 0, %4 ]
  %14 = load ptr, ptr @mbus_state, align 4
  %15 = getelementptr inbounds %struct.mvebu_mbus_soc_data, ptr %12, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(i32 noundef %13) #11
  %18 = getelementptr i8, ptr %14, i32 %17
  %19 = getelementptr i8, ptr %18, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !10
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %11
  %25 = and i32 %20, 15
  %26 = zext i32 %25 to i64
  %27 = shl nuw nsw i64 %26, 32
  %28 = and i32 %20, -65536
  %29 = zext i32 %28 to i64
  %30 = or i64 %27, %29
  %31 = or i32 %21, 65535
  %32 = add i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = add nuw nsw i64 %30, %33
  %35 = icmp ugt i64 %34, %5
  %36 = icmp ugt i64 %7, %30
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %46, label %38

38:                                               ; preds = %24, %11
  %39 = add nuw i32 %13, 1
  %40 = load ptr, ptr getelementptr inbounds (%struct.mvebu_mbus_state, ptr @mbus_state, i32 0, i32 9), align 4
  %41 = load i32, ptr %40, align 4
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %11, label %43

43:                                               ; preds = %38, %4
  %44 = tail call fastcc i32 @mvebu_mbus_alloc_window(i32 noundef %0, i32 noundef %1, i32 noundef -1, i8 noundef zeroext %2, i8 noundef zeroext %3)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43, %24
  %47 = phi ptr [ @.str.30, %43 ], [ @.str.29, %24 ]
  %48 = phi i32 [ -12, %43 ], [ -16, %24 ]
  %49 = zext i8 %2 to i32
  %50 = zext i8 %3 to i32
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %47, i32 noundef %49, i32 noundef %50) #12
  br label %52

52:                                               ; preds = %46, %43
  %53 = phi i32 [ 0, %43 ], [ %48, %46 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_n_addr_cells(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { cold }

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
!8 = !{i64 2914555}
!9 = !{i64 2152487264}
!10 = !{i64 2152487593}
!11 = !{i64 2152489956}
!12 = !{i64 2152488585}
!13 = !{i64 2914137}
!14 = !{i64 2152488892}
!15 = !{i64 2152489199}
!16 = !{i64 2152489506}
!17 = !{i64 2152524945}
!18 = !{!"auto-init"}
!19 = !{i8 0, i8 2}
!20 = !{i32 0, i32 33}
!21 = !{i64 2152491609}
!22 = !{i64 2152491951}
!23 = !{i64 2152492314}
!24 = !{i64 2152492673}
!25 = !{i64 2152488058}
!26 = !{i64 2152488399}
!27 = !{i32 0, i32 17}
!28 = !{i64 2152495985}
!29 = !{i64 2152496430}
!30 = !{i64 2152496994}
!31 = !{i64 2152497439}
!32 = !{i64 2152497691}
!33 = !{i64 2152498092}
!34 = !{i64 2152498470}
!35 = !{i64 2152498871}
!36 = !{i64 2152493272}
!37 = !{i64 2152493717}
!38 = !{i64 2152499592}
!39 = !{i64 2152499993}
!40 = !{i64 2152500223}
!41 = !{i64 2152500601}
!42 = !{i64 2152494233}
!43 = !{i64 2152520526}
!44 = !{i64 2152520855}
!45 = !{i64 2152521196}
!46 = !{i64 2152521537}
!47 = !{i64 2152521896}
!48 = !{i64 2152522255}
!49 = !{i64 2152522467}
!50 = !{i64 2152522847}
!51 = !{i64 2152523217}
!52 = !{i64 2152523572}
!53 = !{i64 2152523935}
!54 = !{i64 2152524310}
