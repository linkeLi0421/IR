; ModuleID = '/llk/IR/arch/arm/mm/mmu.c_pt.bc'
source_filename = "../arch/arm/mm/mmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_empty_zero_page:\09\09\09\09\09"
module asm "\09.asciz \09\22empty_zero_page\22\09\09\09\09\09"
module asm "__kstrtabns_empty_zero_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pgprot_user:\09\09\09\09\09"
module asm "\09.asciz \09\22pgprot_user\22\09\09\09\09\09"
module asm "__kstrtabns_pgprot_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pgprot_kernel:\09\09\09\09\09"
module asm "\09.asciz \09\22pgprot_kernel\22\09\09\09\09\09"
module asm "__kstrtabns_pgprot_kernel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_mem_type:\09\09\09\09\09"
module asm "\09.asciz \09\22get_mem_type\22\09\09\09\09\09"
module asm "__kstrtabns_get_mem_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phys_mem_access_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22phys_mem_access_prot\22\09\09\09\09\09"
module asm "__kstrtabns_phys_mem_access_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cachepolicy = type { [16 x i8], i32, i32, i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.mem_type = type { i32, i32, i32, i32, i32 }
%struct.mm_struct = type { %struct.anon.7, [0 x i32] }
%struct.anon.7 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.memblock = type { i8, i32, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i32, i32, i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.map_desc = type { i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon, %union.anon.64, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.vm_struct = type { ptr, ptr, i32, i32, ptr, i32, i32, ptr }
%struct.static_vm = type { %struct.vm_struct, %struct.list_head }
%struct.memblock_region = type { i32, i32, i32 }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@empty_zero_page = dso_local global ptr null, align 4
@__kstrtab_empty_zero_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_empty_zero_page = external dso_local constant [0 x i8], align 1
@__ksymtab_empty_zero_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @empty_zero_page to i32), ptr @__kstrtab_empty_zero_page, ptr @__kstrtabns_empty_zero_page }, section "___ksymtab+empty_zero_page", align 4
@user_pmd_table = dso_local local_unnamed_addr global i32 49, align 4
@pgprot_user = dso_local global i32 0, align 4
@__kstrtab_pgprot_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_pgprot_user = external dso_local constant [0 x i8], align 1
@__ksymtab_pgprot_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pgprot_user to i32), ptr @__kstrtab_pgprot_user, ptr @__kstrtabns_pgprot_user }, section "___ksymtab+pgprot_user", align 4
@pgprot_kernel = dso_local global i32 0, align 4
@__kstrtab_pgprot_kernel = external dso_local constant [0 x i8], align 1
@__kstrtabns_pgprot_kernel = external dso_local constant [0 x i8], align 1
@__ksymtab_pgprot_kernel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pgprot_kernel to i32), ptr @__kstrtab_pgprot_kernel, ptr @__kstrtabns_pgprot_kernel }, section "___ksymtab+pgprot_kernel", align 4
@initial_pmd_value = internal unnamed_addr global i32 0, section ".init.data", align 4
@cache_policies = internal global [5 x %struct.cachepolicy] [%struct.cachepolicy { [16 x i8] c"uncached\00\00\00\00\00\00\00\00", i32 12, i32 0, i32 0 }, %struct.cachepolicy { [16 x i8] c"buffered\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 4 }, %struct.cachepolicy { [16 x i8] c"writethrough\00\00\00\00", i32 0, i32 8, i32 8 }, %struct.cachepolicy { [16 x i8] c"writeback\00\00\00\00\00\00\00", i32 0, i32 12, i32 12 }, %struct.cachepolicy { [16 x i8] c"writealloc\00\00\00\00\00\00", i32 0, i32 4108, i32 28 }], section ".init.data", align 4
@cachepolicy = internal unnamed_addr global i32 3, section ".init.data", align 4
@.str = private unnamed_addr constant [38 x i8] c"\013ERROR: could not find cache policy\0A\00", align 1
@__setup_str_early_cachepolicy = internal constant [12 x i8] c"cachepolicy\00", section ".init.rodata", align 1
@__setup_early_cachepolicy = internal global %struct.obs_kernel_param { ptr @__setup_str_early_cachepolicy, ptr @early_cachepolicy, i32 1 }, section ".init.setup", align 4
@__setup_str_early_nocache = internal constant [8 x i8] c"nocache\00", section ".init.rodata", align 1
@__setup_early_nocache = internal global %struct.obs_kernel_param { ptr @__setup_str_early_nocache, ptr @early_nocache, i32 1 }, section ".init.setup", align 4
@__setup_str_early_nowrite = internal constant [5 x i8] c"nowb\00", section ".init.rodata", align 1
@__setup_early_nowrite = internal global %struct.obs_kernel_param { ptr @__setup_str_early_nowrite, ptr @early_nowrite, i32 1 }, section ".init.setup", align 4
@__setup_str_early_ecc = internal constant [4 x i8] c"ecc\00", section ".init.rodata", align 1
@__setup_early_ecc = internal global %struct.obs_kernel_param { ptr @__setup_str_early_ecc, ptr @early_ecc, i32 1 }, section ".init.setup", align 4
@mem_types = internal global [17 x %struct.mem_type] [%struct.mem_type { i32 1619, i32 0, i32 1, i32 66562, i32 2 }, %struct.mem_type { i32 627, i32 0, i32 1, i32 1026, i32 2 }, %struct.mem_type { i32 623, i32 0, i32 1, i32 1038, i32 2 }, %struct.mem_type { i32 615, i32 0, i32 1, i32 1026, i32 2 }, %struct.mem_type { i32 579, i32 0, i32 1, i32 18, i32 2 }, %struct.mem_type { i32 0, i32 0, i32 0, i32 18, i32 0 }, %struct.mem_type { i32 0, i32 0, i32 0, i32 4122, i32 0 }, %struct.mem_type { i32 195, i32 0, i32 1, i32 0, i32 3 }, %struct.mem_type { i32 451, i32 0, i32 1, i32 0, i32 3 }, %struct.mem_type { i32 67, i32 0, i32 1, i32 1026, i32 0 }, %struct.mem_type { i32 579, i32 0, i32 1, i32 1026, i32 0 }, %struct.mem_type { i32 0, i32 0, i32 0, i32 2, i32 0 }, %struct.mem_type { i32 71, i32 0, i32 1, i32 1026, i32 0 }, %struct.mem_type { i32 579, i32 0, i32 1, i32 18, i32 0 }, %struct.mem_type { i32 67, i32 0, i32 1, i32 0, i32 0 }, %struct.mem_type { i32 579, i32 0, i32 1, i32 66578, i32 0 }, %struct.mem_type { i32 579, i32 0, i32 1, i32 0, i32 0 }], section ".data..ro_after_init", align 4
@__kstrtab_get_mem_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_mem_type = external dso_local constant [0 x i8], align 1
@__ksymtab_get_mem_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_mem_type to i32), ptr @__kstrtab_get_mem_type, ptr @__kstrtabns_get_mem_type }, section "___ksymtab+get_mem_type", align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@bm_pte = internal global [1024 x i32] zeroinitializer, section ".init.data", align 4096
@pte_offset_fixmap = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"arch/arm/mm/mmu.c\00", align 1
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@__kstrtab_phys_mem_access_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns_phys_mem_access_prot = external dso_local constant [0 x i8], align 1
@__ksymtab_phys_mem_access_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phys_mem_access_prot to i32), ptr @__kstrtab_phys_mem_access_prot, ptr @__kstrtabns_phys_mem_access_prot }, section "___ksymtab+phys_mem_access_prot", align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"%s: Failed to allocate %zu bytes align=0x%zx\0A\00", align 1
@__func__.iotable_init = private unnamed_addr constant [13 x i8] c"iotable_init\00", align 1
@__func__.vm_reserve_area_early = private unnamed_addr constant [22 x i8] c"vm_reserve_area_early\00", align 1
@__setup_str_early_vmalloc = internal constant [8 x i8] c"vmalloc\00", section ".init.rodata", align 1
@__setup_early_vmalloc = internal global %struct.obs_kernel_param { ptr @__setup_str_early_vmalloc, ptr @early_vmalloc, i32 1 }, section ".init.setup", align 4
@arm_lowmem_limit = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@vmalloc_size = internal unnamed_addr global i32 251658240, section ".init.data", align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@memblock = external dso_local global %struct.memblock, align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@swapper_pg_dir = external dso_local global [2048 x [2 x i32]], align 4
@top_pmd = dso_local local_unnamed_addr global ptr null, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"\013ERROR: unknown or unsupported cache policy\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"\014Only cachepolicy=%s supported on ARMv6 and later\0A\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"buffered\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"\014nocache is deprecated; use cachepolicy=%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"uncached\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"\014nowb is deprecated; use cachepolicy=%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@ecc_mask = internal unnamed_addr global i1 false, section ".init.data", align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.13 = private unnamed_addr constant [77 x i8] c"\014BUG: map for 0x%08llx at 0x%08lx can not be mapped using pages, ignoring.\0A\00", align 1
@.str.14 = private unnamed_addr constant [73 x i8] c"\013MM: CPU does not support supersection mapping for 0x%08llx at 0x%08lx\0A\00", align 1
@.str.15 = private unnamed_addr constant [70 x i8] c"\013MM: invalid domain in supersection mapping for 0x%08llx at 0x%08lx\0A\00", align 1
@.str.16 = private unnamed_addr constant [71 x i8] c"\013MM: cannot create mapping for 0x%08llx at 0x%08lx invalid alignment\0A\00", align 1
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@.str.17 = private unnamed_addr constant [68 x i8] c"\014BUG: not creating mapping for 0x%08llx at 0x%08lx in user region\0A\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"\014BUG: mapping for 0x%08llx at 0x%08lx out of vmalloc space\0A\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"\014vmalloc area is too small, limiting to %luMiB\0A\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"\014vmalloc area is too big, limiting to %luMiB\0A\00", align 1
@kernel_sec_start = external dso_local local_unnamed_addr global i64, align 8
@kernel_sec_end = external dso_local local_unnamed_addr global i64, align 8
@__init_end = external dso_local global [0 x i8], align 1
@__atags_pointer = external dso_local local_unnamed_addr global i32, align 4
@static_vmlist = external dso_local global %struct.list_head, align 4
@pkmap_page_table = external dso_local local_unnamed_addr global ptr, align 4
@.str.21 = private unnamed_addr constant [46 x i8] c"%s: Failed to allocate %lu bytes align=0x%lx\0A\00", align 1
@__func__.early_alloc = private unnamed_addr constant [12 x i8] c"early_alloc\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"\014Forcing write-allocate cache policy for SMP\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"\014Forcing shared mappings for SMP\0A\00", align 1
@protection_map = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.24 = private unnamed_addr constant [34 x i8] c"\016Memory policy: %sData cache %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"ECC enabled, \00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@smp_on_up = external dso_local local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [69 x i8] c"\012Physical address space modification is only to support Keystone2.\0A\00", align 1
@.str.28 = private unnamed_addr constant [70 x i8] c"\012Please enable ARM_LPAE and ARM_PATCH_PHYS_VIRT support to use this\0A\00", align 1
@.str.29 = private unnamed_addr constant [56 x i8] c"\012feature. Your kernel may crash now, have a good day.\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_empty_zero_page, ptr @__ksymtab_get_mem_type, ptr @__ksymtab_pgprot_kernel, ptr @__ksymtab_pgprot_user, ptr @__ksymtab_phys_mem_access_prot, ptr @__setup_early_cachepolicy, ptr @__setup_early_ecc, ptr @__setup_early_nocache, ptr @__setup_early_nowrite, ptr @__setup_early_vmalloc], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @init_default_cache_policy(i32 noundef %0) local_unnamed_addr #0 section ".init.text" {
  store i32 %0, ptr @initial_pmd_value, align 4
  %2 = and i32 %0, 4108
  br label %3

