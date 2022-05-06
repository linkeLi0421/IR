; ModuleID = '/llk/IR/lib/devres.c_pt.bc'
source_filename = "../lib/devres.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_ioremap:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_ioremap\22\09\09\09\09\09"
module asm "__kstrtabns_devm_ioremap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_ioremap_uc:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_ioremap_uc\22\09\09\09\09\09"
module asm "__kstrtabns_devm_ioremap_uc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_ioremap_wc:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_ioremap_wc\22\09\09\09\09\09"
module asm "__kstrtabns_devm_ioremap_wc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_ioremap_np:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_ioremap_np\22\09\09\09\09\09"
module asm "__kstrtabns_devm_ioremap_np:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_iounmap:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_iounmap\22\09\09\09\09\09"
module asm "__kstrtabns_devm_iounmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_ioremap_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_ioremap_resource\22\09\09\09\09\09"
module asm "__kstrtabns_devm_ioremap_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_of_iomap:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_of_iomap\22\09\09\09\09\09"
module asm "__kstrtabns_devm_of_iomap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcim_iomap_table:\09\09\09\09\09"
module asm "\09.asciz \09\22pcim_iomap_table\22\09\09\09\09\09"
module asm "__kstrtabns_pcim_iomap_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcim_iomap:\09\09\09\09\09"
module asm "\09.asciz \09\22pcim_iomap\22\09\09\09\09\09"
module asm "__kstrtabns_pcim_iomap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcim_iounmap:\09\09\09\09\09"
module asm "\09.asciz \09\22pcim_iounmap\22\09\09\09\09\09"
module asm "__kstrtabns_pcim_iounmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcim_iomap_regions:\09\09\09\09\09"
module asm "\09.asciz \09\22pcim_iomap_regions\22\09\09\09\09\09"
module asm "__kstrtabns_pcim_iomap_regions:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcim_iomap_regions_request_all:\09\09\09\09\09"
module asm "\09.asciz \09\22pcim_iomap_regions_request_all\22\09\09\09\09\09"
module asm "__kstrtabns_pcim_iomap_regions_request_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcim_iounmap_regions:\09\09\09\09\09"
module asm "\09.asciz \09\22pcim_iounmap_regions\22\09\09\09\09\09"
module asm "__kstrtabns_pcim_iounmap_regions:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_arch_phys_wc_add:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_arch_phys_wc_add\22\09\09\09\09\09"
module asm "__kstrtabns_devm_arch_phys_wc_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_arch_io_reserve_memtype_wc:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_arch_io_reserve_memtype_wc\22\09\09\09\09\09"
module asm "__kstrtabns_devm_arch_io_reserve_memtype_wc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.arch_io_reserve_memtype_wc_devres = type { i32, i32 }

