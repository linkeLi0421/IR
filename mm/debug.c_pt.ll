; ModuleID = '/llk/IR/mm/debug.c_pt.bc'
source_filename = "../mm/debug.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dump_page:\09\09\09\09\09"
module asm "\09.asciz \09\22dump_page\22\09\09\09\09\09"
module asm "__kstrtabns_dump_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.trace_print_flags = type { i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.page = type { i32, %union.anon, %union.anon.88, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.88 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.anon.82 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.anon.94 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }

@.str = private unnamed_addr constant [11 x i8] c"compaction\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"memory_failure\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"memory_hotplug\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"syscall_or_cpuset\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"mempolicy_mbind\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"numa_misplaced\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"contig_range\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"longterm_pin\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"demotion\00", align 1
@migrate_reason_names = dso_local local_unnamed_addr global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"waiters\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"referenced\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"uptodate\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"lru\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"workingset\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"slab\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"owner_priv_1\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"arch_1\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"private_2\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"writeback\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"mappedtodisk\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"reclaim\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"swapbacked\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"unevictable\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"mlocked\00", align 1
@pageflag_names = dso_local local_unnamed_addr constant [23 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.9 }, %struct.trace_print_flags { i32 128, ptr @.str.10 }, %struct.trace_print_flags { i32 256, ptr @.str.11 }, %struct.trace_print_flags { i32 2, ptr @.str.12 }, %struct.trace_print_flags { i32 4, ptr @.str.13 }, %struct.trace_print_flags { i32 8, ptr @.str.14 }, %struct.trace_print_flags { i32 16, ptr @.str.15 }, %struct.trace_print_flags { i32 32, ptr @.str.16 }, %struct.trace_print_flags { i32 64, ptr @.str.17 }, %struct.trace_print_flags { i32 512, ptr @.str.18 }, %struct.trace_print_flags { i32 1024, ptr @.str.19 }, %struct.trace_print_flags { i32 2048, ptr @.str.20 }, %struct.trace_print_flags { i32 4096, ptr @.str.21 }, %struct.trace_print_flags { i32 8192, ptr @.str.22 }, %struct.trace_print_flags { i32 16384, ptr @.str.23 }, %struct.trace_print_flags { i32 32768, ptr @.str.24 }, %struct.trace_print_flags { i32 65536, ptr @.str.25 }, %struct.trace_print_flags { i32 131072, ptr @.str.26 }, %struct.trace_print_flags { i32 262144, ptr @.str.27 }, %struct.trace_print_flags { i32 524288, ptr @.str.28 }, %struct.trace_print_flags { i32 1048576, ptr @.str.29 }, %struct.trace_print_flags { i32 2097152, ptr @.str.30 }, %struct.trace_print_flags zeroinitializer], align 4
@.str.31 = private unnamed_addr constant [14 x i8] c"GFP_TRANSHUGE\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"GFP_TRANSHUGE_LIGHT\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"GFP_HIGHUSER_MOVABLE\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"GFP_HIGHUSER\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"GFP_USER\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"GFP_KERNEL_ACCOUNT\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"GFP_KERNEL\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"GFP_NOFS\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"GFP_ATOMIC\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"GFP_NOIO\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"GFP_NOWAIT\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"GFP_DMA\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"__GFP_HIGHMEM\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"GFP_DMA32\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"__GFP_HIGH\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"__GFP_ATOMIC\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"__GFP_IO\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"__GFP_FS\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"__GFP_NOWARN\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"__GFP_RETRY_MAYFAIL\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"__GFP_NOFAIL\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"__GFP_NORETRY\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"__GFP_COMP\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"__GFP_ZERO\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"__GFP_NOMEMALLOC\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"__GFP_MEMALLOC\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"__GFP_HARDWALL\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"__GFP_THISNODE\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"__GFP_RECLAIMABLE\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"__GFP_MOVABLE\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"__GFP_ACCOUNT\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"__GFP_WRITE\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"__GFP_RECLAIM\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"__GFP_DIRECT_RECLAIM\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"__GFP_KSWAPD_RECLAIM\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"__GFP_ZEROTAGS\00", align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"__GFP_SKIP_KASAN_POISON\00", align 1
@gfpflag_names = dso_local local_unnamed_addr constant [38 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 18621642, ptr @.str.31 }, %struct.trace_print_flags { i32 18620618, ptr @.str.32 }, %struct.trace_print_flags { i32 17829066, ptr @.str.33 }, %struct.trace_print_flags { i32 1051842, ptr @.str.34 }, %struct.trace_print_flags { i32 1051840, ptr @.str.35 }, %struct.trace_print_flags { i32 4197568, ptr @.str.36 }, %struct.trace_print_flags { i32 3264, ptr @.str.37 }, %struct.trace_print_flags { i32 3136, ptr @.str.38 }, %struct.trace_print_flags { i32 2592, ptr @.str.39 }, %struct.trace_print_flags { i32 3072, ptr @.str.40 }, %struct.trace_print_flags { i32 2048, ptr @.str.41 }, %struct.trace_print_flags { i32 1, ptr @.str.42 }, %struct.trace_print_flags { i32 2, ptr @.str.43 }, %struct.trace_print_flags { i32 4, ptr @.str.44 }, %struct.trace_print_flags { i32 32, ptr @.str.45 }, %struct.trace_print_flags { i32 512, ptr @.str.46 }, %struct.trace_print_flags { i32 64, ptr @.str.47 }, %struct.trace_print_flags { i32 128, ptr @.str.48 }, %struct.trace_print_flags { i32 8192, ptr @.str.49 }, %struct.trace_print_flags { i32 16384, ptr @.str.50 }, %struct.trace_print_flags { i32 32768, ptr @.str.51 }, %struct.trace_print_flags { i32 65536, ptr @.str.52 }, %struct.trace_print_flags { i32 262144, ptr @.str.53 }, %struct.trace_print_flags { i32 256, ptr @.str.54 }, %struct.trace_print_flags { i32 524288, ptr @.str.55 }, %struct.trace_print_flags { i32 131072, ptr @.str.56 }, %struct.trace_print_flags { i32 1048576, ptr @.str.57 }, %struct.trace_print_flags { i32 2097152, ptr @.str.58 }, %struct.trace_print_flags { i32 16, ptr @.str.59 }, %struct.trace_print_flags { i32 8, ptr @.str.60 }, %struct.trace_print_flags { i32 4194304, ptr @.str.61 }, %struct.trace_print_flags { i32 4096, ptr @.str.62 }, %struct.trace_print_flags { i32 3072, ptr @.str.63 }, %struct.trace_print_flags { i32 1024, ptr @.str.64 }, %struct.trace_print_flags { i32 2048, ptr @.str.65 }, %struct.trace_print_flags { i32 8388608, ptr @.str.66 }, %struct.trace_print_flags { i32 16777216, ptr @.str.67 }, %struct.trace_print_flags zeroinitializer], align 4
@.str.68 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"mayread\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"maywrite\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"mayexec\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"mayshare\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"growsdown\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"uffd_missing\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"pfnmap\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"uffd_wp\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"seqread\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"randread\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"dontcopy\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"dontexpand\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"lockonfault\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"account\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"noreserve\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"hugetlb\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"wipeonfork\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"dontdump\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"mixedmap\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"hugepage\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"nohugepage\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"mergeable\00", align 1
@vmaflag_names = dso_local local_unnamed_addr constant [31 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.68 }, %struct.trace_print_flags { i32 2, ptr @.str.69 }, %struct.trace_print_flags { i32 4, ptr @.str.70 }, %struct.trace_print_flags { i32 8, ptr @.str.71 }, %struct.trace_print_flags { i32 16, ptr @.str.72 }, %struct.trace_print_flags { i32 32, ptr @.str.73 }, %struct.trace_print_flags { i32 64, ptr @.str.74 }, %struct.trace_print_flags { i32 128, ptr @.str.75 }, %struct.trace_print_flags { i32 256, ptr @.str.76 }, %struct.trace_print_flags { i32 512, ptr @.str.77 }, %struct.trace_print_flags { i32 1024, ptr @.str.78 }, %struct.trace_print_flags { i32 4096, ptr @.str.79 }, %struct.trace_print_flags { i32 8192, ptr @.str.9 }, %struct.trace_print_flags { i32 16384, ptr @.str.80 }, %struct.trace_print_flags { i32 32768, ptr @.str.81 }, %struct.trace_print_flags { i32 65536, ptr @.str.82 }, %struct.trace_print_flags { i32 131072, ptr @.str.83 }, %struct.trace_print_flags { i32 262144, ptr @.str.84 }, %struct.trace_print_flags { i32 524288, ptr @.str.85 }, %struct.trace_print_flags { i32 1048576, ptr @.str.86 }, %struct.trace_print_flags { i32 2097152, ptr @.str.87 }, %struct.trace_print_flags { i32 4194304, ptr @.str.88 }, %struct.trace_print_flags { i32 8388608, ptr @.str.89 }, %struct.trace_print_flags { i32 16777216, ptr @.str.20 }, %struct.trace_print_flags { i32 33554432, ptr @.str.90 }, %struct.trace_print_flags { i32 67108864, ptr @.str.91 }, %struct.trace_print_flags { i32 268435456, ptr @.str.92 }, %struct.trace_print_flags { i32 536870912, ptr @.str.93 }, %struct.trace_print_flags { i32 1073741824, ptr @.str.94 }, %struct.trace_print_flags { i32 -2147483648, ptr @.str.95 }, %struct.trace_print_flags zeroinitializer], align 4
@.str.96 = private unnamed_addr constant [40 x i8] c"\014page:%p is uninitialized and poisoned\00", align 1
@.str.97 = private unnamed_addr constant [27 x i8] c"\014page dumped because: %s\0A\00", align 1
@__kstrtab_dump_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_dump_page = external dso_local constant [0 x i8], align 1
@__ksymtab_dump_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dump_page to i32), ptr @__kstrtab_dump_page, ptr @__kstrtabns_dump_page }, section "___ksymtab+dump_page", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.98 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.99 = private unnamed_addr constant [66 x i8] c"\014page:%p refcount:%d mapcount:%d mapping:%p index:%#lx pfn:%#lx\0A\00", align 1
@.str.100 = private unnamed_addr constant [62 x i8] c"\014head:%p order:%u compound_mapcount:%d compound_pincount:%d\0A\00", align 1
@.str.101 = private unnamed_addr constant [41 x i8] c"\014head:%p order:%u compound_mapcount:%d\0A\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"anon \00", align 1
@.str.104 = private unnamed_addr constant [19 x i8] c"\014%sflags: %pGp%s\0A\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c" CMA\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"raw: \00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"head: \00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_dump_page], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dump_page(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load volatile i32, ptr %0, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %0) #3
  br label %178

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !8