3:                                                ; preds = %9, %1
  %4 = phi i32 [ 0, %1 ], [ %10, %9 ]
  %5 = getelementptr [5 x %struct.cachepolicy], ptr @cache_policies, i32 0, i32 %4, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, %2
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  store i32 %4, ptr @cachepolicy, align 4
  br label %14

9:                                                ; preds = %3
  %10 = add nuw nsw i32 %4, 1
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %3

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @early_cachepolicy(ptr nocapture noundef readonly %0) #0 section ".init.text" {
  br label %2

2:                                                ; preds = %8, %1
  %3 = phi i32 [ 0, %1 ], [ %9, %8 ]
  %4 = getelementptr [5 x %struct.cachepolicy], ptr @cache_policies, i32 0, i32 %3
  %5 = tail call i32 @strlen(ptr noundef %4)
  %6 = tail call i32 @bcmp(ptr %0, ptr %4, i32 %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = add nuw nsw i32 %3, 1
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %11, label %2

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #15
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi i32 [ -1, %11 ], [ %3, %2 ]
  %15 = tail call i32 @cpu_architecture() #16
  %16 = icmp sgt i32 %15, 7
  %17 = load i32, ptr @cachepolicy, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %16, label %19, label %23

19:                                               ; preds = %13
  br i1 %18, label %29, label %20

20:                                               ; preds = %19
  %21 = getelementptr [5 x %struct.cachepolicy], ptr @cache_policies, i32 0, i32 %17
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %21) #15
  br label %29

23:                                               ; preds = %13
  br i1 %18, label %29, label %24

24:                                               ; preds = %23
  %25 = getelementptr [5 x %struct.cachepolicy], ptr @cache_policies, i32 0, i32 %14, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @__clear_cr(i32 noundef %26) #17
  store i32 %14, ptr @cachepolicy, align 4
  %28 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %28() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 0\09@ set CR", "r,~{cc}"(i32 %27) #17, !srcloc !8
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !9
  br label %29

29:                                               ; preds = %24, %23, %20, %19
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @early_nocache(ptr nocapture noundef readnone %0) #0 section ".init.text" {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7) #15
  %3 = tail call i32 @early_cachepolicy(ptr noundef nonnull @.str.7) #18
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @early_nowrite(ptr nocapture noundef readnone %0) #0 section ".init.text" {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9) #15
  %3 = tail call i32 @early_cachepolicy(ptr noundef nonnull @.str.9) #18
  ret i32 0
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @early_ecc(ptr nocapture noundef readonly %0) #3 section ".init.text" {
  %2 = tail call i32 @bcmp(ptr noundef dereferenceable(2) %0, ptr noundef nonnull dereferenceable(2) @.str.11, i32 2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %0, ptr noundef nonnull dereferenceable(3) @.str.12, i32 3)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %1
  store i1 %3, ptr @ecc_mask, align 4
  br label %8

8:                                                ; preds = %7, %4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @get_mem_type(i32 noundef %0) #4 {
  %2 = icmp ult i32 %0, 17
  %3 = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %0
  %4 = select i1 %2, ptr %3, ptr null
  ret ptr %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @early_fixmap_init() local_unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %2 = getelementptr [2 x i32], ptr %1, i32 2047
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @bm_pte to i32), i32 -2130706432, i32 8454144) #19, !srcloc !10
  %4 = add i32 %3, 2048
  %5 = or i32 %4, 17
  store i32 %5, ptr %2, align 4
  %6 = add i32 %5, 1024
  %7 = getelementptr [2 x i32], ptr %1, i32 2047, i32 1
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %2, i32 %8, i32 1073741824) #17, !srcloc !11
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !12
  store ptr @pte_offset_early_fixmap, ptr @pte_offset_fixmap, align 4
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @pte_offset_early_fixmap(ptr nocapture noundef readnone %0, i32 noundef %1) #5 section ".init.text" {
  %3 = lshr i32 %1, 12
  %4 = and i32 %3, 511
  %5 = getelementptr [1024 x i32], ptr @bm_pte, i32 0, i32 %4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__set_fixmap(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = mul i32 %0, -4096
  %5 = add i32 %4, -1052672
  %6 = load ptr, ptr @pte_offset_fixmap, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %8 = lshr i32 %5, 21
  %9 = getelementptr [2 x i32], ptr %7, i32 %8
  %10 = tail call ptr %6(ptr noundef %9, i32 noundef %5) #17, !callees !13
  %11 = icmp ugt i32 %0, 258
  br i1 %11, label %12, label %13, !prof !14

12:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/mmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 393, 0\0A.popsection", ""() #17, !srcloc !15
  unreachable

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  switch i32 %2, label %18 [
    i32 0, label %35
    i32 1619, label %15
  ]

15:                                               ; preds = %13
  %16 = and i32 %1, -4096
  %17 = or i32 %16, %2
  br label %31

18:                                               ; preds = %13
  %19 = load i32, ptr @pgprot_kernel, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22, !prof !14

21:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 397, i32 noundef 9, ptr noundef null) #17
  br label %40

22:                                               ; preds = %18
  br i1 %14, label %35, label %23

23:                                               ; preds = %22
  %24 = and i32 %1, -4096
  %25 = or i32 %24, %2
  %26 = icmp ugt i32 %5, -1090519041
  %27 = and i32 %2, 259
  %28 = icmp ne i32 %27, 259
  %29 = or i1 %26, %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  tail call void @__sync_icache_dcache(i32 noundef %25) #17
  br label %31

31:                                               ; preds = %30, %23, %15
  %32 = phi i32 [ %25, %30 ], [ %25, %23 ], [ %17, %15 ]
  %33 = phi i32 [ 2048, %30 ], [ 0, %23 ], [ 0, %15 ]
  %34 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  tail call void %34(ptr noundef %10, i32 noundef %32, i32 noundef %33) #17
  br label %37

35:                                               ; preds = %22, %13
  %36 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  tail call void %36(ptr noundef %10, i32 noundef 0, i32 noundef 0) #17
  br label %37