@__kstrtab_devm_ioremap = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_ioremap = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_ioremap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_ioremap to i32), ptr @__kstrtab_devm_ioremap, ptr @__kstrtabns_devm_ioremap }, section "___ksymtab+devm_ioremap", align 4
@__kstrtab_devm_ioremap_uc = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_ioremap_uc = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_ioremap_uc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_ioremap_uc to i32), ptr @__kstrtab_devm_ioremap_uc, ptr @__kstrtabns_devm_ioremap_uc }, section "___ksymtab_gpl+devm_ioremap_uc", align 4
@__kstrtab_devm_ioremap_wc = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_ioremap_wc = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_ioremap_wc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_ioremap_wc to i32), ptr @__kstrtab_devm_ioremap_wc, ptr @__kstrtabns_devm_ioremap_wc }, section "___ksymtab+devm_ioremap_wc", align 4
@__kstrtab_devm_ioremap_np = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_ioremap_np = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_ioremap_np = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_ioremap_np to i32), ptr @__kstrtab_devm_ioremap_np, ptr @__kstrtabns_devm_ioremap_np }, section "___ksymtab+devm_ioremap_np", align 4
@.str = private unnamed_addr constant [13 x i8] c"lib/devres.c\00", align 1
@__kstrtab_devm_iounmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_iounmap = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_iounmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_iounmap to i32), ptr @__kstrtab_devm_iounmap, ptr @__kstrtabns_devm_iounmap }, section "___ksymtab+devm_iounmap", align 4
@__kstrtab_devm_ioremap_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_ioremap_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_ioremap_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_ioremap_resource to i32), ptr @__kstrtab_devm_ioremap_resource, ptr @__kstrtabns_devm_ioremap_resource }, section "___ksymtab+devm_ioremap_resource", align 4
@__kstrtab_devm_of_iomap = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_of_iomap = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_of_iomap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_of_iomap to i32), ptr @__kstrtab_devm_of_iomap, ptr @__kstrtabns_devm_of_iomap }, section "___ksymtab+devm_of_iomap", align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"pcim_iomap_release\00", align 1
@__kstrtab_pcim_iomap_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcim_iomap_table = external dso_local constant [0 x i8], align 1
@__ksymtab_pcim_iomap_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcim_iomap_table to i32), ptr @__kstrtab_pcim_iomap_table, ptr @__kstrtabns_pcim_iomap_table }, section "___ksymtab+pcim_iomap_table", align 4
@__kstrtab_pcim_iomap = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcim_iomap = external dso_local constant [0 x i8], align 1
@__ksymtab_pcim_iomap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcim_iomap to i32), ptr @__kstrtab_pcim_iomap, ptr @__kstrtabns_pcim_iomap }, section "___ksymtab+pcim_iomap", align 4
@__kstrtab_pcim_iounmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcim_iounmap = external dso_local constant [0 x i8], align 1
@__ksymtab_pcim_iounmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcim_iounmap to i32), ptr @__kstrtab_pcim_iounmap, ptr @__kstrtabns_pcim_iounmap }, section "___ksymtab+pcim_iounmap", align 4
@__kstrtab_pcim_iomap_regions = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcim_iomap_regions = external dso_local constant [0 x i8], align 1
@__ksymtab_pcim_iomap_regions = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcim_iomap_regions to i32), ptr @__kstrtab_pcim_iomap_regions, ptr @__kstrtabns_pcim_iomap_regions }, section "___ksymtab+pcim_iomap_regions", align 4
@__kstrtab_pcim_iomap_regions_request_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcim_iomap_regions_request_all = external dso_local constant [0 x i8], align 1
@__ksymtab_pcim_iomap_regions_request_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcim_iomap_regions_request_all to i32), ptr @__kstrtab_pcim_iomap_regions_request_all, ptr @__kstrtabns_pcim_iomap_regions_request_all }, section "___ksymtab+pcim_iomap_regions_request_all", align 4
@__kstrtab_pcim_iounmap_regions = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcim_iounmap_regions = external dso_local constant [0 x i8], align 1
@__ksymtab_pcim_iounmap_regions = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcim_iounmap_regions to i32), ptr @__kstrtab_pcim_iounmap_regions, ptr @__kstrtabns_pcim_iounmap_regions }, section "___ksymtab+pcim_iounmap_regions", align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"devm_arch_phys_ac_add_release\00", align 1
@__kstrtab_devm_arch_phys_wc_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_arch_phys_wc_add = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_arch_phys_wc_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_arch_phys_wc_add to i32), ptr @__kstrtab_devm_arch_phys_wc_add, ptr @__kstrtabns_devm_arch_phys_wc_add }, section "___ksymtab+devm_arch_phys_wc_add", align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"devm_arch_io_free_memtype_wc_release\00", align 1
@__kstrtab_devm_arch_io_reserve_memtype_wc = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_arch_io_reserve_memtype_wc = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_arch_io_reserve_memtype_wc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_arch_io_reserve_memtype_wc to i32), ptr @__kstrtab_devm_arch_io_reserve_memtype_wc, ptr @__kstrtabns_devm_arch_io_reserve_memtype_wc }, section "___ksymtab+devm_arch_io_reserve_memtype_wc", align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"devm_ioremap_release\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"invalid resource\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"can't generate pretty name for resource %pR\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"can't request region for resource %pR\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"ioremap failed for resource %pR\0A\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_devm_arch_io_reserve_memtype_wc, ptr @__ksymtab_devm_arch_phys_wc_add, ptr @__ksymtab_devm_ioremap, ptr @__ksymtab_devm_ioremap_np, ptr @__ksymtab_devm_ioremap_resource, ptr @__ksymtab_devm_ioremap_uc, ptr @__ksymtab_devm_ioremap_wc, ptr @__ksymtab_devm_iounmap, ptr @__ksymtab_devm_of_iomap, ptr @__ksymtab_pcim_iomap, ptr @__ksymtab_pcim_iomap_regions, ptr @__ksymtab_pcim_iomap_regions_request_all, ptr @__ksymtab_pcim_iomap_table, ptr @__ksymtab_pcim_iounmap, ptr @__ksymtab_pcim_iounmap_regions], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_ioremap_release(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_ioremap(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_ioremap_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.4) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @ioremap(i32 noundef %1, i32 noundef %2) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store ptr %7, ptr %4, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #7
  br label %11

