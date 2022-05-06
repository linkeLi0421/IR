; ModuleID = '/llk/IR/lib/genalloc.c_pt.bc'
source_filename = "../lib/genalloc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_create\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_add_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_add_owner\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_add_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_virt_to_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_virt_to_phys\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_virt_to_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_alloc_algo_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_alloc_algo_owner\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_alloc_algo_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_dma_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_dma_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_dma_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_dma_alloc_algo:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_dma_alloc_algo\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_dma_alloc_algo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_dma_alloc_align:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_dma_alloc_align\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_dma_alloc_align:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_dma_zalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_dma_zalloc\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_dma_zalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_dma_zalloc_algo:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_dma_zalloc_algo\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_dma_zalloc_algo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_dma_zalloc_align:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_dma_zalloc_align\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_dma_zalloc_align:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_free_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_free_owner\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_free_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_for_each_chunk:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_for_each_chunk\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_for_each_chunk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_has_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_has_addr\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_has_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_avail:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_avail\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_avail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_size:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_size\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_set_algo:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_set_algo\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_set_algo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_first_fit:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_first_fit\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_first_fit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_first_fit_align:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_first_fit_align\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_first_fit_align:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_fixed_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_fixed_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_fixed_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_first_fit_order_align:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_first_fit_order_align\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_first_fit_order_align:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_best_fit:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_best_fit\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_best_fit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_pool_get:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_pool_get\22\09\09\09\09\09"
module asm "__kstrtabns_gen_pool_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_gen_pool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_gen_pool_create\22\09\09\09\09\09"
module asm "__kstrtabns_devm_gen_pool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_gen_pool_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_gen_pool_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_gen_pool_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.gen_pool_chunk = type { %struct.list_head, %struct.atomic_t, i32, ptr, i32, i32, [0 x i32] }
%struct.atomic_t = type { i32 }
%struct.genpool_data_align = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_gen_pool_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_create = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_create to i32), ptr @__kstrtab_gen_pool_create, ptr @__kstrtabns_gen_pool_create }, section "___ksymtab+gen_pool_create", align 4
@__kstrtab_gen_pool_add_owner = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_add_owner = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_add_owner = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_add_owner to i32), ptr @__kstrtab_gen_pool_add_owner, ptr @__kstrtabns_gen_pool_add_owner }, section "___ksymtab+gen_pool_add_owner", align 4
@__kstrtab_gen_pool_virt_to_phys = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_virt_to_phys = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_virt_to_phys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_virt_to_phys to i32), ptr @__kstrtab_gen_pool_virt_to_phys, ptr @__kstrtabns_gen_pool_virt_to_phys }, section "___ksymtab+gen_pool_virt_to_phys", align 4
@__kstrtab_gen_pool_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_destroy to i32), ptr @__kstrtab_gen_pool_destroy, ptr @__kstrtabns_gen_pool_destroy }, section "___ksymtab+gen_pool_destroy", align 4
@__kstrtab_gen_pool_alloc_algo_owner = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_alloc_algo_owner = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_alloc_algo_owner = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_alloc_algo_owner to i32), ptr @__kstrtab_gen_pool_alloc_algo_owner, ptr @__kstrtabns_gen_pool_alloc_algo_owner }, section "___ksymtab+gen_pool_alloc_algo_owner", align 4
@__kstrtab_gen_pool_dma_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_dma_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_dma_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_dma_alloc to i32), ptr @__kstrtab_gen_pool_dma_alloc, ptr @__kstrtabns_gen_pool_dma_alloc }, section "___ksymtab+gen_pool_dma_alloc", align 4
@__kstrtab_gen_pool_dma_alloc_algo = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_dma_alloc_algo = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_dma_alloc_algo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_dma_alloc_algo to i32), ptr @__kstrtab_gen_pool_dma_alloc_algo, ptr @__kstrtabns_gen_pool_dma_alloc_algo }, section "___ksymtab+gen_pool_dma_alloc_algo", align 4
@__kstrtab_gen_pool_dma_alloc_align = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_dma_alloc_align = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_dma_alloc_align = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_dma_alloc_align to i32), ptr @__kstrtab_gen_pool_dma_alloc_align, ptr @__kstrtabns_gen_pool_dma_alloc_align }, section "___ksymtab+gen_pool_dma_alloc_align", align 4
@__kstrtab_gen_pool_dma_zalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_dma_zalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_dma_zalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_dma_zalloc to i32), ptr @__kstrtab_gen_pool_dma_zalloc, ptr @__kstrtabns_gen_pool_dma_zalloc }, section "___ksymtab+gen_pool_dma_zalloc", align 4
@__kstrtab_gen_pool_dma_zalloc_algo = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_dma_zalloc_algo = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_dma_zalloc_algo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_dma_zalloc_algo to i32), ptr @__kstrtab_gen_pool_dma_zalloc_algo, ptr @__kstrtabns_gen_pool_dma_zalloc_algo }, section "___ksymtab+gen_pool_dma_zalloc_algo", align 4
@__kstrtab_gen_pool_dma_zalloc_align = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_dma_zalloc_align = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_dma_zalloc_align = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_dma_zalloc_align to i32), ptr @__kstrtab_gen_pool_dma_zalloc_align, ptr @__kstrtabns_gen_pool_dma_zalloc_align }, section "___ksymtab+gen_pool_dma_zalloc_align", align 4
@__kstrtab_gen_pool_free_owner = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_free_owner = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_free_owner = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_free_owner to i32), ptr @__kstrtab_gen_pool_free_owner, ptr @__kstrtabns_gen_pool_free_owner }, section "___ksymtab+gen_pool_free_owner", align 4
@__kstrtab_gen_pool_for_each_chunk = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_for_each_chunk = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_for_each_chunk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_for_each_chunk to i32), ptr @__kstrtab_gen_pool_for_each_chunk, ptr @__kstrtabns_gen_pool_for_each_chunk }, section "___ksymtab+gen_pool_for_each_chunk", align 4
@__kstrtab_gen_pool_has_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_has_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_has_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_has_addr to i32), ptr @__kstrtab_gen_pool_has_addr, ptr @__kstrtabns_gen_pool_has_addr }, section "___ksymtab+gen_pool_has_addr", align 4
@__kstrtab_gen_pool_avail = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_avail = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_avail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_avail to i32), ptr @__kstrtab_gen_pool_avail, ptr @__kstrtabns_gen_pool_avail }, section "___ksymtab_gpl+gen_pool_avail", align 4
@__kstrtab_gen_pool_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_size = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_size to i32), ptr @__kstrtab_gen_pool_size, ptr @__kstrtabns_gen_pool_size }, section "___ksymtab_gpl+gen_pool_size", align 4
@__kstrtab_gen_pool_set_algo = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_set_algo = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_set_algo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_set_algo to i32), ptr @__kstrtab_gen_pool_set_algo, ptr @__kstrtabns_gen_pool_set_algo }, section "___ksymtab+gen_pool_set_algo", align 4
@__kstrtab_gen_pool_first_fit = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_first_fit = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_first_fit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_first_fit to i32), ptr @__kstrtab_gen_pool_first_fit, ptr @__kstrtabns_gen_pool_first_fit }, section "___ksymtab+gen_pool_first_fit", align 4
@__kstrtab_gen_pool_first_fit_align = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_first_fit_align = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_first_fit_align = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_first_fit_align to i32), ptr @__kstrtab_gen_pool_first_fit_align, ptr @__kstrtabns_gen_pool_first_fit_align }, section "___ksymtab+gen_pool_first_fit_align", align 4
@.str = private unnamed_addr constant [15 x i8] c"lib/genalloc.c\00", align 1
@__kstrtab_gen_pool_fixed_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_fixed_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_fixed_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_fixed_alloc to i32), ptr @__kstrtab_gen_pool_fixed_alloc, ptr @__kstrtabns_gen_pool_fixed_alloc }, section "___ksymtab+gen_pool_fixed_alloc", align 4
@__kstrtab_gen_pool_first_fit_order_align = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_first_fit_order_align = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_first_fit_order_align = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_first_fit_order_align to i32), ptr @__kstrtab_gen_pool_first_fit_order_align, ptr @__kstrtabns_gen_pool_first_fit_order_align }, section "___ksymtab+gen_pool_first_fit_order_align", align 4
@__kstrtab_gen_pool_best_fit = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_best_fit = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_best_fit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_best_fit to i32), ptr @__kstrtab_gen_pool_best_fit, ptr @__kstrtabns_gen_pool_best_fit }, section "___ksymtab+gen_pool_best_fit", align 4
@__kstrtab_gen_pool_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_pool_get = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_pool_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_pool_get to i32), ptr @__kstrtab_gen_pool_get, ptr @__kstrtabns_gen_pool_get }, section "___ksymtab_gpl+gen_pool_get", align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"devm_gen_pool_release\00", align 1
@__kstrtab_devm_gen_pool_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_gen_pool_create = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_gen_pool_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_gen_pool_create to i32), ptr @__kstrtab_devm_gen_pool_create, ptr @__kstrtabns_devm_gen_pool_create }, section "___ksymtab+devm_gen_pool_create", align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@__kstrtab_of_gen_pool_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_gen_pool_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_gen_pool_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_gen_pool_get to i32), ptr @__kstrtab_of_gen_pool_get, ptr @__kstrtabns_of_gen_pool_get }, section "___ksymtab_gpl+of_gen_pool_get", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [25 x ptr] [ptr @__ksymtab_devm_gen_pool_create, ptr @__ksymtab_gen_pool_add_owner, ptr @__ksymtab_gen_pool_alloc_algo_owner, ptr @__ksymtab_gen_pool_avail, ptr @__ksymtab_gen_pool_best_fit, ptr @__ksymtab_gen_pool_create, ptr @__ksymtab_gen_pool_destroy, ptr @__ksymtab_gen_pool_dma_alloc, ptr @__ksymtab_gen_pool_dma_alloc_algo, ptr @__ksymtab_gen_pool_dma_alloc_align, ptr @__ksymtab_gen_pool_dma_zalloc, ptr @__ksymtab_gen_pool_dma_zalloc_algo, ptr @__ksymtab_gen_pool_dma_zalloc_align, ptr @__ksymtab_gen_pool_first_fit, ptr @__ksymtab_gen_pool_first_fit_align, ptr @__ksymtab_gen_pool_first_fit_order_align, ptr @__ksymtab_gen_pool_fixed_alloc, ptr @__ksymtab_gen_pool_for_each_chunk, ptr @__ksymtab_gen_pool_free_owner, ptr @__ksymtab_gen_pool_get, ptr @__ksymtab_gen_pool_has_addr, ptr @__ksymtab_gen_pool_set_algo, ptr @__ksymtab_gen_pool_size, ptr @__ksymtab_gen_pool_virt_to_phys, ptr @__ksymtab_of_gen_pool_get], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gen_pool_create(i32 noundef %0, i32 %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 28) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  store i32 0, ptr %4, align 8
  %7 = getelementptr inbounds %struct.gen_pool, ptr %4, i32 0, i32 1
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.gen_pool, ptr %4, i32 0, i32 1, i32 1
  store ptr %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.gen_pool, ptr %4, i32 0, i32 2
  store i32 %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.gen_pool, ptr %4, i32 0, i32 3
  store ptr @gen_pool_first_fit, ptr %10, align 8
  %11 = getelementptr inbounds %struct.gen_pool, ptr %4, i32 0, i32 4
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.gen_pool, ptr %4, i32 0, i32 5
  store ptr null, ptr %12, align 8
  br label %13