37:                                               ; preds = %35, %31
  %38 = load ptr, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 1), align 4
  %39 = add i32 %4, -1048576
  tail call void %38(i32 noundef %5, i32 noundef %39) #17
  br label %40

40:                                               ; preds = %37, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_pte_at(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = icmp ugt i32 %1, -1090519041
  %6 = and i32 %3, 259
  %7 = icmp ne i32 %6, 259
  %8 = or i1 %5, %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @__sync_icache_dcache(i32 noundef %3) #17
  br label %10

10:                                               ; preds = %9, %4
  %11 = phi i32 [ 2048, %9 ], [ 0, %4 ]
  %12 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  tail call void %12(ptr noundef %2, i32 noundef %3, i32 noundef %11) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phys_mem_access_prot(ptr nocapture noundef readonly %0, i32 noundef %1, i32 %2, i32 noundef %3) #6 {
  %5 = tail call i32 @pfn_valid(i32 noundef %1) #17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = and i32 %3, -61
  br label %17

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1052672
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = and i32 %3, -61
  %16 = or i32 %15, 4
  br label %17

17:                                               ; preds = %14, %9, %7
  %18 = phi i32 [ %16, %14 ], [ %8, %7 ], [ %3, %9 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @create_mapping_late(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) local_unnamed_addr #0 section ".init.text" {
  tail call fastcc void @__create_mapping(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @late_alloc, i1 noundef zeroext %2) #18
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @__create_mapping(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i1 noundef zeroext %3) unnamed_addr #0 section ".init.text" {
  %5 = getelementptr inbounds %struct.map_desc, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %6
  %8 = getelementptr inbounds %struct.map_desc, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 1048575
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call fastcc void @create_36bit_mapping(ptr noundef %0, ptr noundef %1, ptr noundef %7, i1 noundef zeroext %3) #18
  br label %53

12:                                               ; preds = %4
  %13 = load i32, ptr %1, align 4
  %14 = and i32 %13, -4096
  %15 = shl nuw i32 %9, 12
  %16 = getelementptr inbounds %struct.map_desc, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %13, 4095
  %19 = add nuw nsw i32 %18, 4095
  %20 = add i32 %19, %17
  %21 = and i32 %20, -4096
  %22 = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %6, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %12
  %26 = or i32 %13, %15
  %27 = or i32 %26, %20
  %28 = and i32 %27, 1044480
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = zext i32 %15 to i64
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i64 noundef %31, i32 noundef %14) #15
  br label %53

33:                                               ; preds = %25, %12
  %34 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = lshr i32 %13, 21
  %37 = getelementptr [2 x i32], ptr %35, i32 %36
  %38 = add i32 %21, %14
  %39 = add i32 %38, -1
  br label %40

40:                                               ; preds = %40, %33
  %41 = phi ptr [ %37, %33 ], [ %51, %40 ]
  %42 = phi i32 [ %15, %33 ], [ %50, %40 ]
  %43 = phi i32 [ %14, %33 ], [ %48, %40 ]
  %44 = add i32 %43, 2097152
  %45 = and i32 %44, -2097152
  %46 = add i32 %45, -1
  %47 = icmp ult i32 %46, %39
  %48 = select i1 %47, i32 %45, i32 %38
  tail call fastcc void @alloc_init_pmd(ptr noundef %41, i32 noundef %43, i32 noundef %48, i32 noundef %42, ptr noundef %7, ptr noundef %2, i1 noundef zeroext %3) #15
  %49 = sub i32 %42, %43
  %50 = add i32 %49, %48
  %51 = getelementptr [2 x i32], ptr %41, i32 1
  %52 = icmp eq i32 %48, %38
  br i1 %52, label %53, label %40

53:                                               ; preds = %40, %30, %11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal ptr @late_alloc(i32 noundef %0) #0 section ".init.text" {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 4096
  %4 = lshr i32 %2, 12
  %5 = tail call i32 @llvm.ctlz.i32(i32 %4, i1 false) #17, !range !16
  %6 = sub nuw nsw i32 32, %5
  %7 = select i1 %3, i32 0, i32 %6
  %8 = tail call i32 @__get_free_pages(i32 noundef 3520, i32 noundef %7) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr @mem_map, align 4
  %12 = add i32 %8, 1073741824
  %13 = lshr i32 %12, 12
  %14 = getelementptr %struct.page, ptr %11, i32 %13, i32 1, i32 0, i32 3
  store i32 0, ptr %14, align 4
  %15 = getelementptr %struct.page, ptr %11, i32 %13, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, -513
  store i32 %17, ptr %15, align 4
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 38, i32 noundef 1) #17
  %18 = inttoptr i32 %8 to ptr
  ret ptr %18

19:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/mmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 706, 0\0A.popsection", ""() #17, !srcloc !17
  unreachable
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @iotable_init(ptr nocapture noundef readonly %0, i32 noundef %1) #0 section ".init.text" {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %39, label %4

4:                                                ; preds = %2
  %5 = mul i32 %1, 40
  %6 = tail call ptr @memblock_alloc_try_nid(i32 noundef %5, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef -1) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.iotable_init, i32 noundef %5, i32 noundef 4) #20
  unreachable

9:                                                ; preds = %9, %4
  %10 = phi ptr [ %35, %9 ], [ %6, %4 ]
  %11 = phi ptr [ %36, %9 ], [ %0, %4 ]
  %12 = phi i32 [ %37, %9 ], [ %1, %4 ]
  tail call fastcc void @create_mapping(ptr noundef %11) #18
  %13 = load i32, ptr %11, align 4
  %14 = and i32 %13, -4096
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.vm_struct, ptr %10, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.map_desc, ptr %11, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %11, align 4
  %20 = and i32 %19, 4095
  %21 = add i32 %18, 4095
  %22 = add i32 %21, %20
  %23 = and i32 %22, -4096
  %24 = getelementptr inbounds %struct.vm_struct, ptr %10, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.map_desc, ptr %11, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %26, 12
  %28 = getelementptr inbounds %struct.vm_struct, ptr %10, i32 0, i32 6
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.vm_struct, ptr %10, i32 0, i32 3
  store i32 1073741825, ptr %29, align 4
  %30 = getelementptr inbounds %struct.map_desc, ptr %11, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 %31, 20
  %33 = or i32 %32, 1073741825
  store i32 %33, ptr %29, align 4
  %34 = getelementptr inbounds %struct.vm_struct, ptr %10, i32 0, i32 7
  store ptr @iotable_init, ptr %34, align 4
  %35 = getelementptr %struct.static_vm, ptr %10, i32 1
  tail call void @add_static_vm_early(ptr noundef %10) #15
  %36 = getelementptr %struct.map_desc, ptr %11, i32 1
  %37 = add i32 %12, -1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %9

39:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @create_mapping(ptr nocapture noundef readonly %0) unnamed_addr #0 section ".init.text" {
  %2 = load i32, ptr %0, align 4
  %3 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #19, !srcloc !18
  %4 = and i32 %3, 8192
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 0, i32 -65536
  %7 = icmp ne i32 %2, %6
  %8 = icmp ult i32 %2, -1090519040
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.map_desc, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 12
  %14 = zext i32 %13 to i64
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i64 noundef %14, i32 noundef %2) #15
  br label %38

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.map_desc, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = add i32 %2, 1073741824
  %21 = icmp ult i32 %20, 1070071808
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %37

23:                                               ; preds = %16
  %24 = load ptr, ptr @high_memory, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = add i32 %25, 8388608
  %27 = and i32 %26, -8388608
  %28 = icmp ult i32 %2, %27
  %29 = icmp ugt i32 %2, -8388609
  %30 = or i1 %29, %28
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.map_desc, ptr %0, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = shl i32 %33, 12
  %35 = zext i32 %34 to i64
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i64 noundef %35, i32 noundef %2) #15
  br label %37

37:                                               ; preds = %31, %23, %16
  tail call fastcc void @__create_mapping(ptr noundef nonnull @init_mm, ptr noundef %0, ptr noundef nonnull @early_alloc, i1 noundef zeroext false) #18
  br label %38

38:                                               ; preds = %37, %10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @add_static_vm_early(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @vm_reserve_area_early(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 section ".init.text" {
  %4 = tail call ptr @memblock_alloc_try_nid(i32 noundef 40, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef -1) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.vm_reserve_area_early, i32 noundef 40, i32 noundef 4) #20
  unreachable

7:                                                ; preds = %3
  %8 = inttoptr i32 %0 to ptr
  %9 = getelementptr inbounds %struct.vm_struct, ptr %4, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.vm_struct, ptr %4, i32 0, i32 2
  store i32 %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.vm_struct, ptr %4, i32 0, i32 3
  store i32 536870913, ptr %11, align 4
  %12 = getelementptr inbounds %struct.vm_struct, ptr %4, i32 0, i32 7
  store ptr %2, ptr %12, align 4
  tail call void @add_static_vm_early(ptr noundef nonnull %4) #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @early_vmalloc(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i64 @memparse(ptr noundef %0, ptr noundef null) #17
  %3 = trunc i64 %2 to i32
  %4 = icmp ult i32 %3, 16777216
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 16) #15
  br label %11

7:                                                ; preds = %1
  %8 = icmp ugt i32 %3, 1023410176
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef 976) #15
  br label %11