10:                                               ; preds = %6
  tail call void @devres_free(ptr noundef nonnull %4) #7
  br label %11

11:                                               ; preds = %10, %9, %3
  %12 = phi ptr [ null, %3 ], [ null, %10 ], [ %7, %9 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @devm_ioremap_uc(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_ioremap_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.4) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @devres_free(ptr noundef nonnull %4) #7
  br label %7

7:                                                ; preds = %6, %3
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_ioremap_wc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_ioremap_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.4) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @ioremap_wc(i32 noundef %1, i32 noundef %2) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store ptr %7, ptr %4, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #7
  br label %11

10:                                               ; preds = %6
  tail call void @devres_free(ptr noundef nonnull %4) #7
  br label %11

11:                                               ; preds = %10, %9, %3
  %12 = phi ptr [ null, %3 ], [ null, %10 ], [ %7, %9 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @devm_ioremap_np(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_ioremap_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.4) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @devres_free(ptr noundef nonnull %4) #7
  br label %7

7:                                                ; preds = %6, %3
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_iounmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_destroy(ptr noundef %0, ptr noundef nonnull @devm_ioremap_release, ptr noundef nonnull @devm_ioremap_match, ptr noundef %1) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 130, i32 noundef 9, ptr noundef null) #7
  br label %6

6:                                                ; preds = %5, %2
  tail call void @iounmap(ptr noundef %1) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_destroy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @devm_ioremap_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) #3 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, %2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_ioremap_resource(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc ptr @__devm_ioremap_resource(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__devm_ioremap_resource(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/devres.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 143, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

6:                                                ; preds = %3
  %7 = icmp eq ptr %1, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 7936
  %12 = icmp eq i32 %11, 512
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #8
  br label %68

14:                                               ; preds = %8
  %15 = icmp eq i32 %2, 0
  %16 = and i32 %10, 128
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 0, i32 3
  %19 = select i1 %15, i32 %18, i32 %2
  %20 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %1, align 4
  %23 = add i32 %21, 1
  %24 = sub i32 %23, %22
  %25 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  %28 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %27, label %37, label %31

31:                                               ; preds = %14
  br i1 %30, label %32, label %34

32:                                               ; preds = %31
  %33 = load ptr, ptr %0, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi ptr [ %33, %32 ], [ %29, %31 ]
  %36 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef nonnull %0, i32 noundef 3264, ptr noundef nonnull @.str.6, ptr noundef %35, ptr noundef nonnull %26) #7
  br label %43

37:                                               ; preds = %14
  br i1 %30, label %38, label %40

38:                                               ; preds = %37
  %39 = load ptr, ptr %0, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi ptr [ %39, %38 ], [ %29, %37 ]
  %42 = tail call noalias ptr @devm_kstrdup(ptr noundef nonnull %0, ptr noundef %41, i32 noundef 3264) #7
  br label %43

43:                                               ; preds = %40, %34
  %44 = phi ptr [ %36, %34 ], [ %42, %40 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %1) #8
  br label %68

47:                                               ; preds = %43
  %48 = load i32, ptr %1, align 4
  %49 = tail call ptr @__devm_request_region(ptr noundef nonnull %0, ptr noundef nonnull @iomem_resource, i32 noundef %48, i32 noundef %24, ptr noundef nonnull %44) #7
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %1) #8
  br label %68

52:                                               ; preds = %47
  %53 = load i32, ptr %1, align 4
  %54 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_ioremap_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.4) #7
  %55 = icmp eq ptr %54, null
  br i1 %55, label %66, label %56

56:                                               ; preds = %52
  switch i32 %19, label %64 [
    i32 0, label %57
    i32 2, label %59
  ]

57:                                               ; preds = %56
  %58 = tail call ptr @ioremap(i32 noundef %53, i32 noundef %24) #7
  br label %61

