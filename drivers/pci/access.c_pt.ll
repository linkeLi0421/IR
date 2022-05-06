; ModuleID = '/llk/IR/drivers/pci/access.c_pt.bc'
source_filename = "../drivers/pci/access.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_read_config_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_read_config_byte\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_read_config_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_read_config_word:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_read_config_word\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_read_config_word:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_read_config_dword:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_read_config_dword\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_read_config_dword:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_write_config_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_write_config_byte\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_write_config_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_write_config_word:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_write_config_word\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_write_config_word:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_write_config_dword:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_write_config_dword\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_write_config_dword:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_generic_config_read:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_generic_config_read\22\09\09\09\09\09"
module asm "__kstrtabns_pci_generic_config_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_generic_config_write:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_generic_config_write\22\09\09\09\09\09"
module asm "__kstrtabns_pci_generic_config_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_generic_config_read32:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_generic_config_read32\22\09\09\09\09\09"
module asm "__kstrtabns_pci_generic_config_read32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_generic_config_write32:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_generic_config_write32\22\09\09\09\09\09"
module asm "__kstrtabns_pci_generic_config_write32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_set_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_set_ops\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_set_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_user_read_config_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_user_read_config_byte\22\09\09\09\09\09"
module asm "__kstrtabns_pci_user_read_config_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_user_read_config_word:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_user_read_config_word\22\09\09\09\09\09"
module asm "__kstrtabns_pci_user_read_config_word:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_user_read_config_dword:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_user_read_config_dword\22\09\09\09\09\09"
module asm "__kstrtabns_pci_user_read_config_dword:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_user_write_config_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_user_write_config_byte\22\09\09\09\09\09"
module asm "__kstrtabns_pci_user_write_config_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_user_write_config_word:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_user_write_config_word\22\09\09\09\09\09"
module asm "__kstrtabns_pci_user_write_config_word:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_user_write_config_dword:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_user_write_config_dword\22\09\09\09\09\09"
module asm "__kstrtabns_pci_user_write_config_dword:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_cfg_access_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_cfg_access_lock\22\09\09\09\09\09"
module asm "__kstrtabns_pci_cfg_access_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_cfg_access_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_cfg_access_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_pci_cfg_access_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_cfg_access_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_cfg_access_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_pci_cfg_access_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_capability_read_word:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_capability_read_word\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_capability_read_word:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_capability_read_dword:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_capability_read_dword\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_capability_read_dword:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_capability_write_word:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_capability_write_word\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_capability_write_word:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_capability_write_dword:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_capability_write_dword\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_capability_write_dword:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_capability_clear_and_set_word:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_capability_clear_and_set_word\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_capability_clear_and_set_word:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_capability_clear_and_set_dword:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_capability_clear_and_set_dword\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_capability_clear_and_set_dword:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_read_config_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_read_config_byte\22\09\09\09\09\09"
module asm "__kstrtabns_pci_read_config_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_read_config_word:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_read_config_word\22\09\09\09\09\09"
module asm "__kstrtabns_pci_read_config_word:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_read_config_dword:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_read_config_dword\22\09\09\09\09\09"
module asm "__kstrtabns_pci_read_config_dword:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_write_config_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_write_config_byte\22\09\09\09\09\09"
module asm "__kstrtabns_pci_write_config_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_write_config_word:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_write_config_word\22\09\09\09\09\09"
module asm "__kstrtabns_pci_write_config_word:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_write_config_dword:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_write_config_dword\22\09\09\09\09\09"
module asm "__kstrtabns_pci_write_config_dword:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@pci_lock = dso_local global %struct.raw_spinlock zeroinitializer, align 4
@__kstrtab_pci_bus_read_config_byte = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_read_config_byte = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_read_config_byte = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_read_config_byte to i32), ptr @__kstrtab_pci_bus_read_config_byte, ptr @__kstrtabns_pci_bus_read_config_byte }, section "___ksymtab+pci_bus_read_config_byte", align 4
@__kstrtab_pci_bus_read_config_word = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_read_config_word = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_read_config_word = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_read_config_word to i32), ptr @__kstrtab_pci_bus_read_config_word, ptr @__kstrtabns_pci_bus_read_config_word }, section "___ksymtab+pci_bus_read_config_word", align 4
@__kstrtab_pci_bus_read_config_dword = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_read_config_dword = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_read_config_dword = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_read_config_dword to i32), ptr @__kstrtab_pci_bus_read_config_dword, ptr @__kstrtabns_pci_bus_read_config_dword }, section "___ksymtab+pci_bus_read_config_dword", align 4
@__kstrtab_pci_bus_write_config_byte = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_write_config_byte = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_write_config_byte = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_write_config_byte to i32), ptr @__kstrtab_pci_bus_write_config_byte, ptr @__kstrtabns_pci_bus_write_config_byte }, section "___ksymtab+pci_bus_write_config_byte", align 4
@__kstrtab_pci_bus_write_config_word = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_write_config_word = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_write_config_word = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_write_config_word to i32), ptr @__kstrtab_pci_bus_write_config_word, ptr @__kstrtabns_pci_bus_write_config_word }, section "___ksymtab+pci_bus_write_config_word", align 4
@__kstrtab_pci_bus_write_config_dword = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_write_config_dword = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_write_config_dword = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_write_config_dword to i32), ptr @__kstrtab_pci_bus_write_config_dword, ptr @__kstrtabns_pci_bus_write_config_dword }, section "___ksymtab+pci_bus_write_config_dword", align 4
@__kstrtab_pci_generic_config_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_generic_config_read = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_generic_config_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_generic_config_read to i32), ptr @__kstrtab_pci_generic_config_read, ptr @__kstrtabns_pci_generic_config_read }, section "___ksymtab_gpl+pci_generic_config_read", align 4
@__kstrtab_pci_generic_config_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_generic_config_write = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_generic_config_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_generic_config_write to i32), ptr @__kstrtab_pci_generic_config_write, ptr @__kstrtabns_pci_generic_config_write }, section "___ksymtab_gpl+pci_generic_config_write", align 4
@__kstrtab_pci_generic_config_read32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_generic_config_read32 = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_generic_config_read32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_generic_config_read32 to i32), ptr @__kstrtab_pci_generic_config_read32, ptr @__kstrtabns_pci_generic_config_read32 }, section "___ksymtab_gpl+pci_generic_config_read32", align 4
@pci_generic_config_write32._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.pci_generic_config_write32 = private unnamed_addr constant [27 x i8] c"pci_generic_config_write32\00", align 1
@.str = private unnamed_addr constant [85 x i8] c"%d-byte config write to %04x:%02x:%02x.%d offset %#x may corrupt adjacent RW1C bits\0A\00", align 1
@__kstrtab_pci_generic_config_write32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_generic_config_write32 = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_generic_config_write32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_generic_config_write32 to i32), ptr @__kstrtab_pci_generic_config_write32, ptr @__kstrtabns_pci_generic_config_write32 }, section "___ksymtab_gpl+pci_generic_config_write32", align 4
@__kstrtab_pci_bus_set_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_set_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_set_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_set_ops to i32), ptr @__kstrtab_pci_bus_set_ops, ptr @__kstrtabns_pci_bus_set_ops }, section "___ksymtab+pci_bus_set_ops", align 4
@__kstrtab_pci_user_read_config_byte = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_user_read_config_byte = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_user_read_config_byte = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_user_read_config_byte to i32), ptr @__kstrtab_pci_user_read_config_byte, ptr @__kstrtabns_pci_user_read_config_byte }, section "___ksymtab_gpl+pci_user_read_config_byte", align 4
@__kstrtab_pci_user_read_config_word = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_user_read_config_word = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_user_read_config_word = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_user_read_config_word to i32), ptr @__kstrtab_pci_user_read_config_word, ptr @__kstrtabns_pci_user_read_config_word }, section "___ksymtab_gpl+pci_user_read_config_word", align 4
@__kstrtab_pci_user_read_config_dword = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_user_read_config_dword = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_user_read_config_dword = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_user_read_config_dword to i32), ptr @__kstrtab_pci_user_read_config_dword, ptr @__kstrtabns_pci_user_read_config_dword }, section "___ksymtab_gpl+pci_user_read_config_dword", align 4
@__kstrtab_pci_user_write_config_byte = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_user_write_config_byte = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_user_write_config_byte = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_user_write_config_byte to i32), ptr @__kstrtab_pci_user_write_config_byte, ptr @__kstrtabns_pci_user_write_config_byte }, section "___ksymtab_gpl+pci_user_write_config_byte", align 4
@__kstrtab_pci_user_write_config_word = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_user_write_config_word = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_user_write_config_word = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_user_write_config_word to i32), ptr @__kstrtab_pci_user_write_config_word, ptr @__kstrtabns_pci_user_write_config_word }, section "___ksymtab_gpl+pci_user_write_config_word", align 4
@__kstrtab_pci_user_write_config_dword = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_user_write_config_dword = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_user_write_config_dword = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_user_write_config_dword to i32), ptr @__kstrtab_pci_user_write_config_dword, ptr @__kstrtabns_pci_user_write_config_dword }, section "___ksymtab_gpl+pci_user_write_config_dword", align 4
@__kstrtab_pci_cfg_access_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_cfg_access_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_cfg_access_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_cfg_access_lock to i32), ptr @__kstrtab_pci_cfg_access_lock, ptr @__kstrtabns_pci_cfg_access_lock }, section "___ksymtab_gpl+pci_cfg_access_lock", align 4
@__kstrtab_pci_cfg_access_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_cfg_access_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_cfg_access_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_cfg_access_trylock to i32), ptr @__kstrtab_pci_cfg_access_trylock, ptr @__kstrtabns_pci_cfg_access_trylock }, section "___ksymtab_gpl+pci_cfg_access_trylock", align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"drivers/pci/access.c\00", align 1
@pci_cfg_wait = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pci_cfg_wait, i64 4), ptr getelementptr (i8, ptr @pci_cfg_wait, i64 4) } }, align 4
@__kstrtab_pci_cfg_access_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_cfg_access_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_cfg_access_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_cfg_access_unlock to i32), ptr @__kstrtab_pci_cfg_access_unlock, ptr @__kstrtabns_pci_cfg_access_unlock }, section "___ksymtab_gpl+pci_cfg_access_unlock", align 4
@__kstrtab_pcie_capability_read_word = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_capability_read_word = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_capability_read_word = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_capability_read_word to i32), ptr @__kstrtab_pcie_capability_read_word, ptr @__kstrtabns_pcie_capability_read_word }, section "___ksymtab+pcie_capability_read_word", align 4
@__kstrtab_pcie_capability_read_dword = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_capability_read_dword = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_capability_read_dword = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_capability_read_dword to i32), ptr @__kstrtab_pcie_capability_read_dword, ptr @__kstrtabns_pcie_capability_read_dword }, section "___ksymtab+pcie_capability_read_dword", align 4
@__kstrtab_pcie_capability_write_word = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_capability_write_word = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_capability_write_word = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_capability_write_word to i32), ptr @__kstrtab_pcie_capability_write_word, ptr @__kstrtabns_pcie_capability_write_word }, section "___ksymtab+pcie_capability_write_word", align 4
@__kstrtab_pcie_capability_write_dword = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_capability_write_dword = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_capability_write_dword = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_capability_write_dword to i32), ptr @__kstrtab_pcie_capability_write_dword, ptr @__kstrtabns_pcie_capability_write_dword }, section "___ksymtab+pcie_capability_write_dword", align 4
@__kstrtab_pcie_capability_clear_and_set_word = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_capability_clear_and_set_word = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_capability_clear_and_set_word = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_capability_clear_and_set_word to i32), ptr @__kstrtab_pcie_capability_clear_and_set_word, ptr @__kstrtabns_pcie_capability_clear_and_set_word }, section "___ksymtab+pcie_capability_clear_and_set_word", align 4
@__kstrtab_pcie_capability_clear_and_set_dword = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_capability_clear_and_set_dword = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_capability_clear_and_set_dword = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_capability_clear_and_set_dword to i32), ptr @__kstrtab_pcie_capability_clear_and_set_dword, ptr @__kstrtabns_pcie_capability_clear_and_set_dword }, section "___ksymtab+pcie_capability_clear_and_set_dword", align 4
@__kstrtab_pci_read_config_byte = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_read_config_byte = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_read_config_byte = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_read_config_byte to i32), ptr @__kstrtab_pci_read_config_byte, ptr @__kstrtabns_pci_read_config_byte }, section "___ksymtab+pci_read_config_byte", align 4
@__kstrtab_pci_read_config_word = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_read_config_word = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_read_config_word = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_read_config_word to i32), ptr @__kstrtab_pci_read_config_word, ptr @__kstrtabns_pci_read_config_word }, section "___ksymtab+pci_read_config_word", align 4
@__kstrtab_pci_read_config_dword = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_read_config_dword = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_read_config_dword = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_read_config_dword to i32), ptr @__kstrtab_pci_read_config_dword, ptr @__kstrtabns_pci_read_config_dword }, section "___ksymtab+pci_read_config_dword", align 4
@__kstrtab_pci_write_config_byte = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_write_config_byte = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_write_config_byte = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_write_config_byte to i32), ptr @__kstrtab_pci_write_config_byte, ptr @__kstrtabns_pci_write_config_byte }, section "___ksymtab+pci_write_config_byte", align 4
@__kstrtab_pci_write_config_word = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_write_config_word = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_write_config_word = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_write_config_word to i32), ptr @__kstrtab_pci_write_config_word, ptr @__kstrtabns_pci_write_config_word }, section "___ksymtab+pci_write_config_word", align 4
@__kstrtab_pci_write_config_dword = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_write_config_dword = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_write_config_dword = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_write_config_dword to i32), ptr @__kstrtab_pci_write_config_dword, ptr @__kstrtabns_pci_write_config_dword }, section "___ksymtab+pci_write_config_dword", align 4
@llvm.compiler.used = appending global [32 x ptr] [ptr @__ksymtab_pci_bus_read_config_byte, ptr @__ksymtab_pci_bus_read_config_dword, ptr @__ksymtab_pci_bus_read_config_word, ptr @__ksymtab_pci_bus_set_ops, ptr @__ksymtab_pci_bus_write_config_byte, ptr @__ksymtab_pci_bus_write_config_dword, ptr @__ksymtab_pci_bus_write_config_word, ptr @__ksymtab_pci_cfg_access_lock, ptr @__ksymtab_pci_cfg_access_trylock, ptr @__ksymtab_pci_cfg_access_unlock, ptr @__ksymtab_pci_generic_config_read, ptr @__ksymtab_pci_generic_config_read32, ptr @__ksymtab_pci_generic_config_write, ptr @__ksymtab_pci_generic_config_write32, ptr @__ksymtab_pci_read_config_byte, ptr @__ksymtab_pci_read_config_dword, ptr @__ksymtab_pci_read_config_word, ptr @__ksymtab_pci_user_read_config_byte, ptr @__ksymtab_pci_user_read_config_dword, ptr @__ksymtab_pci_user_read_config_word, ptr @__ksymtab_pci_user_write_config_byte, ptr @__ksymtab_pci_user_write_config_dword, ptr @__ksymtab_pci_user_write_config_word, ptr @__ksymtab_pci_write_config_byte, ptr @__ksymtab_pci_write_config_dword, ptr @__ksymtab_pci_write_config_word, ptr @__ksymtab_pcie_capability_clear_and_set_dword, ptr @__ksymtab_pcie_capability_clear_and_set_word, ptr @__ksymtab_pcie_capability_read_dword, ptr @__ksymtab_pcie_capability_read_word, ptr @__ksymtab_pcie_capability_write_dword, ptr @__ksymtab_pcie_capability_write_word], section "llvm.metadata"
@switch.table.pci_user_write_config_dword = private unnamed_addr constant [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], align 4

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_bus_read_config_byte(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pci_lock) #9
  %7 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.pci_ops, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 %10(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 1, ptr noundef nonnull %5) #9
  %12 = icmp eq i32 %11, 0
  %13 = load i32, ptr %5, align 4
  %14 = trunc i32 %13 to i8
  %15 = select i1 %12, i8 %14, i8 -1
  store i8 %15, ptr %3, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pci_lock, i32 noundef %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_bus_read_config_word(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4
  %6 = and i32 %2, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pci_lock) #9
  %10 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.pci_ops, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 %13(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 2, ptr noundef nonnull %5) #9
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr %5, align 4
  %17 = trunc i32 %16 to i16
  %18 = select i1 %15, i16 %17, i16 -1
  store i16 %18, ptr %3, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pci_lock, i32 noundef %9) #9
  br label %19