11:                                               ; preds = %9, %7, %5
  %12 = phi i32 [ 1023410176, %9 ], [ %3, %7 ], [ 16777216, %5 ]
  store i32 %12, ptr @vmalloc_size, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @adjust_lowmem_bounds() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #17
  store i32 0, ptr %1, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = load i32, ptr @vmalloc_size, align 4
  %5 = zext i32 %4 to i64
  %6 = sub nsw i64 1056964608, %5
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %8 = shl i32 %7, 12
  %9 = zext i32 %8 to i64
  %10 = add nsw i64 %6, %9
  store i64 0, ptr %3, align 8
  call void @__next_mem_range(ptr noundef nonnull %3, i32 noundef -1, i32 noundef 9, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null) #17
  %11 = load i64, ptr %3, align 8
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %23, label %13

13:                                               ; preds = %0
  %14 = load i32, ptr %1, align 4
  %15 = and i32 %14, 2097151
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = add i32 %14, -1
  %19 = or i32 %18, 2097151
  %20 = sub i32 1, %14
  %21 = add i32 %20, %19
  %22 = call i32 @memblock_mark_nomap(i32 noundef %14, i32 noundef %21) #17
  br label %23

23:                                               ; preds = %17, %13, %0
  store i64 0, ptr %3, align 8
  call void @__next_mem_range(ptr noundef nonnull %3, i32 noundef -1, i32 noundef 9, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null) #17
  %24 = load i64, ptr %3, align 8
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %52, label %26

26:                                               ; preds = %47, %23
  %27 = phi i32 [ %49, %47 ], [ 0, %23 ]
  %28 = phi i32 [ %48, %47 ], [ 0, %23 ]
  %29 = load i32, ptr %1, align 4
  %30 = zext i32 %29 to i64
  %31 = icmp ugt i64 %10, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load i32, ptr %2, align 4
  %34 = icmp ugt i32 %33, %27
  %35 = zext i32 %33 to i64
  %36 = call i64 @llvm.umin.i64(i64 %10, i64 %35)
  %37 = trunc i64 %36 to i32
  %38 = select i1 %34, i32 %37, i32 %27
  %39 = icmp eq i32 %28, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = and i32 %29, 2097151
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = and i32 %33, 2097151
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 0, i32 %38
  br label %47

47:                                               ; preds = %43, %40, %32, %26
  %48 = phi i32 [ %28, %32 ], [ %28, %26 ], [ %29, %40 ], [ %46, %43 ]
  %49 = phi i32 [ %38, %32 ], [ %27, %26 ], [ %38, %40 ], [ %38, %43 ]
  call void @__next_mem_range(ptr noundef nonnull %3, i32 noundef -1, i32 noundef 9, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null) #17
  %50 = load i64, ptr %3, align 8
  %51 = icmp eq i64 %50, -1
  br i1 %51, label %52, label %26

52:                                               ; preds = %47, %23
  %53 = phi i32 [ 0, %23 ], [ %48, %47 ]
  %54 = phi i32 [ 0, %23 ], [ %49, %47 ]
  store i32 %54, ptr @arm_lowmem_limit, align 4
  %55 = add i32 %54, -1
  %56 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %55, i32 -2130706432, i32 8454144) #19, !srcloc !20
  %57 = inttoptr i32 %56 to ptr
  %58 = getelementptr i8, ptr %57, i32 1
  store ptr %58, ptr @high_memory, align 4
  %59 = icmp eq i32 %53, 0
  %60 = select i1 %59, i32 %54, i32 %53
  %61 = and i32 %60, -2097152
  call void @memblock_set_current_limit(i32 noundef %61) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__next_mem_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_mark_nomap(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_set_current_limit(i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @arm_mm_memblock_reserve() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @swapper_pg_dir to i32), i32 -2130706432, i32 8454144) #19, !srcloc !10
  %2 = tail call i32 @memblock_reserve(i32 noundef %1, i32 noundef 16384) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @paging_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 section ".init.text" {
  tail call fastcc void @prepare_page_table() #18
  tail call fastcc void @map_lowmem() #18
  %2 = load i32, ptr @arm_lowmem_limit, align 4
  tail call void @memblock_set_current_limit(i32 noundef %2) #17
  tail call fastcc void @map_kernel() #18
  tail call void @dma_contiguous_remap() #17
  tail call fastcc void @early_fixmap_shutdown() #18
  tail call fastcc void @devicemaps_init(ptr noundef %0) #18
  tail call fastcc void @kmap_init() #18
  %3 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %4 = getelementptr [2 x i32], ptr %3, i32 2047
  store ptr %4, ptr @top_pmd, align 4
  %5 = tail call ptr @early_alloc(i32 noundef 4096) #18
  tail call void @bootmem_init() #15
  %6 = load ptr, ptr @mem_map, align 4
  %7 = ptrtoint ptr %5 to i32
  %8 = add i32 %7, 1073741824
  %9 = lshr i32 %8, 12
  %10 = getelementptr %struct.page, ptr %6, i32 %9
  store ptr %10, ptr @empty_zero_page, align 4
  tail call void @__flush_dcache_page(ptr noundef null, ptr noundef %10) #17
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @prepare_page_table() unnamed_addr #0 section ".init.text" {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %11, %1 ]
  %3 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %4 = lshr exact i32 %2, 21
  %5 = getelementptr [2 x i32], ptr %3, i32 %4
  store i32 0, ptr %5, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %7 = getelementptr [2 x i32], ptr %6, i32 %4, i32 1
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %9 = getelementptr [2 x i32], ptr %8, i32 %4
  %10 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %9, i32 %10, i32 1073741824) #17, !srcloc !21
  %11 = add nuw i32 %2, 2097152
  %12 = icmp ult i32 %2, -1092616192
  br i1 %12, label %1, label %13

13:                                               ; preds = %13, %1
  %14 = phi i32 [ %23, %13 ], [ -1090519040, %1 ]
  %15 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %16 = lshr exact i32 %14, 21
  %17 = getelementptr [2 x i32], ptr %15, i32 %16
  store i32 0, ptr %17, align 4
  %18 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %19 = getelementptr [2 x i32], ptr %18, i32 %16, i32 1
  store i32 0, ptr %19, align 4
  %20 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %21 = getelementptr [2 x i32], ptr %20, i32 %16
  %22 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %21, i32 %22, i32 1073741824) #17, !srcloc !21
  %23 = add nuw nsw i32 %14, 2097152
  %24 = icmp ult i32 %14, -1075838976
  br i1 %24, label %13, label %25

25:                                               ; preds = %13
  %26 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.memblock_region, ptr %26, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %27
  %31 = load i32, ptr @arm_lowmem_limit, align 4
  %32 = tail call i32 @llvm.umin.i32(i32 %30, i32 %31)
  %33 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %32, i32 -2130706432, i32 8454144) #19, !srcloc !20
  %34 = load ptr, ptr @high_memory, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = add i32 %35, 8388608
  %37 = and i32 %36, -8388608
  %38 = icmp ult i32 %33, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %39, %25
  %40 = phi i32 [ %49, %39 ], [ %33, %25 ]
  %41 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %42 = lshr i32 %40, 21
  %43 = getelementptr [2 x i32], ptr %41, i32 %42
  store i32 0, ptr %43, align 4
  %44 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %45 = getelementptr [2 x i32], ptr %44, i32 %42, i32 1
  store i32 0, ptr %45, align 4
  %46 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %47 = getelementptr [2 x i32], ptr %46, i32 %42
  %48 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %47, i32 %48, i32 1073741824) #17, !srcloc !21
  %49 = add nuw i32 %40, 2097152
  %50 = load ptr, ptr @high_memory, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = add i32 %51, 8388608
  %53 = and i32 %52, -8388608
  %54 = icmp ult i32 %49, %53
  br i1 %54, label %39, label %55

55:                                               ; preds = %39, %25
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @map_lowmem() unnamed_addr #0 section ".init.text" {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.map_desc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #17
  store i32 0, ptr %1, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store i64 0, ptr %3, align 8
  call void @__next_mem_range(ptr noundef nonnull %3, i32 noundef -1, i32 noundef 9, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null) #17
  %5 = load i64, ptr %3, align 8
  %6 = icmp eq i64 %5, -1
  br i1 %6, label %81, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.map_desc, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.map_desc, ptr %4, i32 0, i32 2
  %10 = getelementptr inbounds %struct.map_desc, ptr %4, i32 0, i32 3
  br label %11