59:                                               ; preds = %56
  %60 = tail call ptr @ioremap_wc(i32 noundef %53, i32 noundef %24) #7
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi ptr [ %60, %59 ], [ %58, %57 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %56
  tail call void @devres_free(ptr noundef nonnull %54) #7
  br label %66

65:                                               ; preds = %61
  store ptr %62, ptr %54, align 4
  tail call void @devres_add(ptr noundef nonnull %0, ptr noundef nonnull %54) #7
  br label %68

66:                                               ; preds = %64, %52
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %1) #8
  %67 = load i32, ptr %1, align 4
  tail call void @__devm_release_region(ptr noundef nonnull %0, ptr noundef nonnull @iomem_resource, i32 noundef %67, i32 noundef %24) #7
  br label %68

68:                                               ; preds = %66, %65, %51, %46, %13
  %69 = phi ptr [ inttoptr (i32 -22 to ptr), %13 ], [ inttoptr (i32 -16 to ptr), %51 ], [ inttoptr (i32 -12 to ptr), %46 ], [ %62, %65 ], [ inttoptr (i32 -12 to ptr), %66 ]
  ret ptr %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_ioremap_resource_wc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @__devm_ioremap_resource(ptr noundef %0, ptr noundef %1, i32 noundef 2)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_of_iomap(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3) #0 {
  %5 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !11
  %6 = call i32 @of_address_to_resource(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %5, align 4
  %14 = add i32 %12, 1
  %15 = sub i32 %14, %13
  store i32 %15, ptr %3, align 4
  br label %16

16:                                               ; preds = %10, %8
  %17 = call fastcc ptr @__devm_ioremap_resource(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0) #7
  br label %18

18:                                               ; preds = %16, %4
  %19 = phi ptr [ %17, %16 ], [ inttoptr (i32 -22 to ptr), %4 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  ret ptr %19
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pcim_iomap_table(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %3 = tail call ptr @devres_find(ptr noundef %2, ptr noundef nonnull @pcim_iomap_release, ptr noundef null, ptr noundef null) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @pcim_iomap_release, i32 noundef 24, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @devres_get(ptr noundef %2, ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #7
  br label %10

10:                                               ; preds = %8, %5, %1
  %11 = phi ptr [ %9, %8 ], [ %3, %1 ], [ null, %5 ]
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcim_iomap_release(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -136
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @pci_iounmap(ptr noundef %3, ptr noundef nonnull %4) #7
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr [6 x ptr], ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @pci_iounmap(ptr noundef %3, ptr noundef nonnull %9) #7
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr [6 x ptr], ptr %1, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @pci_iounmap(ptr noundef %3, ptr noundef nonnull %14) #7
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr [6 x ptr], ptr %1, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @pci_iounmap(ptr noundef %3, ptr noundef nonnull %19) #7
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr [6 x ptr], ptr %1, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @pci_iounmap(ptr noundef %3, ptr noundef nonnull %24) #7
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr [6 x ptr], ptr %1, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @pci_iounmap(ptr noundef %3, ptr noundef nonnull %29) #7
  br label %32

32:                                               ; preds = %31, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pcim_iomap(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %1, 5
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/devres.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 390, 0\0A.popsection", ""() #7, !srcloc !12
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %8 = tail call ptr @devres_find(ptr noundef %7, ptr noundef nonnull @pcim_iomap_release, ptr noundef null, ptr noundef null) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @pcim_iomap_release, i32 noundef 24, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @devres_get(ptr noundef %7, ptr noundef nonnull %11, ptr noundef null, ptr noundef null) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %13, %6
  %17 = phi ptr [ %14, %13 ], [ %8, %6 ]
  %18 = getelementptr ptr, ptr %17, i32 %1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call ptr @pci_iomap(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7
  store ptr %22, ptr %18, align 4
  br label %23

23:                                               ; preds = %21, %16, %13, %10
  %24 = phi ptr [ %22, %21 ], [ null, %16 ], [ null, %13 ], [ null, %10 ]
  ret ptr %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcim_iounmap(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @pci_iounmap(ptr noundef %0, ptr noundef %1) #7
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %4 = tail call ptr @devres_find(ptr noundef %3, ptr noundef nonnull @pcim_iomap_release, ptr noundef null, ptr noundef null) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @pcim_iomap_release, i32 noundef 24, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @devres_get(ptr noundef %3, ptr noundef nonnull %7, ptr noundef null, ptr noundef null) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12, !prof !9

12:                                               ; preds = %9, %2
  %13 = phi ptr [ %10, %9 ], [ %4, %2 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %17, label %20

16:                                               ; preds = %9, %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/devres.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #7, !srcloc !13
  unreachable

17:                                               ; preds = %36, %32, %28, %24, %20, %12
  %18 = phi i32 [ 0, %12 ], [ 1, %20 ], [ 2, %24 ], [ 3, %28 ], [ 4, %32 ], [ 5, %36 ]
  %19 = getelementptr ptr, ptr %13, i32 %18
  store ptr null, ptr %19, align 4
  br label %41

20:                                               ; preds = %12
  %21 = getelementptr ptr, ptr %13, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %17, label %24

24:                                               ; preds = %20
  %25 = getelementptr ptr, ptr %13, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %17, label %28

28:                                               ; preds = %24
  %29 = getelementptr ptr, ptr %13, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %17, label %32

32:                                               ; preds = %28
  %33 = getelementptr ptr, ptr %13, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %1
  br i1 %35, label %17, label %36

36:                                               ; preds = %32
  %37 = getelementptr ptr, ptr %13, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %1
  br i1 %39, label %17, label %40

40:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 423, i32 noundef 9, ptr noundef null) #7
  br label %41

41:                                               ; preds = %40, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcim_iomap_regions(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %5 = tail call ptr @devres_find(ptr noundef %4, ptr noundef nonnull @pcim_iomap_release, ptr noundef null, ptr noundef null) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @pcim_iomap_release, i32 noundef 24, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %70, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @devres_get(ptr noundef %4, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %70, label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %11, %10 ], [ %5, %3 ]
  br label %15

15:                                               ; preds = %52, %13
  %16 = phi i32 [ %53, %52 ], [ 0, %13 ]
  %17 = shl nuw nsw i32 1, %16
  %18 = and i32 %17, %1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %52, label %20

20:                                               ; preds = %15
  %21 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %16, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %56, label %24

24:                                               ; preds = %20
  %25 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %16
  %26 = load i32, ptr %25, align 8
  %27 = sub i32 %22, %26
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %56, label %29

29:                                               ; preds = %24
  %30 = tail call i32 @pci_request_region(ptr noundef %0, i32 noundef %16, ptr noundef %2) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %29
  %33 = icmp ugt i32 %16, 5
  br i1 %33, label %34, label %35, !prof !9

34:                                               ; preds = %32
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/devres.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 390, 0\0A.popsection", ""() #7, !srcloc !12
  unreachable

35:                                               ; preds = %32
  %36 = tail call ptr @devres_find(ptr noundef %4, ptr noundef nonnull @pcim_iomap_release, ptr noundef null, ptr noundef null) #7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @pcim_iomap_release, i32 noundef 24, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %38
  %42 = tail call ptr @devres_get(ptr noundef %4, ptr noundef nonnull %39, ptr noundef null, ptr noundef null) #7
  %43 = icmp eq ptr %42, null
  br i1 %43, label %55, label %44

44:                                               ; preds = %41, %35
  %45 = phi ptr [ %42, %41 ], [ %36, %35 ]
  %46 = getelementptr ptr, ptr %45, i32 %16
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = tail call ptr @pci_iomap(ptr noundef %0, i32 noundef %16, i32 noundef 0) #7
  store ptr %50, ptr %46, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49, %15
  %53 = add nuw nsw i32 %16, 1
  %54 = icmp eq i32 %53, 11
  br i1 %54, label %70, label %15

55:                                               ; preds = %49, %44, %41, %38
  tail call void @pci_release_region(ptr noundef %0, i32 noundef %16) #7
  br label %56

56:                                               ; preds = %55, %29, %24, %20
  %57 = phi i32 [ -12, %55 ], [ -22, %24 ], [ %30, %29 ], [ -22, %20 ]
  %58 = icmp eq i32 %16, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %68, %56
  %60 = phi i32 [ %61, %68 ], [ %16, %56 ]
  %61 = add nsw i32 %60, -1
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = getelementptr ptr, ptr %14, i32 %61
  %67 = load ptr, ptr %66, align 4
  tail call void @pcim_iounmap(ptr noundef %0, ptr noundef %67)
  tail call void @pci_release_region(ptr noundef %0, i32 noundef %61) #7
  br label %68

68:                                               ; preds = %65, %59
  %69 = icmp sgt i32 %60, 1
  br i1 %69, label %59, label %70

70:                                               ; preds = %68, %56, %52, %10, %7
  %71 = phi i32 [ -12, %10 ], [ -12, %7 ], [ %57, %56 ], [ %57, %68 ], [ 0, %52 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_region(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcim_iomap_regions_request_all(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = and i32 %1, 63
  %5 = xor i32 %4, 63
  %6 = tail call i32 @pci_request_selected_regions(ptr noundef %0, i32 noundef %5, ptr noundef %2) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = tail call i32 @pcim_iomap_regions(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @pci_release_selected_regions(ptr noundef %0, i32 noundef %5) #7
  br label %12

12:                                               ; preds = %11, %8, %3
  %13 = phi i32 [ %6, %3 ], [ %9, %11 ], [ 0, %8 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_selected_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_selected_regions(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcim_iounmap_regions(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %4 = tail call ptr @devres_find(ptr noundef %3, ptr noundef nonnull @pcim_iomap_release, ptr noundef null, ptr noundef null) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @pcim_iomap_release, i32 noundef 24, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @devres_get(ptr noundef %3, ptr noundef nonnull %7, ptr noundef null, ptr noundef null) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ %10, %9 ], [ %4, %2 ]
  %14 = and i32 %1, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %13, align 4
  tail call void @pcim_iounmap(ptr noundef %0, ptr noundef %17)
  tail call void @pci_release_region(ptr noundef %0, i32 noundef 0) #7
  br label %18

18:                                               ; preds = %16, %12
  %19 = and i32 %1, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr ptr, ptr %13, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void @pcim_iounmap(ptr noundef %0, ptr noundef %23)
  tail call void @pci_release_region(ptr noundef %0, i32 noundef 1) #7
  br label %24

24:                                               ; preds = %21, %18
  %25 = and i32 %1, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr ptr, ptr %13, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void @pcim_iounmap(ptr noundef %0, ptr noundef %29)
  tail call void @pci_release_region(ptr noundef %0, i32 noundef 2) #7
  br label %30

30:                                               ; preds = %27, %24
  %31 = and i32 %1, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = getelementptr ptr, ptr %13, i32 3
  %35 = load ptr, ptr %34, align 4
  tail call void @pcim_iounmap(ptr noundef %0, ptr noundef %35)
  tail call void @pci_release_region(ptr noundef %0, i32 noundef 3) #7
  br label %36

36:                                               ; preds = %33, %30
  %37 = and i32 %1, 16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = getelementptr ptr, ptr %13, i32 4
  %41 = load ptr, ptr %40, align 4
  tail call void @pcim_iounmap(ptr noundef %0, ptr noundef %41)
  tail call void @pci_release_region(ptr noundef %0, i32 noundef 4) #7
  br label %42

42:                                               ; preds = %39, %36
  %43 = and i32 %1, 32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = getelementptr ptr, ptr %13, i32 5
  %47 = load ptr, ptr %46, align 4
  tail call void @pcim_iounmap(ptr noundef %0, ptr noundef %47)
  tail call void @pci_release_region(ptr noundef %0, i32 noundef 5) #7
  br label %48

48:                                               ; preds = %45, %42, %9, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_arch_phys_wc_add(ptr noundef %0, i32 %1, i32 %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_arch_phys_ac_add_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.2) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  store i32 0, ptr %4, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #7
  br label %7

7:                                                ; preds = %6, %3
  %8 = phi i32 [ 0, %6 ], [ -12, %3 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @devm_arch_phys_ac_add_release(ptr nocapture noundef %0, ptr nocapture noundef %1) #5 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_arch_io_reserve_memtype_wc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_arch_io_free_memtype_wc_release, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.3) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  store i32 %1, ptr %4, align 4
  %7 = getelementptr inbounds %struct.arch_io_reserve_memtype_wc_devres, ptr %4, i32 0, i32 1
  store i32 %2, ptr %7, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #7
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ 0, %6 ], [ -12, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @devm_arch_io_free_memtype_wc_release(ptr nocapture noundef %0, ptr nocapture noundef %1) #5 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__devm_release_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153236929, i64 2153237406, i64 2153236966, i64 2153237022, i64 2153237056, i64 2153237080, i64 2153237121, i64 2153237142, i64 2153237170, i64 2153237204}
!11 = !{!"auto-init"}
!12 = !{i64 2153250583, i64 2153251060, i64 2153250620, i64 2153250676, i64 2153250710, i64 2153250734, i64 2153250775, i64 2153250796, i64 2153250824, i64 2153250858}
!13 = !{i64 2153252677, i64 2153253154, i64 2153252714, i64 2153252770, i64 2153252804, i64 2153252828, i64 2153252869, i64 2153252890, i64 2153252918, i64 2153252952}