12:                                               ; preds = %7
  %13 = add i32 %9, -1
  br label %16

14:                                               ; preds = %7
  %15 = ptrtoint ptr %0 to i32
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = inttoptr i32 %17 to ptr
  %19 = load volatile i32, ptr %0, align 4
  %20 = and i32 %19, 65536
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load volatile i32, ptr %8, align 4
  %24 = and i32 %23, 1
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi i32 [ 1, %16 ], [ %24, %22 ]
  %27 = load ptr, ptr @mem_map, align 4
  %28 = ptrtoint ptr %0 to i32
  %29 = ptrtoint ptr %27 to i32
  %30 = sub i32 %28, %29
  %31 = ashr exact i32 %30, 5
  %32 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %33 = add i32 %31, %32
  %34 = tail call i32 @get_pfnblock_flags_mask(ptr noundef %0, i32 noundef %33, i32 noundef 7) #4
  %35 = icmp eq i32 %34, 4
  %36 = icmp ule ptr %18, %0
  %37 = getelementptr %struct.page, ptr %18, i32 2048
  %38 = icmp ugt ptr %37, %0
  %39 = and i1 %36, %38
  br i1 %39, label %49, label %40

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  %46 = and i32 %43, -4
  %47 = inttoptr i32 %46 to ptr
  %48 = select i1 %45, ptr %47, ptr null
  br label %52