11:                                               ; preds = %73, %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !19
  %12 = load i32, ptr %2, align 4
  %13 = load i32, ptr @arm_lowmem_limit, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 %13, ptr %2, align 4
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32 [ %13, %15 ], [ %12, %11 ]
  %18 = load i32, ptr %1, align 4
  %19 = icmp ult i32 %18, %17
  br i1 %19, label %20, label %72

20:                                               ; preds = %16
  %21 = zext i32 %18 to i64
  %22 = load i64, ptr @kernel_sec_start, align 8
  %23 = icmp ult i64 %22, %21
  %24 = zext i32 %17 to i64
  br i1 %23, label %25, label %28

25:                                               ; preds = %20
  %26 = load i64, ptr @kernel_sec_end, align 8
  %27 = icmp ugt i64 %26, %24
  br i1 %27, label %72, label %56

28:                                               ; preds = %20
  %29 = icmp ugt i64 %22, %24
  br i1 %29, label %62, label %30

30:                                               ; preds = %28
  %31 = icmp ugt i64 %22, %21
  %32 = load i64, ptr @kernel_sec_end, align 8
  %33 = icmp ult i64 %32, %24
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = lshr i32 %18, 12
  store i32 %36, ptr %8, align 4
  %37 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %18, i32 -2130706432, i32 8454144) #19, !srcloc !20
  store i32 %37, ptr %4, align 4
  %38 = trunc i64 %22 to i32
  %39 = sub i32 %38, %18
  store i32 %39, ptr %9, align 4
  store i32 10, ptr %10, align 4
  call fastcc void @create_mapping(ptr noundef nonnull %4) #18
  %40 = load i64, ptr @kernel_sec_end, align 8
  %41 = lshr i64 %40, 12
  %42 = trunc i64 %41 to i32
  store i32 %42, ptr %8, align 4
  %43 = trunc i64 %40 to i32
  %44 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %43, i32 -2130706432, i32 8454144) #19, !srcloc !20
  store i32 %44, ptr %4, align 4
  %45 = load i32, ptr %2, align 4
  %46 = sub i32 %45, %43
  store i32 %46, ptr %9, align 4
  store i32 10, ptr %10, align 4
  call fastcc void @create_mapping(ptr noundef nonnull %4) #18
  br label %72

47:                                               ; preds = %30
  %48 = icmp eq i64 %22, %21
  br i1 %48, label %49, label %51

49:                                               ; preds = %47
  %50 = trunc i64 %32 to i32
  store i32 %50, ptr %1, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %50, %49 ], [ %18, %47 ]
  %53 = icmp eq i64 %32, %24
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  %55 = trunc i64 %22 to i32
  store i32 %55, ptr %2, align 4
  br label %73

56:                                               ; preds = %25
  %57 = icmp ugt i64 %26, %21
  %58 = icmp ult i64 %26, %24
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = trunc i64 %26 to i32
  store i32 %61, ptr %1, align 4
  br label %73

62:                                               ; preds = %56, %28
  %63 = icmp ugt i64 %22, %21
  br i1 %63, label %64, label %73

64:                                               ; preds = %62
  %65 = zext i32 %17 to i64
  %66 = icmp ult i64 %22, %65
  %67 = load i64, ptr @kernel_sec_end, align 8
  %68 = icmp ugt i64 %67, %65
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = trunc i64 %22 to i32
  store i32 %71, ptr %2, align 4
  br label %73

72:                                               ; preds = %35, %25, %16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  br label %81

73:                                               ; preds = %70, %64, %62, %60, %54, %51
  %74 = phi i32 [ %17, %60 ], [ %71, %70 ], [ %17, %64 ], [ %17, %62 ], [ %17, %51 ], [ %55, %54 ]
  %75 = phi i32 [ %61, %60 ], [ %18, %70 ], [ %18, %64 ], [ %18, %62 ], [ %52, %51 ], [ %52, %54 ]
  %76 = lshr i32 %75, 12
  store i32 %76, ptr %8, align 4
  %77 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %75, i32 -2130706432, i32 8454144) #19, !srcloc !20
  store i32 %77, ptr %4, align 4
  %78 = sub i32 %74, %75
  store i32 %78, ptr %9, align 4
  store i32 10, ptr %10, align 4
  call fastcc void @create_mapping(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @__next_mem_range(ptr noundef nonnull %3, i32 noundef -1, i32 noundef 9, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null) #17
  %79 = load i64, ptr %3, align 8
  %80 = icmp eq i64 %79, -1
  br i1 %80, label %81, label %11

81:                                               ; preds = %73, %72, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #17
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @map_kernel() unnamed_addr #0 section ".init.text" {
  %1 = alloca %struct.map_desc, align 4
  %2 = load i64, ptr @kernel_sec_start, align 8
  %3 = trunc i64 %2 to i32
  %4 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @__init_end to i32), i32 -2130706432, i32 8454144) #19, !srcloc !10
  %5 = add i32 %4, -1
  %6 = or i32 %5, 1048575
  %7 = add i32 %6, 1
  %8 = load i64, ptr @kernel_sec_end, align 8
  %9 = trunc i64 %8 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #17
  %10 = lshr i32 %3, 12
  %11 = getelementptr inbounds %struct.map_desc, ptr %1, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %3, i32 -2130706432, i32 8454144) #19, !srcloc !20
  store i32 %12, ptr %1, align 4
  %13 = sub i32 %7, %3
  %14 = getelementptr inbounds %struct.map_desc, ptr %1, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.map_desc, ptr %1, i32 0, i32 3
  store i32 9, ptr %15, align 4
  call fastcc void @create_mapping(ptr noundef nonnull %1) #18
  %16 = icmp eq i32 %7, %9
  br i1 %16, label %21, label %17

17:                                               ; preds = %0
  %18 = lshr exact i32 %7, 12
  store i32 %18, ptr %11, align 4
  %19 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %7, i32 -2130706432, i32 8454144) #19, !srcloc !20
  store i32 %19, ptr %1, align 4
  %20 = sub i32 %9, %7
  store i32 %20, ptr %14, align 4
  store i32 10, ptr %15, align 4
  call fastcc void @create_mapping(ptr noundef nonnull %1) #18
  br label %21

21:                                               ; preds = %17, %0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_contiguous_remap() local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @early_fixmap_shutdown() unnamed_addr #0 section ".init.text" {
  %1 = alloca %struct.map_desc, align 4
  store ptr @pte_offset_late_fixmap, ptr @pte_offset_fixmap, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %3 = getelementptr [2 x i32], ptr %2, i32 2047
  store i32 0, ptr %3, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %5 = getelementptr [2 x i32], ptr %4, i32 2047, i32 1
  store i32 0, ptr %5, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %7 = getelementptr [2 x i32], ptr %6, i32 2047
  %8 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %7, i32 %8, i32 1073741824) #17, !srcloc !21
  %9 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #17, !srcloc !22
  %10 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 -1052672, i32 %10, i32 16) #17, !srcloc !23
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 -1052672, i32 %9, i32 1048576) #17, !srcloc !24
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #17, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #17
  store i32 -1052672, ptr %1, align 4
  %11 = load i32, ptr getelementptr inbounds ([1024 x i32], ptr @bm_pte, i32 0, i32 255), align 4
  %12 = and i32 %11, 60
  %13 = icmp eq i32 %12, 16
  br i1 %13, label %14, label %19

14:                                               ; preds = %0
  %15 = lshr i32 %11, 12
  %16 = getelementptr inbounds %struct.map_desc, ptr %1, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.map_desc, ptr %1, i32 0, i32 3
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.map_desc, ptr %1, i32 0, i32 2
  store i32 4096, ptr %18, align 4
  call fastcc void @create_mapping(ptr noundef nonnull %1) #18
  br label %19

19:                                               ; preds = %14, %0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #17
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @devicemaps_init(ptr nocapture noundef readonly %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca %struct.map_desc, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !19
  %3 = tail call ptr @early_alloc(i32 noundef 8192) #18
  tail call void @early_trap_init(ptr noundef %3) #15
  %4 = load ptr, ptr @high_memory, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = add i32 %5, 8388608
  %7 = and i32 %6, -8388608
  br label %8

8:                                                ; preds = %8, %1
  %9 = phi i32 [ %7, %1 ], [ %18, %8 ]
  %10 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %11 = lshr exact i32 %9, 21
  %12 = getelementptr [2 x i32], ptr %10, i32 %11
  store i32 0, ptr %12, align 4
  %13 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %14 = getelementptr [2 x i32], ptr %13, i32 %11, i32 1
  store i32 0, ptr %14, align 4
  %15 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %16 = getelementptr [2 x i32], ptr %15, i32 %11
  %17 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %16, i32 %17, i32 1073741824) #17, !srcloc !21
  %18 = add i32 %9, 2097152
  %19 = icmp eq i32 %18, -2097152
  br i1 %19, label %20, label %8