19:                                               ; preds = %8, %4
  %20 = phi i32 [ %14, %8 ], [ 135, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %20
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_bus_read_config_dword(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4
  %6 = and i32 %2, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pci_lock) #9
  %10 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.pci_ops, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 %13(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 4, ptr noundef nonnull %5) #9
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr %5, align 4
  %17 = select i1 %15, i32 %16, i32 -1
  store i32 %17, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pci_lock, i32 noundef %9) #9
  br label %18

18:                                               ; preds = %8, %4
  %19 = phi i32 [ %14, %8 ], [ 135, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %19
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_bus_write_config_byte(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pci_lock) #9
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_ops, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = zext i8 %3 to i32
  %11 = tail call i32 %9(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %10) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pci_lock, i32 noundef %5) #9
  ret i32 %11
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_bus_write_config_word(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = and i32 %2, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pci_lock) #9
  %9 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.pci_ops, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = zext i16 %3 to i32
  %14 = tail call i32 %12(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 2, i32 noundef %13) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pci_lock, i32 noundef %8) #9
  br label %15

15:                                               ; preds = %7, %4
  %16 = phi i32 [ %14, %7 ], [ 135, %4 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_bus_write_config_dword(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = and i32 %2, 3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pci_lock) #9
  %9 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.pci_ops, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef %3) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pci_lock, i32 noundef %8) #9
  br label %14