13:                                               ; preds = %6, %2
  ret ptr %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gen_pool_first_fit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture readnone %4, ptr nocapture readnone %5, i32 %6) #0 {
  %8 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0) #10
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gen_pool_add_owner(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %3, %8
  %10 = add i32 %9, 31
  %11 = lshr i32 %10, 3
  %12 = and i32 %11, 536870908
  %13 = add nuw nsw i32 %12, 28
  %14 = tail call noalias ptr @vzalloc_node(i32 noundef %13, i32 noundef %4) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16, !prof !8

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.gen_pool_chunk, ptr %14, i32 0, i32 2
  store i32 %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.gen_pool_chunk, ptr %14, i32 0, i32 4
  store i32 %1, ptr %18, align 4
  %19 = add i32 %1, -1
  %20 = add i32 %19, %3
  %21 = getelementptr inbounds %struct.gen_pool_chunk, ptr %14, i32 0, i32 5
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.gen_pool_chunk, ptr %14, i32 0, i32 3
  store ptr %5, ptr %22, align 4
  %23 = getelementptr inbounds %struct.gen_pool_chunk, ptr %14, i32 0, i32 1
  store volatile i32 %3, ptr %23, align 4
  tail call void @_raw_spin_lock(ptr noundef %0) #10
  %24 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  store ptr %25, ptr %14, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %24, ptr %26, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  store volatile ptr %14, ptr %24, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %14, ptr %27, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %28 = load i16, ptr %0, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %30

30:                                               ; preds = %16, %6
  %31 = phi i32 [ 0, %16 ], [ -12, %6 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc_node(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gen_pool_virt_to_phys(ptr noundef %0, i32 noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %3 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 1
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %23, label %6

6:                                                ; preds = %20, %2
  %7 = phi ptr [ %21, %20 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.gen_pool_chunk, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gen_pool_chunk, ptr %7, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, %1
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gen_pool_chunk, ptr %7, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 %1, %9
  %19 = add i32 %18, %17
  br label %23

20:                                               ; preds = %11, %6
  %21 = load volatile ptr, ptr %7, align 4
  %22 = icmp eq ptr %21, %3
  br i1 %22, label %23, label %6

23:                                               ; preds = %20, %15, %2
  %24 = phi i32 [ %19, %15 ], [ -1, %2 ], [ -1, %20 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gen_pool_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %26, label %7

7:                                                ; preds = %24, %1
  %8 = phi ptr [ %9, %24 ], [ %5, %1 ]
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %9, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  %13 = getelementptr inbounds %struct.gen_pool_chunk, ptr %8, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.gen_pool_chunk, ptr %8, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %14, 1
  %18 = sub i32 %17, %16
  %19 = lshr i32 %18, %3
  %20 = getelementptr inbounds %struct.gen_pool_chunk, ptr %8, i32 0, i32 6
  %21 = tail call i32 @_find_first_bit_le(ptr noundef %20, i32 noundef %19) #10
  %22 = icmp ult i32 %21, %19
  br i1 %22, label %23, label %24, !prof !8

23:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/genalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 255, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

24:                                               ; preds = %7
  tail call void @vfree(ptr noundef %8) #10
  %25 = icmp eq ptr %9, %4
  br i1 %25, label %26, label %7

26:                                               ; preds = %24, %1
  %27 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  tail call void @kfree_const(ptr noundef %28) #10
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef writeonly %4) #0 {
  %6 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq ptr %4, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  store ptr null, ptr %4, align 4
  br label %10

10:                                               ; preds = %9, %5
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %118, label %12

12:                                               ; preds = %10
  %13 = shl nuw i32 1, %7
  %14 = add i32 %1, -1
  %15 = add i32 %14, %13
  %16 = lshr i32 %15, %7
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %17 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 1
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %116, label %20

20:                                               ; preds = %113, %12
  %21 = phi ptr [ %114, %113 ], [ %18, %12 ]
  %22 = getelementptr inbounds %struct.gen_pool_chunk, ptr %21, i32 0, i32 1
  %23 = load volatile i32, ptr %22, align 4
  %24 = icmp ult i32 %23, %1
  br i1 %24, label %113, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.gen_pool_chunk, ptr %21, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.gen_pool_chunk, ptr %21, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %27, 1
  %31 = sub i32 %30, %29
  %32 = lshr i32 %31, %7
  %33 = getelementptr inbounds %struct.gen_pool_chunk, ptr %21, i32 0, i32 6
  %34 = tail call i32 %2(ptr noundef %33, i32 noundef %32, i32 noundef 0, i32 noundef %16, ptr noundef %3, ptr noundef %0, i32 noundef %29) #10
  %35 = icmp ult i32 %34, %32
  br i1 %35, label %36, label %113

36:                                               ; preds = %99, %25
  %37 = phi i32 [ %101, %99 ], [ %34, %25 ]
  %38 = lshr i32 %37, 5
  %39 = getelementptr i32, ptr %33, i32 %38
  %40 = add i32 %16, %37
  %41 = and i32 %37, 31
  %42 = sub nuw nsw i32 32, %41
  %43 = shl nsw i32 -1, %41
  %44 = icmp ugt i32 %42, %16
  br i1 %44, label %68, label %45

45:                                               ; preds = %64, %36
  %46 = phi i32 [ -1, %64 ], [ %43, %36 ]
  %47 = phi i32 [ 32, %64 ], [ %42, %36 ]
  %48 = phi ptr [ %66, %64 ], [ %39, %36 ]
  %49 = phi i32 [ %65, %64 ], [ %16, %36 ]
  %50 = load i32, ptr %48, align 4
  br label %51

51:                                               ; preds = %61, %45
  %52 = phi i32 [ %50, %45 ], [ %62, %61 ]
  %53 = and i32 %52, %46
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %92

55:                                               ; preds = %51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  %56 = or i32 %52, %46
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #10, !srcloc !20
  br label %57

57:                                               ; preds = %57, %55
  %58 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %48, i32 %52, i32 %56) #10, !srcloc !21
  %59 = extractvalue { i32, i32 } %58, 0
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %57

61:                                               ; preds = %57
  %62 = extractvalue { i32, i32 } %58, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !22
  %63 = icmp eq i32 %62, %52
  br i1 %63, label %64, label %51

64:                                               ; preds = %61
  %65 = sub i32 %49, %47
  %66 = getelementptr i32, ptr %48, i32 1
  %67 = icmp ult i32 %65, 32
  br i1 %67, label %68, label %45

68:                                               ; preds = %64, %36
  %69 = phi i32 [ %16, %36 ], [ %65, %64 ]
  %70 = phi ptr [ %39, %36 ], [ %66, %64 ]
  %71 = phi i32 [ %43, %36 ], [ -1, %64 ]
  %72 = icmp eq i32 %69, 0
  br i1 %72, label %104, label %73

73:                                               ; preds = %68
  %74 = sub i32 0, %40
  %75 = and i32 %74, 31
  %76 = lshr i32 -1, %75
  %77 = and i32 %71, %76
  %78 = load i32, ptr %70, align 4
  br label %79

79:                                               ; preds = %89, %73
  %80 = phi i32 [ %78, %73 ], [ %90, %89 ]
  %81 = and i32 %80, %77
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  %84 = or i32 %80, %77
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %70) #10, !srcloc !20
  br label %85

85:                                               ; preds = %85, %83
  %86 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %70, i32 %80, i32 %84) #10, !srcloc !21
  %87 = extractvalue { i32, i32 } %86, 0
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %85

89:                                               ; preds = %85
  %90 = extractvalue { i32, i32 } %86, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !22
  %91 = icmp eq i32 %90, %80
  br i1 %91, label %104, label %79

92:                                               ; preds = %79, %51
  %93 = phi i32 [ %49, %51 ], [ %69, %79 ]
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %92
  %96 = sub i32 %16, %93
  %97 = tail call fastcc i32 @bitmap_clear_ll(ptr noundef %33, i32 noundef %37, i32 noundef %96)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103, !prof !23

99:                                               ; preds = %95
  %100 = load i32, ptr %28, align 4
  %101 = tail call i32 %2(ptr noundef %33, i32 noundef %32, i32 noundef %37, i32 noundef %16, ptr noundef %3, ptr noundef %0, i32 noundef %100) #10
  %102 = icmp ult i32 %101, %32
  br i1 %102, label %36, label %113

103:                                              ; preds = %95
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/genalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 312, 0\0A.popsection", ""() #10, !srcloc !24
  unreachable

104:                                              ; preds = %92, %89, %68
  %105 = load i32, ptr %28, align 4
  %106 = shl i32 %37, %7
  %107 = add i32 %105, %106
  %108 = shl i32 %16, %7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #10, !srcloc !20
  %109 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 %108, ptr elementtype(i32) %22) #10, !srcloc !25
  br i1 %8, label %116, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.gen_pool_chunk, ptr %21, i32 0, i32 3
  %112 = load ptr, ptr %111, align 4
  store ptr %112, ptr %4, align 4
  br label %116

113:                                              ; preds = %99, %25, %20
  %114 = load volatile ptr, ptr %21, align 4
  %115 = icmp eq ptr %114, %17
  br i1 %115, label %116, label %20

116:                                              ; preds = %113, %110, %104, %12
  %117 = phi i32 [ %107, %110 ], [ %107, %104 ], [ 0, %12 ], [ 0, %113 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %118

118:                                              ; preds = %116, %10
  %119 = phi i32 [ %117, %116 ], [ 0, %10 ]
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bitmap_clear_ll(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = lshr i32 %1, 5
  %5 = getelementptr i32, ptr %0, i32 %4
  %6 = add i32 %1, %2
  %7 = and i32 %1, 31
  %8 = sub nuw nsw i32 32, %7
  %9 = shl nsw i32 -1, %7
  %10 = icmp ugt i32 %8, %2
  br i1 %10, label %35, label %11

11:                                               ; preds = %31, %3
  %12 = phi i32 [ -1, %31 ], [ %9, %3 ]
  %13 = phi i32 [ 32, %31 ], [ %8, %3 ]
  %14 = phi ptr [ %33, %31 ], [ %5, %3 ]
  %15 = phi i32 [ %32, %31 ], [ %2, %3 ]
  %16 = load i32, ptr %14, align 4
  %17 = xor i32 %12, -1
  br label %18

18:                                               ; preds = %28, %11
  %19 = phi i32 [ %16, %11 ], [ %29, %28 ]
  %20 = and i32 %19, %12
  %21 = icmp eq i32 %20, %12
  br i1 %21, label %22, label %60

22:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !28
  %23 = and i32 %19, %17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #10, !srcloc !20
  br label %24

24:                                               ; preds = %24, %22
  %25 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %14, i32 %19, i32 %23) #10, !srcloc !21
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %24

28:                                               ; preds = %24
  %29 = extractvalue { i32, i32 } %25, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !29
  %30 = icmp eq i32 %29, %19
  br i1 %30, label %31, label %18

31:                                               ; preds = %28
  %32 = sub i32 %15, %13
  %33 = getelementptr i32, ptr %14, i32 1
  %34 = icmp ult i32 %32, 32
  br i1 %34, label %35, label %11

35:                                               ; preds = %31, %3
  %36 = phi i32 [ %2, %3 ], [ %32, %31 ]
  %37 = phi ptr [ %5, %3 ], [ %33, %31 ]
  %38 = phi i32 [ %9, %3 ], [ -1, %31 ]
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %35
  %41 = sub i32 0, %6
  %42 = and i32 %41, 31
  %43 = lshr i32 -1, %42
  %44 = and i32 %38, %43
  %45 = load i32, ptr %37, align 4
  %46 = xor i32 %44, -1
  br label %47

47:                                               ; preds = %57, %40
  %48 = phi i32 [ %45, %40 ], [ %58, %57 ]
  %49 = and i32 %48, %44
  %50 = icmp eq i32 %49, %44
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !28
  %52 = and i32 %48, %46
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #10, !srcloc !20
  br label %53

53:                                               ; preds = %53, %51
  %54 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %37, i32 %48, i32 %52) #10, !srcloc !21
  %55 = extractvalue { i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %53

57:                                               ; preds = %53
  %58 = extractvalue { i32, i32 } %54, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !29
  %59 = icmp eq i32 %58, %48
  br i1 %59, label %60, label %47

60:                                               ; preds = %57, %47, %35, %18
  %61 = phi i32 [ 0, %35 ], [ 0, %57 ], [ %36, %47 ], [ %15, %18 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gen_pool_dma_alloc(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %9, ptr noundef %7, ptr noundef null) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %39, label %12

12:                                               ; preds = %5
  %13 = icmp eq ptr %2, null
  br i1 %13, label %37, label %14

14:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %15 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 1
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %35, label %18

18:                                               ; preds = %32, %14
  %19 = phi ptr [ %33, %32 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.gen_pool_chunk, ptr %19, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %10, %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.gen_pool_chunk, ptr %19, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, %10
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.gen_pool_chunk, ptr %19, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %10, %21
  %31 = add i32 %30, %29
  br label %35

32:                                               ; preds = %23, %18
  %33 = load volatile ptr, ptr %19, align 4
  %34 = icmp eq ptr %33, %15
  br i1 %34, label %35, label %18

35:                                               ; preds = %32, %27, %14
  %36 = phi i32 [ %31, %27 ], [ -1, %14 ], [ -1, %32 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  store i32 %36, ptr %2, align 4
  br label %37

37:                                               ; preds = %35, %12
  %38 = inttoptr i32 %10 to ptr
  br label %39

39:                                               ; preds = %37, %5, %3
  %40 = phi ptr [ %38, %37 ], [ null, %3 ], [ null, %5 ]
  ret ptr %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gen_pool_dma_alloc_algo(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, ptr nocapture noundef readonly %3, ptr noundef %4) #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef null) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %2, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %13 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 1
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %33, label %16

16:                                               ; preds = %30, %12
  %17 = phi ptr [ %31, %30 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.gen_pool_chunk, ptr %17, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %8, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.gen_pool_chunk, ptr %17, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %23, %8
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.gen_pool_chunk, ptr %17, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %8, %19
  %29 = add i32 %28, %27
  br label %33

30:                                               ; preds = %21, %16
  %31 = load volatile ptr, ptr %17, align 4
  %32 = icmp eq ptr %31, %13
  br i1 %32, label %33, label %16

33:                                               ; preds = %30, %25, %12
  %34 = phi i32 [ %29, %25 ], [ -1, %12 ], [ -1, %30 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  store i32 %34, ptr %2, align 4
  br label %35

35:                                               ; preds = %33, %10
  %36 = inttoptr i32 %8 to ptr
  br label %37

37:                                               ; preds = %35, %7, %5
  %38 = phi ptr [ %36, %35 ], [ null, %5 ], [ null, %7 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gen_pool_dma_alloc_align(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.genpool_data_align, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 %3, ptr %5, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %4
  %8 = call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull @gen_pool_first_fit_align, ptr noundef nonnull %5, ptr noundef null) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %2, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %13 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 1
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %33, label %16

16:                                               ; preds = %30, %12
  %17 = phi ptr [ %31, %30 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.gen_pool_chunk, ptr %17, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %8, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.gen_pool_chunk, ptr %17, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %23, %8
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.gen_pool_chunk, ptr %17, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %8, %19
  %29 = add i32 %28, %27
  br label %33

30:                                               ; preds = %21, %16
  %31 = load volatile ptr, ptr %17, align 4
  %32 = icmp eq ptr %31, %13
  br i1 %32, label %33, label %16

33:                                               ; preds = %30, %25, %12
  %34 = phi i32 [ %29, %25 ], [ -1, %12 ], [ -1, %30 ]
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  store i32 %34, ptr %2, align 4
  br label %35

35:                                               ; preds = %33, %10
  %36 = inttoptr i32 %8 to ptr
  br label %37

37:                                               ; preds = %35, %7, %4
  %38 = phi ptr [ %36, %35 ], [ null, %4 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret ptr %38
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gen_pool_first_fit_align(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.gen_pool, ptr %5, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %4, align 4
  %11 = shl nuw i32 1, %9
  %12 = add i32 %10, -1
  %13 = add i32 %12, %11
  %14 = lshr i32 %13, %9
  %15 = add i32 %14, -1
  %16 = and i32 %12, %6
  %17 = lshr i32 %16, %9
  %18 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %15, i32 noundef %17) #10
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gen_pool_dma_zalloc(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %9, ptr noundef %7, ptr noundef null) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %39, label %12

12:                                               ; preds = %5
  %13 = icmp eq ptr %2, null
  br i1 %13, label %37, label %14

14:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %15 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 1
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %35, label %18

18:                                               ; preds = %32, %14
  %19 = phi ptr [ %33, %32 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.gen_pool_chunk, ptr %19, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %10, %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.gen_pool_chunk, ptr %19, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, %10
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.gen_pool_chunk, ptr %19, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %10, %21
  %31 = add i32 %30, %29
  br label %35

32:                                               ; preds = %23, %18
  %33 = load volatile ptr, ptr %19, align 4
  %34 = icmp eq ptr %33, %15
  br i1 %34, label %35, label %18

35:                                               ; preds = %32, %27, %14
  %36 = phi i32 [ %31, %27 ], [ -1, %14 ], [ -1, %32 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  store i32 %36, ptr %2, align 4
  br label %37

37:                                               ; preds = %35, %12
  %38 = inttoptr i32 %10 to ptr
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %38, i8 0, i32 %1, i1 false) #10
  br label %39

39:                                               ; preds = %37, %5, %3
  %40 = phi ptr [ %38, %37 ], [ null, %3 ], [ null, %5 ]
  ret ptr %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gen_pool_dma_zalloc_algo(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, ptr nocapture noundef readonly %3, ptr noundef %4) #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef null) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %2, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %13 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 1
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %33, label %16

16:                                               ; preds = %30, %12
  %17 = phi ptr [ %31, %30 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.gen_pool_chunk, ptr %17, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %8, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.gen_pool_chunk, ptr %17, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %23, %8
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.gen_pool_chunk, ptr %17, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %8, %19
  %29 = add i32 %28, %27
  br label %33

30:                                               ; preds = %21, %16
  %31 = load volatile ptr, ptr %17, align 4
  %32 = icmp eq ptr %31, %13
  br i1 %32, label %33, label %16

33:                                               ; preds = %30, %25, %12
  %34 = phi i32 [ %29, %25 ], [ -1, %12 ], [ -1, %30 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  store i32 %34, ptr %2, align 4
  br label %35

35:                                               ; preds = %33, %10
  %36 = inttoptr i32 %8 to ptr
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %36, i8 0, i32 %1, i1 false)
  br label %37

37:                                               ; preds = %35, %7, %5
  %38 = phi ptr [ %36, %35 ], [ null, %5 ], [ null, %7 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gen_pool_dma_zalloc_align(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.genpool_data_align, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 %3, ptr %5, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %4
  %8 = call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull @gen_pool_first_fit_align, ptr noundef nonnull %5, ptr noundef null) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %2, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %13 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 1
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %33, label %16

16:                                               ; preds = %30, %12
  %17 = phi ptr [ %31, %30 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.gen_pool_chunk, ptr %17, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %8, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.gen_pool_chunk, ptr %17, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %23, %8
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.gen_pool_chunk, ptr %17, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %8, %19
  %29 = add i32 %28, %27
  br label %33

30:                                               ; preds = %21, %16
  %31 = load volatile ptr, ptr %17, align 4
  %32 = icmp eq ptr %31, %13
  br i1 %32, label %33, label %16

33:                                               ; preds = %30, %25, %12
  %34 = phi i32 [ %29, %25 ], [ -1, %12 ], [ -1, %30 ]
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  store i32 %34, ptr %2, align 4
  br label %35

35:                                               ; preds = %33, %10
  %36 = inttoptr i32 %8 to ptr
  call void @llvm.memset.p0.i32(ptr nonnull align 1 %36, i8 0, i32 %1, i1 false) #10
  br label %37

37:                                               ; preds = %35, %7, %4
  %38 = phi ptr [ %36, %35 ], [ null, %4 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gen_pool_free_owner(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq ptr %3, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  store ptr null, ptr %3, align 4
  br label %9

9:                                                ; preds = %8, %4
  %10 = shl nuw i32 1, %6
  %11 = add i32 %2, -1
  %12 = add i32 %11, %10
  %13 = lshr i32 %12, %6
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %14 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 1
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %48, label %17

17:                                               ; preds = %45, %9
  %18 = phi ptr [ %46, %45 ], [ %15, %9 ]
  %19 = getelementptr inbounds %struct.gen_pool_chunk, ptr %18, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, %1
  br i1 %21, label %45, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.gen_pool_chunk, ptr %18, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %24, %1
  br i1 %25, label %45, label %26

26:                                               ; preds = %22
  %27 = add i32 %11, %1
  %28 = icmp ugt i32 %27, %24
  br i1 %28, label %29, label %30, !prof !8

29:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/genalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 505, 0\0A.popsection", ""() #10, !srcloc !30
  unreachable

30:                                               ; preds = %26
  %31 = sub i32 %1, %20
  %32 = lshr i32 %31, %6
  %33 = getelementptr inbounds %struct.gen_pool_chunk, ptr %18, i32 0, i32 6
  %34 = tail call fastcc i32 @bitmap_clear_ll(ptr noundef %33, i32 noundef %32, i32 noundef %13)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36, !prof !23

36:                                               ; preds = %30
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/genalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 508, 0\0A.popsection", ""() #10, !srcloc !31
  unreachable

37:                                               ; preds = %30
  %38 = shl i32 %13, %6
  %39 = getelementptr inbounds %struct.gen_pool_chunk, ptr %18, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #10, !srcloc !20
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 %38, ptr elementtype(i32) %39) #10, !srcloc !32
  br i1 %7, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.gen_pool_chunk, ptr %18, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  store ptr %43, ptr %3, align 4
  br label %44

44:                                               ; preds = %41, %37
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  ret void

45:                                               ; preds = %22, %17
  %46 = load volatile ptr, ptr %18, align 4
  %47 = icmp eq ptr %46, %14
  br i1 %47, label %48, label %17

48:                                               ; preds = %45, %9
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/genalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 518, 0\0A.popsection", ""() #10, !srcloc !33
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gen_pool_for_each_chunk(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %4 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 1
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %11, label %7

7:                                                ; preds = %7, %3
  %8 = phi ptr [ %9, %7 ], [ %5, %3 ]
  tail call void %1(ptr noundef %0, ptr noundef %8, ptr noundef %2) #10
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %4
  br i1 %10, label %11, label %7

11:                                               ; preds = %7, %3
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @gen_pool_has_addr(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = add i32 %1, -1
  %5 = add i32 %4, %2
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %6 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 1
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %23, label %9

9:                                                ; preds = %20, %3
  %10 = phi ptr [ %21, %20 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.gen_pool_chunk, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.gen_pool_chunk, ptr %10, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, %1
  %18 = icmp ugt i32 %5, %16
  %19 = or i1 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %9
  %21 = load volatile ptr, ptr %10, align 4
  %22 = icmp eq ptr %21, %6
  br i1 %22, label %23, label %9

23:                                               ; preds = %20, %14, %3
  %24 = phi i1 [ false, %3 ], [ true, %14 ], [ false, %20 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  ret i1 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gen_pool_avail(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %2 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %11, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %10, %5 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.gen_pool_chunk, ptr %6, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = add i32 %9, %7
  %11 = load volatile ptr, ptr %6, align 4
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %1
  %14 = phi i32 [ 0, %1 ], [ %10, %5 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gen_pool_size(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %2 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %17, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %15, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %14, %5 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.gen_pool_chunk, ptr %6, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.gen_pool_chunk, ptr %6, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %7, 1
  %13 = add i32 %12, %9
  %14 = sub i32 %13, %11
  %15 = load volatile ptr, ptr %6, align 4
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %5

17:                                               ; preds = %5, %1
  %18 = phi i32 [ 0, %1 ], [ %14, %5 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gen_pool_set_algo(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %4 = icmp eq ptr %1, null
  %5 = select i1 %4, ptr @gen_pool_first_fit, ptr %1
  %6 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 3
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 4
  store ptr %2, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gen_pool_fixed_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i32 %6) #0 {
  %8 = getelementptr inbounds %struct.gen_pool, ptr %5, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %4, align 4
  %11 = shl nsw i32 -1, %9
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15, !prof !23

15:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 706, i32 noundef 9, ptr noundef null) #10
  br label %22

16:                                               ; preds = %7
  %17 = lshr i32 %10, %9
  %18 = add i32 %17, %2
  %19 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %0, i32 noundef %1, i32 noundef %18, i32 noundef %3, i32 noundef 0, i32 noundef 0) #10
  %20 = icmp eq i32 %19, %17
  %21 = select i1 %20, i32 %19, i32 %1
  br label %22

22:                                               ; preds = %16, %15
  %23 = phi i32 [ %1, %15 ], [ %21, %16 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gen_pool_first_fit_order_align(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture readnone %4, ptr nocapture readnone %5, i32 %6) #0 {
  %8 = add i32 %3, -1
  %9 = icmp eq i32 %8, 0
  %10 = tail call i32 @llvm.ctlz.i32(i32 %8, i1 false) #10, !range !34
  %11 = sub nuw nsw i32 32, %10
  %12 = shl nsw i32 -1, %11
  %13 = xor i32 %12, -1
  %14 = select i1 %9, i32 0, i32 %13
  %15 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %14, i32 noundef 0) #10
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gen_pool_best_fit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture readnone %4, ptr nocapture readnone %5, i32 %6) #0 {
  %8 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0) #10
  %9 = icmp ult i32 %8, %1
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = add i32 %1, 1
  br label %12

12:                                               ; preds = %22, %10
  %13 = phi i32 [ %26, %22 ], [ %8, %10 ]
  %14 = phi i32 [ %24, %22 ], [ %11, %10 ]
  %15 = phi i32 [ %23, %22 ], [ %1, %10 ]
  %16 = add i32 %13, %3
  %17 = tail call i32 @_find_next_bit_le(ptr noundef %0, i32 noundef %1, i32 noundef %16) #10
  %18 = sub i32 %17, %13
  %19 = icmp ult i32 %18, %14
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = icmp eq i32 %18, %3
  br i1 %21, label %28, label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %13, %20 ], [ %15, %12 ]
  %24 = phi i32 [ %18, %20 ], [ %14, %12 ]
  %25 = add i32 %17, 1
  %26 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %0, i32 noundef %1, i32 noundef %25, i32 noundef %3, i32 noundef 0, i32 noundef 0) #10
  %27 = icmp ult i32 %26, %1
  br i1 %27, label %12, label %28

28:                                               ; preds = %22, %20, %7
  %29 = phi i32 [ %1, %7 ], [ %13, %20 ], [ %23, %22 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gen_pool_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @devres_find(ptr noundef %0, ptr noundef nonnull @devm_gen_pool_release, ptr noundef nonnull @devm_gen_pool_match, ptr noundef %1) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 4
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_gen_pool_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.gen_pool, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gen_pool, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %28, label %9

9:                                                ; preds = %26, %2
  %10 = phi ptr [ %11, %26 ], [ %7, %2 ]
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  store volatile ptr %11, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  %15 = getelementptr inbounds %struct.gen_pool_chunk, ptr %10, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.gen_pool_chunk, ptr %10, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %16, 1
  %20 = sub i32 %19, %18
  %21 = lshr i32 %20, %5
  %22 = getelementptr inbounds %struct.gen_pool_chunk, ptr %10, i32 0, i32 6
  %23 = tail call i32 @_find_first_bit_le(ptr noundef %22, i32 noundef %21) #10
  %24 = icmp ult i32 %23, %21
  br i1 %24, label %25, label %26, !prof !8

25:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/genalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 255, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

26:                                               ; preds = %9
  tail call void @vfree(ptr noundef %10) #10
  %27 = icmp eq ptr %11, %6
  br i1 %27, label %28, label %9

28:                                               ; preds = %26, %2
  %29 = getelementptr inbounds %struct.gen_pool, ptr %3, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  tail call void @kfree_const(ptr noundef %30) #10
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @devm_gen_pool_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #5 {
  %4 = icmp eq ptr %2, null
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.gen_pool, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %4, label %9, label %10

9:                                                ; preds = %3
  br i1 %8, label %16, label %11

10:                                               ; preds = %3
  br i1 %8, label %11, label %12

11:                                               ; preds = %10, %9
  br label %16

12:                                               ; preds = %10
  %13 = tail call i32 @strcmp(ptr noundef nonnull %7, ptr noundef nonnull %2)
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %12, %11, %9
  %17 = phi i32 [ %15, %12 ], [ 0, %11 ], [ 1, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_gen_pool_create(ptr noundef %0, i32 noundef %1, i32 %2, ptr noundef %3) #0 {
  %5 = tail call ptr @devres_find(ptr noundef %0, ptr noundef nonnull @devm_gen_pool_release, ptr noundef nonnull @devm_gen_pool_match, ptr noundef %3) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %7, %4
  %11 = icmp eq ptr %3, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @kstrdup_const(ptr noundef nonnull %3, i32 noundef 3264) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %12, %10
  %16 = phi ptr [ %13, %12 ], [ null, %10 ]
  %17 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_gen_pool_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 28) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  store i32 0, ptr %21, align 8
  %24 = getelementptr inbounds %struct.gen_pool, ptr %21, i32 0, i32 1
  store volatile ptr %24, ptr %24, align 4
  %25 = getelementptr inbounds %struct.gen_pool, ptr %21, i32 0, i32 1, i32 1
  store ptr %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.gen_pool, ptr %21, i32 0, i32 2
  store i32 %1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.gen_pool, ptr %21, i32 0, i32 3
  store ptr @gen_pool_first_fit, ptr %27, align 8
  %28 = getelementptr inbounds %struct.gen_pool, ptr %21, i32 0, i32 4
  store ptr null, ptr %28, align 4
  %29 = getelementptr inbounds %struct.gen_pool, ptr %21, i32 0, i32 5
  store ptr %21, ptr %17, align 4
  store ptr %16, ptr %29, align 8
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %17) #10
  br label %32

30:                                               ; preds = %19
  tail call void @devres_free(ptr noundef nonnull %17) #10
  br label %31

31:                                               ; preds = %30, %15
  tail call void @kfree_const(ptr noundef %16) #10
  br label %32

32:                                               ; preds = %31, %23, %12, %7
  %33 = phi ptr [ %21, %23 ], [ inttoptr (i32 -12 to ptr), %31 ], [ inttoptr (i32 -22 to ptr), %7 ], [ inttoptr (i32 -12 to ptr), %12 ]
  ret ptr %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_gen_pool_get(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #10, !annotation !35
  %6 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #10
  %7 = icmp ne i32 %6, 0
  %8 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #10
  %9 = icmp eq ptr %8, null
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %35, label %11

11:                                               ; preds = %3
  %12 = call ptr @of_find_device_by_node(ptr noundef nonnull %8) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = call ptr @of_get_parent(ptr noundef nonnull %8) #10
  %16 = call ptr @of_find_device_by_node(ptr noundef %15) #10
  call void @of_node_put(ptr noundef %15) #10
  %17 = call i32 @of_property_read_string(ptr noundef nonnull %8, ptr noundef nonnull @.str.2, ptr noundef nonnull %5) #10
  %18 = load ptr, ptr %5, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load ptr, ptr %8, align 4
  store ptr %21, ptr %5, align 4
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi ptr [ %18, %14 ], [ %21, %20 ]
  %24 = icmp eq ptr %16, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %22, %11
  %26 = phi ptr [ %23, %22 ], [ null, %11 ]
  %27 = phi ptr [ %16, %22 ], [ %12, %11 ]
  %28 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  %29 = call ptr @devres_find(ptr noundef %28, ptr noundef nonnull @devm_gen_pool_release, ptr noundef nonnull @devm_gen_pool_match, ptr noundef %26) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %29, align 4
  br label %33

33:                                               ; preds = %31, %25, %22
  %34 = phi ptr [ null, %22 ], [ %32, %31 ], [ null, %25 ]
  call void @of_node_put(ptr noundef nonnull %8) #10
  br label %35

35:                                               ; preds = %33, %3
  %36 = phi ptr [ %34, %33 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

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
!9 = !{i64 2150137578}
!10 = !{i64 2148949378}
!11 = !{i64 2148945202}
!12 = !{i64 2148945277, i64 2148945304, i64 2148945351, i64 2148945373, i64 2148945401, i64 2148945421}
!13 = !{i64 2148972381}
!14 = !{i64 2149348150}
!15 = !{i64 2149348367}
!16 = !{i64 2151746877, i64 2151747356, i64 2151746914, i64 2151746970, i64 2151747004, i64 2151747028, i64 2151747069, i64 2151747090, i64 2151747118, i64 2151747152}
!17 = !{i64 2151696589}
!18 = !{i64 2151696431}
!19 = !{i64 2151697538}
!20 = !{i64 780774, i64 2148270745, i64 2148270771, i64 2148270818, i64 2148270840, i64 2148270868, i64 2148270888}
!21 = !{i64 792148, i64 792169, i64 792192, i64 792211, i64 792230}
!22 = !{i64 2151697931}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 2151785552, i64 2151786031, i64 2151785589, i64 2151785645, i64 2151785679, i64 2151785703, i64 2151785744, i64 2151785765, i64 2151785793, i64 2151785827}
!25 = !{i64 2148284517, i64 2148284543, i64 2148284572, i64 2148284606, i64 2148284637, i64 2148284660}
!26 = !{i64 2151698183}
!27 = !{i64 2151698025}
!28 = !{i64 2151699147}
!29 = !{i64 2151699543}
!30 = !{i64 2151836716, i64 2151837195, i64 2151836753, i64 2151836809, i64 2151836843, i64 2151836867, i64 2151836908, i64 2151836929, i64 2151836957, i64 2151836991}
!31 = !{i64 2151837705, i64 2151838184, i64 2151837742, i64 2151837798, i64 2151837832, i64 2151837856, i64 2151837897, i64 2151837918, i64 2151837946, i64 2151837980}
!32 = !{i64 2148282160, i64 2148282186, i64 2148282215, i64 2148282249, i64 2148282280, i64 2148282303}
!33 = !{i64 2151838604, i64 2151839083, i64 2151838641, i64 2151838697, i64 2151838731, i64 2151838755, i64 2151838796, i64 2151838817, i64 2151838845, i64 2151838879}
!34 = !{i32 0, i32 33}
!35 = !{!"auto-init"}