49:                                               ; preds = %25
  %50 = icmp ne i32 %26, 0
  %51 = tail call ptr @page_mapping(ptr noundef %0) #4
  br label %52

52:                                               ; preds = %49, %40
  %53 = phi i1 [ false, %40 ], [ %50, %49 ]
  %54 = phi ptr [ %48, %40 ], [ %51, %49 ]
  %55 = phi ptr [ %0, %40 ], [ %18, %49 ]
  %56 = getelementptr inbounds %struct.page, ptr %55, i32 0, i32 1
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60, !prof !8

60:                                               ; preds = %52
  %61 = add i32 %57, -1
  br label %64

62:                                               ; preds = %52
  %63 = ptrtoint ptr %55 to i32
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = inttoptr i32 %65 to ptr
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %67, 512
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %64
  %71 = load volatile i32, ptr %0, align 4
  %72 = and i32 %71, 65536
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load volatile i32, ptr %8, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78, !prof !8

78:                                               ; preds = %74, %70
  %79 = tail call i32 @__page_mapcount(ptr noundef %0) #4
  br label %84

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2
  %82 = load volatile i32, ptr %81, align 4
  %83 = add i32 %82, 1
  br label %84

84:                                               ; preds = %80, %78, %64
  %85 = phi i32 [ 0, %64 ], [ %79, %78 ], [ %83, %80 ]
  %86 = getelementptr inbounds %struct.page, ptr %55, i32 0, i32 3
  %87 = load volatile i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = load ptr, ptr @mem_map, align 4
  %91 = ptrtoint ptr %90 to i32
  %92 = sub i32 %28, %91
  %93 = ashr exact i32 %92, 5
  %94 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %95 = add i32 %93, %94
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %0, i32 noundef %87, i32 noundef %85, ptr noundef %54, i32 noundef %89, i32 noundef %95) #3
  br i1 %53, label %97, label %155