20:                                               ; preds = %8
  %21 = load i32, ptr @__atags_pointer, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = lshr i32 %21, 12
  %25 = and i32 %24, 1048320
  %26 = getelementptr inbounds %struct.map_desc, ptr %2, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  store i32 -8388608, ptr %2, align 4
  %27 = getelementptr inbounds %struct.map_desc, ptr %2, i32 0, i32 2
  store i32 2097152, ptr %27, align 4
  %28 = getelementptr inbounds %struct.map_desc, ptr %2, i32 0, i32 3
  store i32 11, ptr %28, align 4
  call fastcc void @create_mapping(ptr noundef nonnull %2) #18
  br label %29

29:                                               ; preds = %23, %20
  %30 = ptrtoint ptr %3 to i32
  %31 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %30, i32 -2130706432, i32 8454144) #19, !srcloc !10
  %32 = lshr i32 %31, 12
  %33 = getelementptr inbounds %struct.map_desc, ptr %2, i32 0, i32 1
  store i32 %32, ptr %33, align 4
  store i32 -65536, ptr %2, align 4
  %34 = getelementptr inbounds %struct.map_desc, ptr %2, i32 0, i32 2
  store i32 4096, ptr %34, align 4
  %35 = getelementptr inbounds %struct.map_desc, ptr %2, i32 0, i32 3
  store i32 8, ptr %35, align 4
  call fastcc void @create_mapping(ptr noundef nonnull %2) #18
  %36 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #19, !srcloc !18
  %37 = and i32 %36, 8192
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 0, ptr %2, align 4
  store i32 8192, ptr %34, align 4
  store i32 7, ptr %35, align 4
  call fastcc void @create_mapping(ptr noundef nonnull %2) #18
  br label %40

40:                                               ; preds = %39, %29
  %41 = add nuw nsw i32 %32, 1
  store i32 %41, ptr %33, align 4
  store i32 -61440, ptr %2, align 4
  store i32 4096, ptr %34, align 4
  store i32 7, ptr %35, align 4
  call fastcc void @create_mapping(ptr noundef nonnull %2) #18
  %42 = getelementptr inbounds %struct.machine_desc, ptr %0, i32 0, i32 19
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  tail call void %43() #17
  br label %46

46:                                               ; preds = %45, %40
  tail call fastcc void @fill_pmd_gaps() #18
  tail call void @pci_reserve_io() #18
  %47 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #17, !srcloc !27
  %48 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %48, i32 4608) #17, !srcloc !28
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %47, i32 2097152) #17, !srcloc !29
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #17, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !31
  %49 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %49() #17
  tail call void @early_abt_enable() #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @kmap_init() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %2 = getelementptr [2 x i32], ptr %1, i32 1535
  %3 = tail call fastcc ptr @arm_pte_alloc(ptr noundef %2, i32 noundef -1075838976, i32 noundef 17, ptr noundef nonnull @early_alloc) #15
  store ptr %3, ptr @pkmap_page_table, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %5 = getelementptr [2 x i32], ptr %4, i32 2046
  %6 = tail call fastcc ptr @arm_pte_alloc(ptr noundef %5, i32 noundef -3670016, i32 noundef 17, ptr noundef nonnull @early_alloc) #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal ptr @early_alloc(i32 noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @memblock_alloc_try_nid(i32 noundef %0, i32 noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef -1) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.early_alloc, i32 noundef %0, i32 noundef %0) #20
  unreachable

5:                                                ; preds = %1
  ret ptr %2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @bootmem_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__flush_dcache_page(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @early_mm_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 section ".init.text" {
  tail call fastcc void @build_mem_type_table() #18
  tail call fastcc void @early_paging_init(ptr noundef %0) #18
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @build_mem_type_table() unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #19, !srcloc !18
  %2 = tail call i32 @cpu_architecture() #16
  %3 = icmp slt i32 %2, 4
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i32, ptr @cachepolicy, align 4
  %6 = icmp ugt i32 %5, 3
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store i32 3, ptr @cachepolicy, align 4
  br label %8

8:                                                ; preds = %7, %4
  store i1 false, ptr @ecc_mask, align 4
  br label %9

9:                                                ; preds = %8, %0
  %10 = load i32, ptr @smp_on_up, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr @cachepolicy, align 4
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #15
  store i32 4, ptr @cachepolicy, align 4
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32, ptr @initial_pmd_value, align 4
  %19 = and i32 %18, 65536
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #15
  %23 = load i32, ptr @initial_pmd_value, align 4
  %24 = or i32 %23, 65536
  store i32 %24, ptr @initial_pmd_value, align 4
  br label %25

25:                                               ; preds = %21, %17, %9
  br i1 %3, label %26, label %33

26:                                               ; preds = %26, %25
  %27 = phi i32 [ %31, %26 ], [ 0, %25 ]
  %28 = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %27, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, -28673
  store i32 %30, ptr %28, align 4
  %31 = add nuw nsw i32 %27, 1
  %32 = icmp eq i32 %31, 17
  br i1 %32, label %33, label %26

33:                                               ; preds = %26, %25
  %34 = icmp slt i32 %2, 8
  %35 = and i32 %1, 8388608
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %38, %33
  %39 = phi i32 [ %43, %38 ], [ 0, %33 ]
  %40 = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %39, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, -65537
  store i32 %42, ptr %40, align 4
  %43 = add nuw nsw i32 %39, 1
  %44 = icmp eq i32 %43, 17
  br i1 %44, label %45, label %38

45:                                               ; preds = %38, %33
  br i1 %34, label %46, label %62

46:                                               ; preds = %59, %45
  %47 = phi i32 [ %60, %59 ], [ 0, %45 ]
  %48 = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %47, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = or i32 %49, 16
  store i32 %52, ptr %48, align 4
  br label %53

53:                                               ; preds = %51, %46
  %54 = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %47, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = or i32 %55, 16
  store i32 %58, ptr %54, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = add nuw nsw i32 %47, 1
  %61 = icmp eq i32 %60, 17
  br i1 %61, label %62, label %46

62:                                               ; preds = %59, %45
  %63 = icmp sgt i32 %2, 7
  %64 = xor i1 %63, true
  %65 = select i1 %64, i1 true, i1 %36
  br i1 %65, label %86, label %66

66:                                               ; preds = %62
  %67 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 0, i32 3), align 4
  %68 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 1, i32 3), align 4
  %69 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 2, i32 3), align 4
  %70 = or i32 %69, 16
  store i32 %70, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 2, i32 3), align 4
  %71 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 3, i32 3), align 4
  %72 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 10, i32 3), align 4
  %73 = or i32 %72, 16
  store i32 %73, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 10, i32 3), align 4
  %74 = icmp slt i32 %2, 9
  %75 = and i32 %1, 268435456
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %74, i1 true, i1 %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %66
  %79 = or i32 %67, 4112
  store i32 %79, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 0, i32 3), align 4
  %80 = or i32 %68, 4112
  store i32 %80, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 1, i32 3), align 4
  %81 = or i32 %71, 20
  br label %89

82:                                               ; preds = %66
  %83 = or i32 %67, 20
  store i32 %83, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 0, i32 3), align 4
  %84 = or i32 %68, 8208
  store i32 %84, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 1, i32 3), align 4
  %85 = or i32 %71, 4112
  br label %89

86:                                               ; preds = %62
  %87 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 3, i32 3), align 4
  %88 = or i32 %87, 4
  br label %89

89:                                               ; preds = %86, %82, %78
  %90 = phi i32 [ %81, %78 ], [ %85, %82 ], [ %88, %86 ]
  store i32 %90, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 3, i32 3), align 4
  %91 = load i32, ptr @cachepolicy, align 4
  %92 = getelementptr [5 x %struct.cachepolicy], ptr @cache_policies, i32 0, i32 %91
  %93 = getelementptr [5 x %struct.cachepolicy], ptr @cache_policies, i32 0, i32 %91, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %2, 8
  %96 = or i32 %94, 60
  %97 = select i1 %95, i32 %96, i32 %94
  %98 = icmp eq i32 %2, 9
  br i1 %98, label %99, label %106

99:                                               ; preds = %89
  %100 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 4", "=r,~{memory}"() #17, !srcloc !32
  %101 = and i32 %100, 12
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i32, ptr @user_pmd_table, align 4
  %105 = or i32 %104, 4
  store i32 %105, ptr @user_pmd_table, align 4
  br label %106

106:                                              ; preds = %103, %99, %89
  br i1 %65, label %142, label %107

107:                                              ; preds = %106
  %108 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 11, i32 3), align 4
  %109 = or i32 %108, 33792
  store i32 %109, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 11, i32 3), align 4
  %110 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 6, i32 3), align 4
  %111 = or i32 %110, 33792
  store i32 %111, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 6, i32 3), align 4
  %112 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 5, i32 3), align 4
  %113 = or i32 %112, 33792
  store i32 %113, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 5, i32 3), align 4
  %114 = load i32, ptr @initial_pmd_value, align 4
  %115 = and i32 %114, 65536
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %142, label %117