14:                                               ; preds = %7, %4
  %15 = phi i32 [ %13, %7 ], [ 135, %4 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_generic_config_read(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #3 {
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_ops, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr %9(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %5
  switch i32 %3, label %19 [
    i32 1, label %13
    i32 2, label %16
  ]

13:                                               ; preds = %12
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %15 = zext i8 %14 to i32
  br label %21

16:                                               ; preds = %12
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %10) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %18 = zext i16 %17 to i32
  br label %21

19:                                               ; preds = %12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  br label %21

21:                                               ; preds = %19, %16, %13
  %22 = phi i32 [ %15, %13 ], [ %20, %19 ], [ %18, %16 ]
  store i32 %22, ptr %4, align 4
  br label %23

23:                                               ; preds = %21, %5
  %24 = phi i32 [ 134, %5 ], [ 0, %21 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_generic_config_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_ops, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr %9(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %5
  switch i32 %3, label %17 [
    i32 1, label %13
    i32 2, label %15
  ]

13:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %14 = trunc i32 %4 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %14) #9, !srcloc !15
  br label %18

15:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %16 = trunc i32 %4 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 %16) #9, !srcloc !17
  br label %18

17:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %4) #9, !srcloc !19
  br label %18

18:                                               ; preds = %17, %15, %13, %5
  %19 = phi i32 [ 134, %5 ], [ 0, %15 ], [ 0, %17 ], [ 0, %13 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_generic_config_read32(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #3 {
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_ops, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = and i32 %2, -4
  %11 = tail call ptr %9(ptr noundef %0, i32 noundef %1, i32 noundef %10) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %5
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %15 = icmp slt i32 %3, 3
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = shl i32 %2, 3
  %18 = and i32 %17, 24
  %19 = lshr i32 %14, %18
  %20 = shl i32 %3, 3
  %21 = shl nsw i32 -1, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %19, %22
  br label %24

24:                                               ; preds = %16, %13
  %25 = phi i32 [ %23, %16 ], [ %14, %13 ]
  store i32 %25, ptr %4, align 4
  br label %26

26:                                               ; preds = %24, %5
  %27 = phi i32 [ 0, %24 ], [ 134, %5 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_generic_config_write32(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_ops, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = and i32 %2, -4
  %11 = tail call ptr %9(ptr noundef %0, i32 noundef %1, i32 noundef %10) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %5
  %14 = icmp eq i32 %3, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 %4) #9, !srcloc !19
  br label %41

16:                                               ; preds = %13
  %17 = tail call i32 @___ratelimit(ptr noundef nonnull @pci_generic_config_write32._rs, ptr noundef nonnull @__func__.pci_generic_config_write32) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21
  %21 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 16
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  %26 = lshr i32 %1, 3
  %27 = and i32 %26, 31
  %28 = and i32 %1, 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef %22, i32 noundef %25, i32 noundef %27, i32 noundef %28, i32 noundef %2) #10
  br label %29

29:                                               ; preds = %19, %16
  %30 = shl i32 %3, 3
  %31 = shl nsw i32 -1, %30
  %32 = xor i32 %31, -1
  %33 = shl i32 %2, 3
  %34 = and i32 %33, 24
  %35 = shl i32 %32, %34
  %36 = xor i32 %35, -1
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !22
  %38 = and i32 %37, %36
  %39 = shl i32 %4, %34
  %40 = or i32 %38, %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 %40) #9, !srcloc !19
  br label %41

41:                                               ; preds = %29, %15, %5
  %42 = phi i32 [ 0, %15 ], [ 0, %29 ], [ 134, %5 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_bus_set_ops(ptr nocapture noundef %0, ptr noundef %1) #3 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pci_lock) #9
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  store ptr %1, ptr %4, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pci_lock, i32 noundef %3) #9
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_user_read_config_byte(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 -1, ptr %4, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pci_lock) #9
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %6 = load i40, ptr %5, align 1
  %7 = and i40 %6, 256
  %8 = icmp eq i40 %7, 0
  br i1 %8, label %10, label %9, !prof !24

9:                                                ; preds = %3
  tail call fastcc void @pci_wait_cfg(ptr noundef %0)
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.pci_bus, ptr %12, i32 0, i32 9
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.pci_ops, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = call i32 %16(ptr noundef %12, i32 noundef %18, i32 noundef %1, i32 noundef 1, ptr noundef nonnull %4) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !25
  %20 = load i16, ptr @pci_lock, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr @pci_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !27
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !28
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %22 = icmp eq i32 %19, 0
  %23 = load i32, ptr %4, align 4
  %24 = trunc i32 %23 to i8
  %25 = select i1 %22, i8 %24, i8 -1
  store i8 %25, ptr %2, align 1
  %26 = icmp slt i32 %19, 1
  br i1 %26, label %33, label %27

27:                                               ; preds = %10
  %28 = add i32 %19, -129
  %29 = icmp ult i32 %28, 9
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = getelementptr inbounds [9 x i32], ptr @switch.table.pci_user_write_config_dword, i32 0, i32 %28
  %32 = load i32, ptr %31, align 4
  br label %33

33:                                               ; preds = %30, %27, %10
  %34 = phi i32 [ %19, %10 ], [ %32, %30 ], [ -34, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_wait_cfg(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  br label %4

4:                                                ; preds = %21, %1
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !25
  %5 = load i16, ptr @pci_lock, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr @pci_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !27
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !28
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %7 = load i40, ptr %3, align 1
  %8 = and i40 %7, 256
  %9 = icmp eq i40 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !30
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #9
  %11 = call i32 @prepare_to_wait_event(ptr noundef nonnull @pci_cfg_wait, ptr noundef nonnull %2, i32 noundef 2) #9
  %12 = load i40, ptr %3, align 1
  %13 = and i40 %12, 256
  %14 = icmp eq i40 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %15, %10
  call void @schedule() #9
  %16 = call i32 @prepare_to_wait_event(ptr noundef nonnull @pci_cfg_wait, ptr noundef nonnull %2, i32 noundef 2) #9
  %17 = load i40, ptr %3, align 1
  %18 = and i40 %17, 256
  %19 = icmp eq i40 %18, 0
  br i1 %19, label %20, label %15

20:                                               ; preds = %15, %10
  call void @finish_wait(ptr noundef nonnull @pci_cfg_wait, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  br label %21

21:                                               ; preds = %20, %4
  call void @_raw_spin_lock_irq(ptr noundef nonnull @pci_lock) #9
  %22 = load i40, ptr %3, align 1
  %23 = and i40 %22, 256
  %24 = icmp eq i40 %23, 0
  br i1 %24, label %25, label %4

25:                                               ; preds = %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_user_read_config_word(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 -1, ptr %4, align 4
  %5 = and i32 %1, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %3
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pci_lock) #9
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %9 = load i40, ptr %8, align 1
  %10 = and i40 %9, 256
  %11 = icmp eq i40 %10, 0
  br i1 %11, label %13, label %12, !prof !24

12:                                               ; preds = %7
  tail call fastcc void @pci_wait_cfg(ptr noundef %0)
  br label %13

13:                                               ; preds = %12, %7
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 9
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.pci_ops, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = call i32 %19(ptr noundef %15, i32 noundef %21, i32 noundef %1, i32 noundef 2, ptr noundef nonnull %4) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !25
  %23 = load i16, ptr @pci_lock, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr @pci_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !27
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !28
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %25 = icmp eq i32 %22, 0
  %26 = load i32, ptr %4, align 4
  %27 = trunc i32 %26 to i16
  %28 = select i1 %25, i16 %27, i16 -1
  store i16 %28, ptr %2, align 2
  %29 = icmp slt i32 %22, 1
  br i1 %29, label %36, label %30

30:                                               ; preds = %13
  %31 = add i32 %22, -129
  %32 = icmp ult i32 %31, 9
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = getelementptr inbounds [9 x i32], ptr @switch.table.pci_user_write_config_dword, i32 0, i32 %31
  %35 = load i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %30, %13, %3
  %37 = phi i32 [ -22, %3 ], [ %22, %13 ], [ %35, %33 ], [ -34, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_user_read_config_dword(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 -1, ptr %4, align 4
  %5 = and i32 %1, 3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %3
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pci_lock) #9
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %9 = load i40, ptr %8, align 1
  %10 = and i40 %9, 256
  %11 = icmp eq i40 %10, 0
  br i1 %11, label %13, label %12, !prof !24

12:                                               ; preds = %7
  tail call fastcc void @pci_wait_cfg(ptr noundef %0)
  br label %13

13:                                               ; preds = %12, %7
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 9
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.pci_ops, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = call i32 %19(ptr noundef %15, i32 noundef %21, i32 noundef %1, i32 noundef 4, ptr noundef nonnull %4) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !25
  %23 = load i16, ptr @pci_lock, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr @pci_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !27
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !28
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %25 = icmp eq i32 %22, 0
  %26 = load i32, ptr %4, align 4
  %27 = select i1 %25, i32 %26, i32 -1
  store i32 %27, ptr %2, align 4
  %28 = icmp slt i32 %22, 1
  br i1 %28, label %35, label %29

29:                                               ; preds = %13
  %30 = add i32 %22, -129
  %31 = icmp ult i32 %30, 9
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = getelementptr inbounds [9 x i32], ptr @switch.table.pci_user_write_config_dword, i32 0, i32 %30
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %29, %13, %3
  %36 = phi i32 [ -22, %3 ], [ %22, %13 ], [ %34, %32 ], [ -34, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_user_write_config_byte(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) #3 {
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pci_lock) #9
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %5 = load i40, ptr %4, align 1
  %6 = and i40 %5, 256
  %7 = icmp eq i40 %6, 0
  br i1 %7, label %9, label %8, !prof !24

8:                                                ; preds = %3
  tail call fastcc void @pci_wait_cfg(ptr noundef %0)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 9
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.pci_ops, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = zext i8 %2 to i32
  %19 = tail call i32 %15(ptr noundef %11, i32 noundef %17, i32 noundef %1, i32 noundef 1, i32 noundef %18) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !25
  %20 = load i16, ptr @pci_lock, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr @pci_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !27
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %22 = icmp slt i32 %19, 1
  br i1 %22, label %29, label %23

23:                                               ; preds = %9
  %24 = add i32 %19, -129
  %25 = icmp ult i32 %24, 9
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr inbounds [9 x i32], ptr @switch.table.pci_user_write_config_dword, i32 0, i32 %24
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %23, %9
  %30 = phi i32 [ %19, %9 ], [ %28, %26 ], [ -34, %23 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_user_write_config_word(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2) #3 {
  %4 = and i32 %1, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %3
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pci_lock) #9
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %8 = load i40, ptr %7, align 1
  %9 = and i40 %8, 256
  %10 = icmp eq i40 %9, 0
  br i1 %10, label %12, label %11, !prof !24

11:                                               ; preds = %6
  tail call fastcc void @pci_wait_cfg(ptr noundef %0)
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.pci_bus, ptr %14, i32 0, i32 9
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.pci_ops, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = zext i16 %2 to i32
  %22 = tail call i32 %18(ptr noundef %14, i32 noundef %20, i32 noundef %1, i32 noundef 2, i32 noundef %21) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !25
  %23 = load i16, ptr @pci_lock, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr @pci_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !27
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %25 = icmp slt i32 %22, 1
  br i1 %25, label %32, label %26

26:                                               ; preds = %12
  %27 = add i32 %22, -129
  %28 = icmp ult i32 %27, 9
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds [9 x i32], ptr @switch.table.pci_user_write_config_dword, i32 0, i32 %27
  %31 = load i32, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %26, %12, %3
  %33 = phi i32 [ -22, %3 ], [ %22, %12 ], [ %31, %29 ], [ -34, %26 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_user_write_config_dword(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = and i32 %1, 3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %3
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pci_lock) #9
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %8 = load i40, ptr %7, align 1
  %9 = and i40 %8, 256
  %10 = icmp eq i40 %9, 0
  br i1 %10, label %12, label %11, !prof !24

11:                                               ; preds = %6
  tail call fastcc void @pci_wait_cfg(ptr noundef %0)
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.pci_bus, ptr %14, i32 0, i32 9
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.pci_ops, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 %18(ptr noundef %14, i32 noundef %20, i32 noundef %1, i32 noundef 4, i32 noundef %2) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !25
  %22 = load i16, ptr @pci_lock, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr @pci_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !27
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %24 = icmp slt i32 %21, 1
  br i1 %24, label %31, label %25

25:                                               ; preds = %12
  %26 = add i32 %21, -129
  %27 = icmp ult i32 %26, 9
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = getelementptr inbounds [9 x i32], ptr @switch.table.pci_user_write_config_dword, i32 0, i32 %26
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %25, %12, %3
  %32 = phi i32 [ -22, %3 ], [ %21, %12 ], [ %30, %28 ], [ -34, %25 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_cfg_access_lock(ptr nocapture noundef %0) #3 {
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pci_lock) #9
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %3 = load i40, ptr %2, align 1
  %4 = and i40 %3, 256
  %5 = icmp eq i40 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  tail call fastcc void @pci_wait_cfg(ptr noundef %0)
  %7 = load i40, ptr %2, align 1
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i40 [ %7, %6 ], [ %3, %1 ]
  %10 = or i40 %9, 256
  store i40 %10, ptr %2, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !25
  %11 = load i16, ptr @pci_lock, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr @pci_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !27
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pci_cfg_access_trylock(ptr nocapture noundef %0) #3 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pci_lock) #9
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %4 = load i40, ptr %3, align 1
  %5 = and i40 %4, 256
  %6 = icmp eq i40 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = or i40 %4, 256
  store i40 %8, ptr %3, align 1
  br label %9

9:                                                ; preds = %7, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pci_lock, i32 noundef %2) #9
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_cfg_access_unlock(ptr nocapture noundef %0) #3 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pci_lock) #9
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %4 = load i40, ptr %3, align 1
  %5 = and i40 %4, 256
  %6 = icmp eq i40 %5, 0
  br i1 %6, label %7, label %9, !prof !31

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 323, i32 noundef 9, ptr noundef null) #9
  %8 = load i40, ptr %3, align 1
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i40 [ %8, %7 ], [ %4, %1 ]
  %11 = and i40 %10, -257
  store i40 %11, ptr %3, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pci_lock, i32 noundef %2) #9
  tail call void @__wake_up(ptr noundef nonnull @pci_cfg_wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pcie_cap_has_lnkctl(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %3 = load i16, ptr %2, align 2
  %4 = lshr i16 %3, 4
  %5 = and i16 %4, 15
  %6 = icmp ult i16 %5, 9
  %7 = trunc i16 %5 to i9
  %8 = lshr i9 -13, %7
  %9 = and i9 %8, 1
  %10 = icmp ne i9 %9, 0
  %11 = select i1 %6, i1 %10, i1 false
  ret i1 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pcie_cap_has_rtctl(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %3 = load i16, ptr %2, align 2
  %4 = lshr i16 %3, 4
  %5 = and i16 %4, 15
  %6 = icmp eq i16 %5, 4
  %7 = icmp eq i16 %5, 10
  %8 = or i1 %6, %7
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_capability_read_word(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #3 {
  store i16 0, ptr %2, align 2
  %4 = and i32 %1, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %40

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i1 @pcie_capability_reg_implemented(ptr noundef %0, i32 noundef %1)
  br i1 %7, label %8, label %23

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %37, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = add i32 %15, %1
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @pci_bus_read_config_word(ptr noundef %18, i32 noundef %20, i32 noundef %16, ptr noundef %2) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %40, label %37

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %29 = load i16, ptr %28, align 2
  %30 = and i16 %29, 208
  %31 = icmp eq i16 %30, 64
  %32 = and i16 %29, 240
  %33 = icmp eq i16 %32, 128
  %34 = or i1 %31, %33
  %35 = icmp eq i32 %1, 26
  %36 = and i1 %35, %34
  br i1 %36, label %37, label %40

37:                                               ; preds = %27, %12, %8
  %38 = phi i16 [ 0, %8 ], [ 0, %12 ], [ 64, %27 ]
  %39 = phi i32 [ 134, %8 ], [ %21, %12 ], [ 0, %27 ]
  store i16 %38, ptr %2, align 2
  br label %40

40:                                               ; preds = %37, %27, %23, %12, %3
  %41 = phi i32 [ 135, %3 ], [ 0, %12 ], [ 0, %27 ], [ 0, %23 ], [ %39, %37 ]
  ret i32 %41
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @pcie_capability_reg_implemented(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = add i32 %1, -2
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 31)
  switch i32 %8, label %39 [
    i32 0, label %45
    i32 1, label %45
    i32 3, label %45
    i32 4, label %45
    i32 5, label %9
    i32 7, label %9
    i32 8, label %9
    i32 9, label %15
    i32 11, label %15
    i32 12, label %15
    i32 13, label %26
    i32 14, label %26
    i32 15, label %26
    i32 17, label %34
    i32 19, label %34
    i32 21, label %34
    i32 23, label %34
    i32 24, label %34
  ]

9:                                                ; preds = %6, %6, %6
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %11 = load i16, ptr %10, align 2
  %12 = lshr i16 %11, 4
  %13 = and i16 %12, 15
  %14 = icmp ult i16 %13, 9
  br i1 %14, label %40, label %45

15:                                               ; preds = %6, %6, %6
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %17 = load i16, ptr %16, align 2
  %18 = and i16 %17, 208
  %19 = icmp eq i16 %18, 64
  %20 = and i16 %17, 240
  %21 = icmp eq i16 %20, 128
  %22 = or i1 %19, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %15
  %24 = and i16 %17, 256
  %25 = icmp ne i16 %24, 0
  br label %45

26:                                               ; preds = %6, %6, %6
  %27 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %28 = load i16, ptr %27, align 2
  %29 = lshr i16 %28, 4
  %30 = and i16 %29, 15
  %31 = icmp eq i16 %30, 4
  %32 = icmp eq i16 %30, 10
  %33 = or i1 %31, %32
  br label %45

34:                                               ; preds = %6, %6, %6, %6, %6
  %35 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %36 = load i16, ptr %35, align 2
  %37 = and i16 %36, 14
  %38 = icmp ne i16 %37, 0
  br label %45

39:                                               ; preds = %6
  br label %45

40:                                               ; preds = %9
  %41 = trunc i16 %13 to i9
  %42 = lshr i9 -13, %41
  %43 = and i9 %42, 1
  %44 = icmp ne i9 %43, 0
  br label %45

45:                                               ; preds = %40, %39, %34, %26, %23, %15, %9, %6, %6, %6, %6, %2
  %46 = phi i1 [ false, %39 ], [ %38, %34 ], [ %33, %26 ], [ false, %2 ], [ true, %6 ], [ true, %6 ], [ true, %6 ], [ true, %6 ], [ false, %15 ], [ %25, %23 ], [ %44, %40 ], [ false, %9 ]
  ret i1 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_read_config_word(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store i16 -1, ptr %2, align 2
  br label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @pci_bus_read_config_word(ptr noundef %10, i32 noundef %12, i32 noundef %1, ptr noundef %2)
  br label %14

14:                                               ; preds = %8, %7
  %15 = phi i32 [ 134, %7 ], [ %13, %8 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_capability_read_dword(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #3 {
  store i32 0, ptr %2, align 4
  %4 = and i32 %1, 3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %40

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i1 @pcie_capability_reg_implemented(ptr noundef %0, i32 noundef %1)
  br i1 %7, label %8, label %23

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %37, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = add i32 %15, %1
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @pci_bus_read_config_dword(ptr noundef %18, i32 noundef %20, i32 noundef %16, ptr noundef %2) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %40, label %37

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %29 = load i16, ptr %28, align 2
  %30 = and i16 %29, 208
  %31 = icmp eq i16 %30, 64
  %32 = and i16 %29, 240
  %33 = icmp eq i16 %32, 128
  %34 = or i1 %31, %33
  %35 = icmp eq i32 %1, 26
  %36 = and i1 %35, %34
  br i1 %36, label %37, label %40

37:                                               ; preds = %27, %12, %8
  %38 = phi i32 [ 0, %8 ], [ 0, %12 ], [ 64, %27 ]
  %39 = phi i32 [ 134, %8 ], [ %21, %12 ], [ 0, %27 ]
  store i32 %38, ptr %2, align 4
  br label %40

40:                                               ; preds = %37, %27, %23, %12, %3
  %41 = phi i32 [ 135, %3 ], [ 0, %12 ], [ 0, %27 ], [ 0, %23 ], [ %39, %37 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_read_config_dword(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store i32 -1, ptr %2, align 4
  br label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @pci_bus_read_config_dword(ptr noundef %10, i32 noundef %12, i32 noundef %1, ptr noundef %2)
  br label %14

14:                                               ; preds = %8, %7
  %15 = phi i32 [ 134, %7 ], [ %13, %8 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_capability_write_word(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2) #3 {
  %4 = and i32 %1, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i1 @pcie_capability_reg_implemented(ptr noundef %0, i32 noundef %1)
  br i1 %7, label %8, label %22

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = add i32 %15, %1
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @pci_bus_write_config_word(ptr noundef %18, i32 noundef %20, i32 noundef %16, i16 noundef zeroext %2) #9
  br label %22

22:                                               ; preds = %12, %8, %6, %3
  %23 = phi i32 [ 135, %3 ], [ 0, %6 ], [ %21, %12 ], [ 134, %8 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_write_config_word(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2) #3 {
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @pci_bus_write_config_word(ptr noundef %9, i32 noundef %11, i32 noundef %1, i16 noundef zeroext %2)
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi i32 [ %12, %7 ], [ 134, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_capability_write_dword(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = and i32 %1, 3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i1 @pcie_capability_reg_implemented(ptr noundef %0, i32 noundef %1)
  br i1 %7, label %8, label %22

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = add i32 %15, %1
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @pci_bus_write_config_dword(ptr noundef %18, i32 noundef %20, i32 noundef %16, i32 noundef %2) #9
  br label %22

22:                                               ; preds = %12, %8, %6, %3
  %23 = phi i32 [ 135, %3 ], [ 0, %6 ], [ %21, %12 ], [ 134, %8 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_write_config_dword(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @pci_bus_write_config_dword(ptr noundef %9, i32 noundef %11, i32 noundef %1, i32 noundef %2)
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi i32 [ %12, %7 ], [ 134, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_capability_clear_and_set_word(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #3 {
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i16 0, ptr %5, align 2
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %62

8:                                                ; preds = %4
  %9 = tail call fastcc zeroext i1 @pcie_capability_reg_implemented(ptr noundef %0, i32 noundef %1) #9
  br i1 %9, label %10, label %27

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %62, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = add i32 %17, %1
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = call i32 @pci_bus_read_config_word(ptr noundef %20, i32 noundef %22, i32 noundef %18, ptr noundef nonnull %5) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %14
  %26 = load i16, ptr %5, align 2
  br label %42

27:                                               ; preds = %8
  %28 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %33 = load i16, ptr %32, align 2
  %34 = and i16 %33, 208
  %35 = icmp eq i16 %34, 64
  %36 = and i16 %33, 240
  %37 = icmp eq i16 %36, 128
  %38 = or i1 %35, %37
  %39 = icmp eq i32 %1, 26
  %40 = and i1 %39, %38
  %41 = select i1 %40, i16 64, i16 0
  br label %42

42:                                               ; preds = %31, %27, %25
  %43 = phi i16 [ %26, %25 ], [ 0, %27 ], [ %41, %31 ]
  %44 = xor i16 %2, -1
  %45 = and i16 %43, %44
  %46 = or i16 %45, %3
  %47 = tail call fastcc zeroext i1 @pcie_capability_reg_implemented(ptr noundef %0, i32 noundef %1) #9
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %62, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %54 = load i8, ptr %53, align 4
  %55 = zext i8 %54 to i32
  %56 = add i32 %55, %1
  %57 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = tail call i32 @pci_bus_write_config_word(ptr noundef %58, i32 noundef %60, i32 noundef %56, i16 noundef zeroext %46) #9
  br label %62

62:                                               ; preds = %52, %48, %42, %14, %10, %4
  %63 = phi i32 [ 0, %42 ], [ %61, %52 ], [ 134, %48 ], [ 135, %4 ], [ %23, %14 ], [ 134, %10 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_capability_clear_and_set_dword(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4
  %6 = and i32 %1, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %62

8:                                                ; preds = %4
  %9 = tail call fastcc zeroext i1 @pcie_capability_reg_implemented(ptr noundef %0, i32 noundef %1) #9
  br i1 %9, label %10, label %27

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %62, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = add i32 %17, %1
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = call i32 @pci_bus_read_config_dword(ptr noundef %20, i32 noundef %22, i32 noundef %18, ptr noundef nonnull %5) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %14
  %26 = load i32, ptr %5, align 4
  br label %42

27:                                               ; preds = %8
  %28 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %33 = load i16, ptr %32, align 2
  %34 = and i16 %33, 208
  %35 = icmp eq i16 %34, 64
  %36 = and i16 %33, 240
  %37 = icmp eq i16 %36, 128
  %38 = or i1 %35, %37
  %39 = icmp eq i32 %1, 26
  %40 = and i1 %39, %38
  %41 = select i1 %40, i32 64, i32 0
  br label %42

42:                                               ; preds = %31, %27, %25
  %43 = phi i32 [ %26, %25 ], [ 0, %27 ], [ %41, %31 ]
  %44 = xor i32 %2, -1
  %45 = and i32 %43, %44
  %46 = or i32 %45, %3
  %47 = tail call fastcc zeroext i1 @pcie_capability_reg_implemented(ptr noundef %0, i32 noundef %1) #9
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %62, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %54 = load i8, ptr %53, align 4
  %55 = zext i8 %54 to i32
  %56 = add i32 %55, %1
  %57 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = tail call i32 @pci_bus_write_config_dword(ptr noundef %58, i32 noundef %60, i32 noundef %56, i32 noundef %46) #9
  br label %62

62:                                               ; preds = %52, %48, %42, %14, %10, %4
  %63 = phi i32 [ 0, %42 ], [ %61, %52 ], [ 134, %48 ], [ 135, %4 ], [ %23, %14 ], [ 134, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_read_config_byte(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store i8 -1, ptr %2, align 1
  br label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @pci_bus_read_config_byte(ptr noundef %10, i32 noundef %12, i32 noundef %1, ptr noundef %2)
  br label %14

14:                                               ; preds = %8, %7
  %15 = phi i32 [ 134, %7 ], [ %13, %8 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_write_config_byte(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) #3 {
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @pci_bus_write_config_byte(ptr noundef %9, i32 noundef %11, i32 noundef %1, i8 noundef zeroext %2)
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi i32 [ %12, %7 ], [ 134, %3 ]
  ret i32 %14
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

attributes #0 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 3828791}
!9 = !{i64 2153201791}
!10 = !{i64 3828173}
!11 = !{i64 2153202086}
!12 = !{i64 3829011}
!13 = !{i64 2153202381}
!14 = !{i64 2153203964}
!15 = !{i64 3828396}
!16 = !{i64 2153204178}
!17 = !{i64 3827973}
!18 = !{i64 2153204466}
!19 = !{i64 3828593}
!20 = !{i64 2153206310}
!21 = !{i64 2153207937}
!22 = !{i64 2153210682}
!23 = !{i64 2153210854}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2149135872}
!26 = !{i64 2149131696}
!27 = !{i64 2149131771, i64 2149131798, i64 2149131845, i64 2149131867, i64 2149131895, i64 2149131915}
!28 = !{i64 718840}
!29 = !{i64 2149160016}
!30 = !{!"auto-init"}
!31 = !{!"branch_weights", i32 1, i32 2000}