97:                                               ; preds = %84
  %98 = load volatile i32, ptr %8, align 4
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101, !prof !8

101:                                              ; preds = %97
  %102 = add i32 %98, -1
  br label %103

103:                                              ; preds = %101, %97
  %104 = phi i32 [ %102, %101 ], [ %28, %97 ]
  %105 = inttoptr i32 %104 to ptr
  %106 = load volatile i32, ptr %105, align 4
  %107 = and i32 %106, 65536
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.page, ptr %105, i32 0, i32 1
  %111 = load volatile i32, ptr %110, align 4
  %112 = and i32 %111, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %140, label %114

114:                                              ; preds = %109, %103
  %115 = load volatile i32, ptr %105, align 4
  %116 = and i32 %115, 65536
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %140, label %118

118:                                              ; preds = %114
  %119 = getelementptr %struct.page, ptr %105, i32 1, i32 1
  %120 = getelementptr inbounds %struct.anon.82, ptr %119, i32 0, i32 2
  %121 = load i8, ptr %120, align 1
  %122 = icmp ugt i8 %121, 1
  br i1 %122, label %123, label %140

123:                                              ; preds = %118
  %124 = load volatile i32, ptr %55, align 4
  %125 = and i32 %124, 65536
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %123
  %128 = getelementptr %struct.page, ptr %55, i32 1, i32 1
  %129 = getelementptr inbounds %struct.anon.82, ptr %128, i32 0, i32 2
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  br label %132

132:                                              ; preds = %127, %123
  %133 = phi i32 [ %131, %127 ], [ 0, %123 ]
  %134 = getelementptr %struct.page, ptr %55, i32 1, i32 1, i32 0, i32 1
  %135 = load volatile i32, ptr %134, align 4
  %136 = add i32 %135, 1
  %137 = getelementptr %struct.page, ptr %55, i32 2, i32 1, i32 0, i32 0, i32 1
  %138 = load volatile i32, ptr %137, align 4
  %139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %55, i32 noundef %133, i32 noundef %136, i32 noundef %138) #3
  br label %155

140:                                              ; preds = %118, %114, %109
  %141 = load volatile i32, ptr %55, align 4
  %142 = and i32 %141, 65536
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %140
  %145 = getelementptr %struct.page, ptr %55, i32 1, i32 1
  %146 = getelementptr inbounds %struct.anon.82, ptr %145, i32 0, i32 2
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  br label %149

149:                                              ; preds = %144, %140
  %150 = phi i32 [ %148, %144 ], [ 0, %140 ]
  %151 = getelementptr %struct.page, ptr %55, i32 1, i32 1, i32 0, i32 1
  %152 = load volatile i32, ptr %151, align 4
  %153 = add i32 %152, 1
  %154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %55, i32 noundef %150, i32 noundef %153) #3
  br label %155

155:                                              ; preds = %149, %132, %84
  %156 = load volatile i32, ptr %8, align 4
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159, !prof !8

159:                                              ; preds = %155
  %160 = add i32 %156, -1
  br label %161

161:                                              ; preds = %159, %155
  %162 = phi i32 [ %160, %159 ], [ %28, %155 ]
  %163 = inttoptr i32 %162 to ptr
  %164 = getelementptr inbounds %struct.anon.94, ptr %163, i32 0, i32 2
  %165 = load ptr, ptr %164, align 4
  %166 = ptrtoint ptr %165 to i32
  %167 = and i32 %166, 1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %161
  %170 = icmp eq ptr %54, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %169
  tail call void @dump_mapping(ptr noundef nonnull %54) #4
  br label %172

172:                                              ; preds = %171, %169, %161
  %173 = phi ptr [ @.str.98, %171 ], [ @.str.98, %169 ], [ @.str.103, %161 ]
  %174 = select i1 %35, ptr @.str.105, ptr @.str.98
  %175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull %173, ptr noundef %55, ptr noundef nonnull %174) #3
  tail call void @print_hex_dump(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107, i32 noundef 0, i32 noundef 32, i32 noundef 4, ptr noundef %0, i32 noundef 32, i1 noundef zeroext false) #4
  %176 = icmp eq ptr %55, %0
  br i1 %176, label %178, label %177

177:                                              ; preds = %172
  tail call void @print_hex_dump(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.108, i32 noundef 0, i32 noundef 32, i32 noundef 4, ptr noundef %55, i32 noundef 32, i1 noundef zeroext false) #4
  br label %178

178:                                              ; preds = %177, %172, %5
  %179 = icmp eq ptr %1, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %178
  %181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull %1) #3
  br label %182

182:                                              ; preds = %180, %178
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_pfnblock_flags_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind }
attributes #4 = { nounwind }

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