117:                                              ; preds = %107
  %118 = or i32 %94, 1024
  %119 = or i32 %97, 1024
  %120 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 3, i32 3), align 4
  %121 = or i32 %120, 65536
  store i32 %121, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 3, i32 3), align 4
  %122 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 3), align 4
  %123 = or i32 %122, 1024
  store i32 %123, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 3), align 4
  %124 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 2, i32 3), align 4
  %125 = or i32 %124, 65536
  store i32 %125, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 2, i32 3), align 4
  %126 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 2), align 4
  %127 = or i32 %126, 1024
  store i32 %127, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 2), align 4
  %128 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 9, i32 3), align 4
  %129 = or i32 %128, 65536
  store i32 %129, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 9, i32 3), align 4
  %130 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 9), align 4
  %131 = or i32 %130, 1024
  store i32 %131, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 9), align 4
  %132 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 10, i32 3), align 4
  %133 = or i32 %132, 65536
  store i32 %133, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 10, i32 3), align 4
  %134 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 10), align 4
  %135 = or i32 %134, 1024
  store i32 %135, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 10), align 4
  %136 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 16), align 4
  %137 = or i32 %136, 1024
  store i32 %137, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 16), align 4
  %138 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 12, i32 3), align 4
  %139 = or i32 %138, 65536
  store i32 %139, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 12, i32 3), align 4
  %140 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 12), align 4
  %141 = or i32 %140, 1024
  store i32 %141, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 12), align 4
  br label %142

142:                                              ; preds = %117, %107, %106
  %143 = phi i32 [ %119, %117 ], [ %97, %107 ], [ %97, %106 ]
  %144 = phi i32 [ %118, %117 ], [ %94, %107 ], [ %94, %106 ]
  br i1 %63, label %145, label %154

145:                                              ; preds = %142
  %146 = and i32 %1, 268435456
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %95, i1 true, i1 %147
  %149 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 12, i32 3), align 4
  br i1 %148, label %152, label %150

150:                                              ; preds = %145
  %151 = or i32 %149, 4
  br label %157

152:                                              ; preds = %145
  %153 = or i32 %149, 4096
  br label %157

154:                                              ; preds = %142
  %155 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 12, i32 3), align 4
  %156 = or i32 %155, 4
  br label %157

157:                                              ; preds = %154, %152, %150
  %158 = phi i32 [ %151, %150 ], [ %153, %152 ], [ %156, %154 ]
  br label %159

159:                                              ; preds = %159, %157
  %160 = phi i32 [ 0, %157 ], [ %164, %159 ]
  %161 = getelementptr [16 x i32], ptr @protection_map, i32 0, i32 %160
  %162 = load i32, ptr %161, align 4
  %163 = or i32 %162, %144
  store i32 %163, ptr %161, align 4
  %164 = add nuw nsw i32 %160, 1
  %165 = icmp eq i32 %164, 16
  br i1 %165, label %166, label %159

166:                                              ; preds = %159
  %167 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 7), align 4
  %168 = or i32 %167, %143
  store i32 %168, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 7), align 4
  %169 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 8), align 4
  %170 = or i32 %169, %143
  store i32 %170, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 8), align 4
  %171 = or i32 %144, 3
  store i32 %171, ptr @pgprot_user, align 4
  %172 = or i32 %144, 67
  store i32 %172, ptr @pgprot_kernel, align 4
  %173 = load i1, ptr @ecc_mask, align 4
  %174 = select i1 %173, i32 512, i32 0
  %175 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 7, i32 2), align 4
  %176 = or i32 %175, %174
  store i32 %176, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 7, i32 2), align 4
  %177 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 8, i32 2), align 4
  %178 = or i32 %177, %174
  store i32 %178, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 8, i32 2), align 4
  %179 = getelementptr [5 x %struct.cachepolicy], ptr @cache_policies, i32 0, i32 %91, i32 2
  %180 = load i32, ptr %179, align 4
  %181 = or i32 %180, %174
  %182 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 9, i32 3), align 4
  %183 = or i32 %182, %181
  store i32 %183, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 9, i32 3), align 4
  %184 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 9), align 4
  %185 = or i32 %184, %144
  store i32 %185, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 9), align 4
  %186 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 10, i32 3), align 4
  %187 = or i32 %186, %181
  store i32 %187, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 10, i32 3), align 4
  %188 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 10), align 4
  %189 = or i32 %188, %144
  store i32 %189, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 10), align 4
  %190 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 16), align 4
  %191 = or i32 %190, %144
  store i32 %191, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 16), align 4
  %192 = or i32 %158, %174
  store i32 %192, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 12, i32 3), align 4
  %193 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 11, i32 3), align 4
  %194 = or i32 %193, %180
  store i32 %194, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 11, i32 3), align 4
  switch i32 %180, label %200 [
    i32 8, label %196
    i32 12, label %195
    i32 4108, label %195
  ]

195:                                              ; preds = %166, %166
  br label %196

196:                                              ; preds = %195, %166
  %197 = phi i32 [ 12, %195 ], [ %180, %166 ]
  %198 = load i32, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 5, i32 3), align 4
  %199 = or i32 %198, %197
  store i32 %199, ptr getelementptr inbounds ([17 x %struct.mem_type], ptr @mem_types, i32 0, i32 5, i32 3), align 4
  br label %200

200:                                              ; preds = %196, %166
  %201 = select i1 %173, ptr @.str.25, ptr @.str.26
  %202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %201, ptr noundef %92) #15
  br label %203

203:                                              ; preds = %222, %200
  %204 = phi i32 [ 0, %200 ], [ %223, %222 ]
  %205 = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %204, i32 2
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %203
  %209 = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %204, i32 4
  %210 = load i32, ptr %209, align 4
  %211 = shl i32 %210, 5
  %212 = or i32 %211, %206
  store i32 %212, ptr %205, align 4
  br label %213

213:                                              ; preds = %208, %203
  %214 = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %204, i32 3
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %213
  %218 = getelementptr [17 x %struct.mem_type], ptr @mem_types, i32 0, i32 %204, i32 4
  %219 = load i32, ptr %218, align 4
  %220 = shl i32 %219, 5
  %221 = or i32 %220, %215
  store i32 %221, ptr %214, align 4
  br label %222

222:                                              ; preds = %217, %213
  %223 = add nuw nsw i32 %204, 1
  %224 = icmp eq i32 %223, 17
  br i1 %224, label %225, label %203

225:                                              ; preds = %222
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @early_paging_init(ptr nocapture noundef readonly %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.machine_desc, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call i64 %3() #17
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #15
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #15
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #15
  tail call void @add_taint(i32 noundef 2, i32 noundef 0) #17
  br label %12

12:                                               ; preds = %8, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sync_icache_dcache(i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpu_architecture() local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clear_cr(i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @create_36bit_mapping(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i1 noundef zeroext %3) unnamed_addr #0 section ".init.text" {
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.map_desc, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 12
  %9 = getelementptr inbounds %struct.map_desc, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 4095
  %12 = and i32 %11, -4096
  %13 = tail call i32 @cpu_architecture() #16
  %14 = icmp sgt i32 %13, 7
  br i1 %14, label %15, label %52

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.mem_type, ptr %2, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %15
  %20 = or i32 %8, %5
  %21 = or i32 %20, %12
  %22 = and i32 %21, 16777215
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %19
  %25 = and i32 %7, 15728640
  %26 = or i32 %8, %25
  %27 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = lshr i32 %5, 21
  %30 = getelementptr [2 x i32], ptr %28, i32 %29
  %31 = add i32 %12, %5
  %32 = getelementptr inbounds %struct.mem_type, ptr %2, i32 0, i32 3
  %33 = select i1 %3, i32 393216, i32 262144
  br label %34

34:                                               ; preds = %47, %24
  %35 = phi ptr [ %30, %24 ], [ %50, %47 ]
  %36 = phi i32 [ %26, %24 ], [ %49, %47 ]
  %37 = phi i32 [ %5, %24 ], [ %48, %47 ]
  %38 = or i32 %33, %36
  br label %39

39:                                               ; preds = %39, %34
  %40 = phi i32 [ 0, %34 ], [ %45, %39 ]
  %41 = phi ptr [ %35, %34 ], [ %44, %39 ]
  %42 = load i32, ptr %32, align 4
  %43 = or i32 %38, %42
  %44 = getelementptr i32, ptr %41, i32 1
  store i32 %43, ptr %41, align 4
  %45 = add nuw nsw i32 %40, 1
  %46 = icmp eq i32 %45, 16
  br i1 %46, label %47, label %39

47:                                               ; preds = %39
  %48 = add i32 %37, 16777216
  %49 = add i32 %36, 16777216
  %50 = getelementptr [2 x i32], ptr %35, i32 8
  %51 = icmp eq i32 %48, %31
  br i1 %51, label %56, label %34

52:                                               ; preds = %19, %15, %4
  %53 = phi ptr [ @.str.14, %4 ], [ @.str.15, %15 ], [ @.str.16, %19 ]
  %54 = zext i32 %8 to i64
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %53, i64 noundef %54, i32 noundef %5) #15
  br label %56

56:                                               ; preds = %52, %47
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @alloc_init_pmd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i1 noundef zeroext %6) unnamed_addr #0 section ".init.text" {
  %8 = getelementptr inbounds %struct.mem_type, ptr %4, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = or i32 %2, %1
  %13 = or i32 %12, %3
  %14 = and i32 %13, 1048575
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %11
  %17 = lshr i32 %1, 20
  %18 = and i32 %17, 1
  %19 = getelementptr i32, ptr %0, i32 %18
  %20 = select i1 %6, i32 131072, i32 0
  %21 = or i32 %20, %3
  %22 = or i32 %21, %9
  store i32 %22, ptr %19, align 4
  %23 = add i32 %1, 1048576
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %36, label %25

25:                                               ; preds = %25, %16
  %26 = phi i32 [ %34, %25 ], [ %23, %16 ]
  %27 = phi ptr [ %29, %25 ], [ %19, %16 ]
  %28 = phi i32 [ %30, %25 ], [ %3, %16 ]
  %29 = getelementptr i32, ptr %27, i32 1
  %30 = add i32 %28, 1048576
  %31 = load i32, ptr %8, align 4
  %32 = or i32 %30, %20
  %33 = or i32 %32, %31
  store i32 %33, ptr %29, align 4
  %34 = add i32 %26, 1048576
  %35 = icmp eq i32 %34, %2
  br i1 %35, label %36, label %25

36:                                               ; preds = %25, %16
  %37 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %0, i32 %37, i32 1073741824) #17, !srcloc !11
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !12
  br label %40

38:                                               ; preds = %11, %7
  %39 = lshr i32 %3, 12
  tail call fastcc void @alloc_init_pte(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %39, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6) #18
  br label %40

40:                                               ; preds = %38, %36
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @alloc_init_pte(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i1 noundef zeroext %6) unnamed_addr #0 section ".init.text" {
  %8 = getelementptr inbounds %struct.mem_type, ptr %4, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = tail call fastcc ptr @arm_pte_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %9, ptr noundef %5) #18
  %11 = select i1 %6, i32 2048, i32 0
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi i32 [ %3, %7 ], [ %20, %12 ]
  %14 = phi i32 [ %1, %7 ], [ %22, %12 ]
  %15 = phi ptr [ %10, %7 ], [ %21, %12 ]
  %16 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  %17 = shl i32 %13, 12
  %18 = load i32, ptr %4, align 4
  %19 = or i32 %18, %17
  tail call void %16(ptr noundef %15, i32 noundef %19, i32 noundef %11) #17
  %20 = add i32 %13, 1
  %21 = getelementptr i32, ptr %15, i32 1
  %22 = add i32 %14, 4096
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %12

24:                                               ; preds = %12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @arm_pte_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 section ".init.text" {
  %5 = load i32, ptr %0, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = tail call ptr %3(i32 noundef 4096) #17, !callees !33
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %9, i32 -2130706432, i32 8454144) #19, !srcloc !10
  %11 = add i32 %10, 2048
  %12 = or i32 %11, %2
  store i32 %12, ptr %0, align 4
  %13 = add i32 %12, 1024
  %14 = getelementptr i32, ptr %0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %0, i32 %15, i32 1073741824) #17, !srcloc !11
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !12
  %16 = load i32, ptr %0, align 4
  br label %17

17:                                               ; preds = %7, %4
  %18 = phi i32 [ %5, %4 ], [ %16, %7 ]
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21, !prof !34

21:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/mmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 718, 0\0A.popsection", ""() #17, !srcloc !35
  unreachable

22:                                               ; preds = %17
  %23 = and i32 %18, -4096
  %24 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %23, i32 -2130706432, i32 8454144) #19, !srcloc !20
  %25 = inttoptr i32 %24 to ptr
  %26 = lshr i32 %1, 12
  %27 = and i32 %26, 511
  %28 = getelementptr i32, ptr %25, i32 %27
  ret ptr %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #12

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal ptr @pte_offset_late_fixmap(ptr nocapture noundef readonly %0, i32 noundef %1) #13 {
  %3 = load i32, ptr %0, align 4
  %4 = and i32 %3, -4096
  %5 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %4, i32 -2130706432, i32 8454144) #19, !srcloc !20
  %6 = inttoptr i32 %5 to ptr
  %7 = lshr i32 %1, 12
  %8 = and i32 %7, 511
  %9 = getelementptr i32, ptr %6, i32 %8
  ret ptr %9
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @early_trap_init(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @fill_pmd_gaps() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @static_vmlist, align 4
  %2 = icmp eq ptr %1, @static_vmlist
  br i1 %2, label %41, label %3

3:                                                ; preds = %37, %0
  %4 = phi ptr [ %39, %37 ], [ %1, %0 ]
  %5 = phi i32 [ %38, %37 ], [ 0, %0 ]
  %6 = getelementptr i8, ptr %4, i32 -28
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = icmp ugt i32 %5, %8
  br i1 %9, label %37, label %10

10:                                               ; preds = %3
  %11 = and i32 %8, 2097151
  %12 = icmp eq i32 %11, 1048576
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %15 = lshr i32 %8, 21
  %16 = getelementptr [2 x i32], ptr %14, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = and i32 %8, -2097152
  tail call void @vm_reserve_area_early(i32 noundef %20, i32 noundef 1048576, ptr noundef nonnull @pmd_empty_section_gap) #15
  br label %21

21:                                               ; preds = %19, %13, %10
  %22 = getelementptr i8, ptr %4, i32 -24
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %8
  %25 = and i32 %24, 2097151
  %26 = icmp eq i32 %25, 1048576
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %29 = lshr i32 %24, 21
  %30 = getelementptr [2 x i32], ptr %28, i32 %29, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @vm_reserve_area_early(i32 noundef %24, i32 noundef 1048576, ptr noundef nonnull @pmd_empty_section_gap) #15
  br label %34

34:                                               ; preds = %33, %27, %21
  %35 = add i32 %24, 2097151
  %36 = and i32 %35, -2097152
  br label %37

37:                                               ; preds = %34, %3
  %38 = phi i32 [ %5, %3 ], [ %36, %34 ]
  %39 = load ptr, ptr %4, align 4
  %40 = icmp eq ptr %39, @static_vmlist
  br i1 %40, label %41, label %3

41:                                               ; preds = %37, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pci_reserve_io() #0 section ".init.text" {
  %1 = tail call ptr @find_static_vm_vaddr(ptr noundef nonnull inttoptr (i32 -18874368 to ptr)) #17
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @vm_reserve_area_early(i32 noundef -18874368, i32 noundef 2097152, ptr noundef nonnull @pci_reserve_io) #18
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_abt_enable() local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pmd_empty_section_gap(i32 noundef %0) #0 section ".init.text" {
  tail call void @vm_reserve_area_early(i32 noundef %0, i32 noundef 1048576, ptr noundef nonnull @pmd_empty_section_gap) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_static_vm_vaddr(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { cold }
attributes #19 = { nounwind readnone }
attributes #20 = { cold noreturn nounwind }

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
!8 = !{i64 4811104}
!9 = !{i64 2152296322}
!10 = !{i64 2148830378, i64 2148830401, i64 2148830433, i64 2148830465, i64 2148830503, i64 2148830533}
!11 = !{i64 2151311362, i64 2151311375}
!12 = !{i64 2151315863}
!13 = !{ptr @pte_offset_early_fixmap, ptr @pte_offset_late_fixmap}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2153567528, i64 2153568010, i64 2153567565, i64 2153567621, i64 2153567655, i64 2153567679, i64 2153567720, i64 2153567741, i64 2153567769, i64 2153567803}
!16 = !{i32 0, i32 33}
!17 = !{i64 2153584953, i64 2153585435, i64 2153584990, i64 2153585046, i64 2153585080, i64 2153585104, i64 2153585145, i64 2153585166, i64 2153585194, i64 2153585228}
!18 = !{i64 4810966}
!19 = !{!"auto-init"}
!20 = !{i64 2148831164, i64 2148831187, i64 2148831219, i64 2148831251, i64 2148831289, i64 2148831319}
!21 = !{i64 2151316334, i64 2151316347}
!22 = !{i64 2151298656}
!23 = !{i64 2151292347, i64 2151292360}
!24 = !{i64 2151298929, i64 2151298942}
!25 = !{i64 2151301692}
!26 = !{i64 2151301751}
!27 = !{i64 2151233129}
!28 = !{i64 2151226696, i64 2151226709}
!29 = !{i64 2151233401, i64 2151233414}
!30 = !{i64 2151236162}
!31 = !{i64 2151236221}
!32 = !{i64 2153574066}
!33 = !{ptr @early_alloc, ptr @late_alloc}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2153586399, i64 2153586881, i64 2153586436, i64 2153586492, i64 2153586526, i64 2153586550, i64 2153586591, i64 2153586612, i64 2153586640, i64 2153586674}
