; ModuleID = '/llk/IR/drivers/gpu/drm/ttm/ttm_pool.c_pt.bc'
source_filename = "../drivers/gpu/drm/ttm/ttm_pool.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_pool_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_pool_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_pool_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_pool_free:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_pool_free\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_pool_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_pool_debugfs:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_pool_debugfs\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_pool_debugfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.67] }
%struct.anon.67 = type { [12 x %struct.ttm_pool_type] }
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }
%struct.ttm_pool_dma = type { i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }

@__UNIQUE_ID_page_pool_size252 = internal constant [58 x i8] c"parm=page_pool_size:Number of pages in the WC/UC/DMA pool\00", section ".modinfo", align 1
@__param_str_page_pool_size = internal constant [15 x i8] c"page_pool_size\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@page_pool_size = internal global i32 0, align 4
@__param_page_pool_size = internal constant %struct.kernel_param { ptr @__param_str_page_pool_size, ptr @__this_module, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @page_pool_size } }, section "__param", align 4
@__UNIQUE_ID_page_pool_sizetype253 = internal constant [30 x i8] c"parmtype=page_pool_size:ulong\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [31 x i8] c"drivers/gpu/drm/ttm/ttm_pool.c\00", align 1
@__kstrtab_ttm_pool_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_pool_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_pool_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_pool_alloc to i32), ptr @__kstrtab_ttm_pool_alloc, ptr @__kstrtabns_ttm_pool_alloc }, section "___ksymtab+ttm_pool_alloc", align 4
@allocated_pages = internal global %struct.atomic_t zeroinitializer, align 4
@__kstrtab_ttm_pool_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_pool_free = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_pool_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_pool_free to i32), ptr @__kstrtab_ttm_pool_free, ptr @__kstrtabns_ttm_pool_free }, section "___ksymtab+ttm_pool_free", align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unused\0A\00", align 1
@shrinker_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"DMA \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\09:\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"wc\09:\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"uc\09:\00", align 1
@__kstrtab_ttm_pool_debugfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_pool_debugfs = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_pool_debugfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_pool_debugfs to i32), ptr @__kstrtab_ttm_pool_debugfs, ptr @__kstrtabns_ttm_pool_debugfs }, section "___ksymtab+ttm_pool_debugfs", align 4
@shrinker_list = internal global %struct.list_head zeroinitializer, align 4
@global_write_combined = internal global [12 x %struct.ttm_pool_type] zeroinitializer, align 4
@global_uncached = internal global [12 x %struct.ttm_pool_type] zeroinitializer, align 4
@global_dma32_write_combined = internal global [12 x %struct.ttm_pool_type] zeroinitializer, align 4
@global_dma32_uncached = internal global [12 x %struct.ttm_pool_type] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"page_pool\00", align 1
@ttm_debugfs_root = external dso_local local_unnamed_addr global ptr, align 4
@ttm_pool_debugfs_globals_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ttm_pool_debugfs_globals_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"page_pool_shrink\00", align 1
@ttm_pool_debugfs_shrink_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ttm_pool_debugfs_shrink_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@mm_shrinker = internal global %struct.shrinker zeroinitializer, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"\09 \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" ---%2u---\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" %8u\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"\0Atotal\09: %8lu of %8lu\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"wc 32\09:\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"uc 32\09:\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"%lu/%lu\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_page_pool_size252, ptr @__UNIQUE_ID_page_pool_sizetype253, ptr @__ksymtab_ttm_pool_alloc, ptr @__ksymtab_ttm_pool_debugfs, ptr @__ksymtab_ttm_pool_free, ptr @__param_page_pool_size], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_pool_alloc(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %1, align 4
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %10, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 371, i32 noundef 9, ptr noundef null) #6
  br label %15

15:                                               ; preds = %14, %10
  %16 = icmp eq ptr %7, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %0, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !8

20:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 372, i32 noundef 9, ptr noundef null) #6
  br label %21

21:                                               ; preds = %20, %17, %15
  %22 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 1051840, i32 1052096
  %27 = getelementptr inbounds %struct.ttm_operation_ctx, ptr %2, i32 0, i32 2
  %28 = load i8, ptr %27, align 2, !range !9
  %29 = icmp eq i8 %28, 0
  %30 = or i32 %26, 16384
  %31 = select i1 %29, i32 %26, i32 %30
  %32 = getelementptr inbounds %struct.ttm_pool, ptr %0, i32 0, i32 2
  %33 = load i8, ptr %32, align 1, !range !9
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, i32 1051842, i32 4
  %36 = or i32 %31, %35
  br i1 %9, label %232, label %37

37:                                               ; preds = %21
  %38 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 true) #6, !range !10
  %39 = xor i32 %38, 31
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 11)
  %41 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 6
  %42 = getelementptr inbounds %struct.ttm_pool, ptr %0, i32 0, i32 1
  %43 = or i32 %36, 600064
  br label %44

44:                                               ; preds = %168, %37
  %45 = phi i32 [ %5, %37 ], [ %172, %168 ]
  %46 = phi ptr [ %8, %37 ], [ %171, %168 ]
  %47 = phi i32 [ %40, %37 ], [ %175, %168 ]
  %48 = phi ptr [ %7, %37 ], [ %169, %168 ]
  %49 = load i32, ptr %41, align 4
  %50 = load i8, ptr %42, align 4, !range !9
  %51 = icmp eq i8 %50, 0
  %52 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 %49
  %53 = getelementptr [12 x %struct.ttm_pool_type], ptr %52, i32 0, i32 %47
  %54 = icmp eq ptr %53, null
  %55 = select i1 %51, i1 true, i1 %54
  br i1 %55, label %79, label %56

56:                                               ; preds = %44
  %57 = getelementptr [12 x %struct.ttm_pool_type], ptr %52, i32 0, i32 %47, i32 4
  tail call void @_raw_spin_lock(ptr noundef %57) #6
  %58 = getelementptr [12 x %struct.ttm_pool_type], ptr %52, i32 0, i32 %47, i32 5
  %59 = load volatile ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %58
  %61 = getelementptr i8, ptr %59, i32 -4
  %62 = icmp eq ptr %61, null
  %63 = or i1 %60, %62
  br i1 %63, label %75, label %64

64:                                               ; preds = %56
  %65 = getelementptr [12 x %struct.ttm_pool_type], ptr %52, i32 0, i32 %47, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = shl nuw i32 1, %66
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @allocated_pages) #6, !srcloc !11
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @allocated_pages, ptr nonnull @allocated_pages, i32 %67, ptr nonnull elementtype(i32) @allocated_pages) #6, !srcloc !12
  %69 = getelementptr i8, ptr %59, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %59, align 4
  %72 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %70, ptr %72, align 4
  store volatile ptr %71, ptr %70, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %59, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %69, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %73 = load i16, ptr %57, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr %57, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  br label %124

75:                                               ; preds = %56
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %76 = load i16, ptr %57, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %57, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %78 = load i8, ptr %42, align 4, !range !9
  br label %79

79:                                               ; preds = %75, %44
  %80 = phi i8 [ %78, %75 ], [ %50, %44 ]
  %81 = icmp eq i32 %47, 0
  %82 = select i1 %81, i32 %36, i32 %43
  %83 = icmp eq i8 %80, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = tail call ptr @__alloc_pages(i32 noundef %82, i32 noundef %47, i32 noundef 0, ptr noundef null) #6
  %86 = icmp eq ptr %85, null
  br i1 %86, label %121, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.page, ptr %85, i32 0, i32 1, i32 0, i32 3
  store i32 %47, ptr %88, align 4
  br label %124

89:                                               ; preds = %79
  %90 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %91 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %90, i32 noundef 3264, i32 noundef 8) #7
  %92 = icmp eq ptr %91, null
  br i1 %92, label %121, label %93

93:                                               ; preds = %89
  %94 = select i1 %81, i32 64, i32 320
  %95 = load ptr, ptr %0, align 4
  %96 = zext i32 %47 to i64
  %97 = shl i64 4096, %96
  %98 = trunc i64 %97 to i32
  %99 = tail call ptr @dma_alloc_attrs(ptr noundef %95, i32 noundef %98, ptr noundef nonnull %91, i32 noundef %82, i32 noundef %94) #6
  %100 = icmp eq ptr %99, null
  br i1 %100, label %112, label %101

101:                                              ; preds = %93
  %102 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %99) #6
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = tail call ptr @vmalloc_to_page(ptr noundef nonnull %99) #6
  %105 = ptrtoint ptr %99 to i32
  br label %113

106:                                              ; preds = %101
  %107 = load ptr, ptr @mem_map, align 4
  %108 = ptrtoint ptr %99 to i32
  %109 = add i32 %108, 1073741824
  %110 = lshr i32 %109, 12
  %111 = getelementptr %struct.page, ptr %107, i32 %110
  br label %113

112:                                              ; preds = %93
  tail call void @kfree(ptr noundef nonnull %91) #6
  br label %121

113:                                              ; preds = %106, %103
  %114 = phi i32 [ %108, %106 ], [ %105, %103 ]
  %115 = phi ptr [ %111, %106 ], [ %104, %103 ]
  %116 = or i32 %114, %47
  %117 = getelementptr inbounds %struct.ttm_pool_dma, ptr %91, i32 0, i32 1
  store i32 %116, ptr %117, align 4
  %118 = ptrtoint ptr %91 to i32
  %119 = getelementptr inbounds %struct.page, ptr %115, i32 0, i32 1, i32 0, i32 3
  store i32 %118, ptr %119, align 4
  %120 = icmp eq ptr %115, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %113, %112, %89, %84
  br i1 %81, label %196, label %122

122:                                              ; preds = %121
  %123 = add i32 %47, -1
  br label %168

124:                                              ; preds = %113, %87, %64
  %125 = phi ptr [ %61, %64 ], [ %85, %87 ], [ %115, %113 ]
  %126 = icmp eq ptr %48, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = shl nuw i32 1, %47
  br label %155

129:                                              ; preds = %124
  %130 = load i8, ptr %42, align 4, !range !9
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.page, ptr %125, i32 0, i32 1, i32 0, i32 3
  %134 = load i32, ptr %133, align 4
  %135 = inttoptr i32 %134 to ptr
  %136 = load i32, ptr %135, align 4
  br label %144

137:                                              ; preds = %129
  %138 = zext i32 %47 to i64
  %139 = shl i64 4096, %138
  %140 = trunc i64 %139 to i32
  %141 = load ptr, ptr %0, align 4
  %142 = tail call i32 @dma_map_page_attrs(ptr noundef %141, ptr noundef nonnull %125, i32 noundef 0, i32 noundef %140, i32 noundef 0, i32 noundef 0) #6
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %177, label %144

144:                                              ; preds = %137, %132
  %145 = phi i32 [ %136, %132 ], [ %142, %137 ]
  %146 = shl nuw i32 1, %47
  br label %147

147:                                              ; preds = %147, %144
  %148 = phi ptr [ %48, %144 ], [ %151, %147 ]
  %149 = phi i32 [ %145, %144 ], [ %152, %147 ]
  %150 = phi i32 [ %146, %144 ], [ %153, %147 ]
  %151 = getelementptr i32, ptr %148, i32 1
  store i32 %149, ptr %148, align 4
  %152 = add i32 %149, 4096
  %153 = add i32 %150, -1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %147

155:                                              ; preds = %147, %127
  %156 = phi i32 [ %128, %127 ], [ %146, %147 ]
  %157 = phi ptr [ null, %127 ], [ %151, %147 ]
  br label %158

158:                                              ; preds = %158, %155
  %159 = phi ptr [ %46, %155 ], [ %163, %158 ]
  %160 = phi i32 [ %156, %155 ], [ %164, %158 ]
  %161 = phi ptr [ %125, %155 ], [ %162, %158 ]
  %162 = getelementptr %struct.page, ptr %161, i32 1
  %163 = getelementptr ptr, ptr %159, i32 1
  store ptr %161, ptr %159, align 4
  %164 = add i32 %160, -1
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %158

166:                                              ; preds = %158
  %167 = sub i32 %45, %156
  br label %168

168:                                              ; preds = %166, %122
  %169 = phi ptr [ %48, %122 ], [ %157, %166 ]
  %170 = phi i32 [ %123, %122 ], [ %47, %166 ]
  %171 = phi ptr [ %46, %122 ], [ %163, %166 ]
  %172 = phi i32 [ %45, %122 ], [ %167, %166 ]
  %173 = tail call i32 @llvm.ctlz.i32(i32 %172, i1 false) #6, !range !10
  %174 = sub nsw i32 31, %173
  %175 = tail call i32 @llvm.umin.i32(i32 %170, i32 %174)
  %176 = icmp eq i32 %172, 0
  br i1 %176, label %232, label %44

177:                                              ; preds = %137
  %178 = icmp eq ptr %0, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %177
  %180 = load i8, ptr %42, align 4, !range !9
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %179, %177
  tail call void @__free_pages(ptr noundef nonnull %125, i32 noundef %47) #6
  br label %196

183:                                              ; preds = %179
  %184 = icmp eq i32 %47, 0
  %185 = select i1 %184, i32 64, i32 320
  %186 = getelementptr inbounds %struct.page, ptr %125, i32 0, i32 1, i32 0, i32 3
  %187 = load i32, ptr %186, align 4
  %188 = inttoptr i32 %187 to ptr
  %189 = getelementptr inbounds %struct.ttm_pool_dma, ptr %188, i32 0, i32 1
  %190 = load i32, ptr %189, align 4
  %191 = and i32 %190, -4096
  %192 = inttoptr i32 %191 to ptr
  %193 = load ptr, ptr %0, align 4
  %194 = shl i32 4096, %47
  %195 = load i32, ptr %188, align 4
  tail call void @dma_free_attrs(ptr noundef %193, i32 noundef %194, ptr noundef %192, i32 noundef %195, i32 noundef %185) #6
  tail call void @kfree(ptr noundef %188) #6
  br label %196

196:                                              ; preds = %183, %182, %121
  %197 = phi i32 [ -14, %182 ], [ -14, %183 ], [ -12, %121 ]
  %198 = load i32, ptr %4, align 4
  %199 = sub i32 %198, %45
  %200 = icmp eq i32 %198, %45
  br i1 %200, label %232, label %201

201:                                              ; preds = %196
  %202 = icmp eq ptr %0, null
  br label %203

203:                                              ; preds = %227, %201
  %204 = phi i32 [ 0, %201 ], [ %230, %227 ]
  %205 = load ptr, ptr %1, align 4
  %206 = getelementptr ptr, ptr %205, i32 %204
  %207 = load ptr, ptr %206, align 4
  %208 = load i8, ptr %42, align 4, !range !9
  %209 = icmp eq i8 %208, 0
  %210 = getelementptr inbounds %struct.page, ptr %207, i32 0, i32 1, i32 0, i32 3
  %211 = load i32, ptr %210, align 4
  br i1 %209, label %217, label %212

212:                                              ; preds = %203
  %213 = inttoptr i32 %211 to ptr
  %214 = getelementptr inbounds %struct.ttm_pool_dma, ptr %213, i32 0, i32 1
  %215 = load i32, ptr %214, align 4
  %216 = and i32 %215, 4095
  br i1 %202, label %217, label %219

217:                                              ; preds = %212, %203
  %218 = phi i32 [ %216, %212 ], [ %211, %203 ]
  tail call void @__free_pages(ptr noundef %207, i32 noundef %218) #6
  br label %227

219:                                              ; preds = %212
  %220 = icmp eq i32 %216, 0
  %221 = select i1 %220, i32 64, i32 320
  %222 = and i32 %215, -4096
  %223 = inttoptr i32 %222 to ptr
  %224 = load ptr, ptr %0, align 4
  %225 = shl i32 4096, %216
  %226 = load i32, ptr %213, align 4
  tail call void @dma_free_attrs(ptr noundef %224, i32 noundef %225, ptr noundef %223, i32 noundef %226, i32 noundef %221) #6
  tail call void @kfree(ptr noundef %213) #6
  br label %227

227:                                              ; preds = %219, %217
  %228 = phi i32 [ %218, %217 ], [ %216, %219 ]
  %229 = shl nuw i32 1, %228
  %230 = add i32 %229, %204
  %231 = icmp ult i32 %230, %199
  br i1 %231, label %203, label %232

232:                                              ; preds = %227, %196, %168, %21
  %233 = phi i32 [ %197, %196 ], [ 0, %21 ], [ %197, %227 ], [ 0, %168 ]
  ret i32 %233
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_pool_free(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ttm_pool, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 4
  %9 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 6
  %10 = icmp eq ptr %0, null
  br label %15

11:                                               ; preds = %117, %2
  %12 = load volatile i32, ptr @allocated_pages, align 4
  %13 = load i32, ptr @page_pool_size, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %122, label %127

15:                                               ; preds = %117, %6
  %16 = phi i32 [ 0, %6 ], [ %119, %117 ]
  %17 = load ptr, ptr %1, align 4
  %18 = getelementptr ptr, ptr %17, i32 %16
  %19 = load ptr, ptr %18, align 4
  %20 = load i8, ptr %7, align 4, !range !9
  %21 = icmp eq i8 %20, 0
  %22 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  br i1 %21, label %24, label %34

24:                                               ; preds = %15
  %25 = zext i32 %23 to i64
  %26 = shl nuw i64 1, %25
  %27 = trunc i64 %26 to i32
  %28 = load ptr, ptr %8, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load ptr, ptr %1, align 4
  %32 = getelementptr ptr, ptr %31, i32 %16
  %33 = load ptr, ptr %32, align 4
  br label %100

34:                                               ; preds = %15
  %35 = inttoptr i32 %23 to ptr
  %36 = getelementptr inbounds %struct.ttm_pool_dma, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 4095
  %39 = zext i32 %38 to i64
  %40 = shl nuw i64 1, %39
  %41 = trunc i64 %40 to i32
  br label %48

42:                                               ; preds = %24
  %43 = getelementptr i32, ptr %28, i32 %16
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %0, align 4
  %46 = shl i32 %27, 12
  tail call void @dma_unmap_page_attrs(ptr noundef %45, i32 noundef %44, i32 noundef %46, i32 noundef 0, i32 noundef 0) #6
  %47 = load i8, ptr %7, align 4, !range !9
  br label %48

48:                                               ; preds = %42, %34
  %49 = phi i8 [ %47, %42 ], [ 1, %34 ]
  %50 = phi i32 [ %27, %42 ], [ %41, %34 ]
  %51 = phi i32 [ %23, %42 ], [ %38, %34 ]
  %52 = load i32, ptr %9, align 4
  %53 = icmp eq i8 %49, 0
  %54 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 %52
  %55 = getelementptr [12 x %struct.ttm_pool_type], ptr %54, i32 0, i32 %51
  %56 = icmp eq ptr %55, null
  %57 = select i1 %53, i1 true, i1 %56
  %58 = load ptr, ptr %1, align 4
  %59 = getelementptr ptr, ptr %58, i32 %16
  %60 = load ptr, ptr %59, align 4
  br i1 %57, label %98, label %61

61:                                               ; preds = %48
  %62 = getelementptr [12 x %struct.ttm_pool_type], ptr %54, i32 0, i32 %51, i32 1
  %63 = load i32, ptr %62, align 4
  br label %64

64:                                               ; preds = %82, %61
  %65 = phi i32 [ 0, %61 ], [ %83, %82 ]
  %66 = load i32, ptr %60, align 4
  %67 = lshr i32 %66, 30
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = icmp ne i32 %67, 3
  %71 = load i32, ptr @movable_zone, align 4
  %72 = icmp ne i32 %71, 2
  %73 = select i1 %70, i1 true, i1 %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %69, %64
  %75 = getelementptr %struct.page, ptr %60, i32 %65
  %76 = load i32, ptr @pgprot_kernel, align 4
  %77 = or i32 %76, 512
  %78 = tail call ptr @__kmap_local_page_prot(ptr noundef %75, i32 noundef %77) #6
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %78, i8 0, i32 4096, i1 false) #6
  tail call void @kunmap_local_indexed(ptr noundef %78) #6
  br label %82

79:                                               ; preds = %69
  %80 = getelementptr %struct.page, ptr %60, i32 %65
  %81 = tail call ptr @page_address(ptr noundef %80) #6
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %81, i8 0, i32 4096, i1 false) #6
  br label %82

82:                                               ; preds = %79, %74
  %83 = add i32 %65, 1
  %84 = lshr i32 %83, %63
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %64, label %86

86:                                               ; preds = %82
  %87 = getelementptr [12 x %struct.ttm_pool_type], ptr %54, i32 0, i32 %51, i32 4
  tail call void @_raw_spin_lock(ptr noundef %87) #6
  %88 = getelementptr inbounds %struct.page, ptr %60, i32 0, i32 1
  %89 = getelementptr [12 x %struct.ttm_pool_type], ptr %54, i32 0, i32 %51, i32 5
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  store ptr %88, ptr %91, align 4
  store ptr %90, ptr %88, align 4
  %92 = getelementptr inbounds %struct.page, ptr %60, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %89, ptr %92, align 4
  store volatile ptr %88, ptr %89, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %93 = load i16, ptr %87, align 4
  %94 = add i16 %93, 1
  store i16 %94, ptr %87, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %95 = load i32, ptr %62, align 4
  %96 = shl nuw i32 1, %95
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @allocated_pages) #6, !srcloc !11
  %97 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @allocated_pages, ptr nonnull @allocated_pages, i32 %96, ptr nonnull elementtype(i32) @allocated_pages) #6, !srcloc !17
  br label %117

98:                                               ; preds = %48
  %99 = select i1 %10, i1 true, i1 %53
  br i1 %99, label %100, label %104

100:                                              ; preds = %98, %30
  %101 = phi ptr [ %33, %30 ], [ %60, %98 ]
  %102 = phi i32 [ %27, %30 ], [ %50, %98 ]
  %103 = phi i32 [ %23, %30 ], [ %51, %98 ]
  tail call void @__free_pages(ptr noundef %101, i32 noundef %103) #6
  br label %117

104:                                              ; preds = %98
  %105 = icmp eq i32 %51, 0
  %106 = select i1 %105, i32 64, i32 320
  %107 = getelementptr inbounds %struct.page, ptr %60, i32 0, i32 1, i32 0, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = inttoptr i32 %108 to ptr
  %110 = getelementptr inbounds %struct.ttm_pool_dma, ptr %109, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, -4096
  %113 = inttoptr i32 %112 to ptr
  %114 = load ptr, ptr %0, align 4
  %115 = shl i32 4096, %51
  %116 = load i32, ptr %109, align 4
  tail call void @dma_free_attrs(ptr noundef %114, i32 noundef %115, ptr noundef %113, i32 noundef %116, i32 noundef %106) #6
  tail call void @kfree(ptr noundef %109) #6
  br label %117

117:                                              ; preds = %104, %100, %86
  %118 = phi i32 [ %50, %104 ], [ %102, %100 ], [ %50, %86 ]
  %119 = add i32 %118, %16
  %120 = load i32, ptr %3, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %15, label %11

122:                                              ; preds = %122, %11
  %123 = tail call fastcc i32 @ttm_pool_shrink()
  %124 = load volatile i32, ptr @allocated_pages, align 4
  %125 = load i32, ptr @page_pool_size, align 4
  %126 = icmp ugt i32 %124, %125
  br i1 %126, label %122, label %127

127:                                              ; preds = %122, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ttm_pool_shrink() unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #6
  %1 = load ptr, ptr @shrinker_list, align 4
  %2 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  store ptr %1, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  store ptr @shrinker_list, ptr %1, align 4
  store ptr %6, ptr %2, align 4
  store volatile ptr %1, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %7 = load i16, ptr @shrinker_lock, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr @shrinker_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %9 = getelementptr i8, ptr %1, i32 8
  tail call void @_raw_spin_lock(ptr noundef %9) #6
  %10 = getelementptr i8, ptr %1, i32 12
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  %13 = getelementptr i8, ptr %11, i32 -4
  %14 = icmp eq ptr %13, null
  %15 = or i1 %12, %14
  br i1 %15, label %52, label %16

16:                                               ; preds = %0
  %17 = getelementptr i8, ptr %1, i32 -12
  %18 = getelementptr i8, ptr %1, i32 -8
  %19 = load i32, ptr %18, align 4
  %20 = shl nuw i32 1, %19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @allocated_pages) #6, !srcloc !11
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @allocated_pages, ptr nonnull @allocated_pages, i32 %20, ptr nonnull elementtype(i32) @allocated_pages) #6, !srcloc !12
  %22 = getelementptr i8, ptr %11, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %11, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %26 = load i16, ptr %9, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %28 = load ptr, ptr %17, align 4
  %29 = load i32, ptr %18, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.ttm_pool, ptr %28, i32 0, i32 1
  %33 = load i8, ptr %32, align 4, !range !9
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %16
  tail call void @__free_pages(ptr noundef nonnull %13, i32 noundef %29) #6
  br label %49

36:                                               ; preds = %31
  %37 = icmp eq i32 %29, 0
  %38 = select i1 %37, i32 64, i32 320
  %39 = getelementptr i8, ptr %11, i32 16
  %40 = load i32, ptr %39, align 4
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr inbounds %struct.ttm_pool_dma, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, -4096
  %45 = inttoptr i32 %44 to ptr
  %46 = load ptr, ptr %28, align 4
  %47 = shl i32 4096, %29
  %48 = load i32, ptr %41, align 4
  tail call void @dma_free_attrs(ptr noundef %46, i32 noundef %47, ptr noundef %45, i32 noundef %48, i32 noundef %38) #6
  tail call void @kfree(ptr noundef %41) #6
  br label %49

49:                                               ; preds = %36, %35
  %50 = load i32, ptr %18, align 4
  %51 = shl nuw i32 1, %50
  br label %55

52:                                               ; preds = %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %53 = load i16, ptr %9, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i32 [ %51, %49 ], [ 0, %52 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_pool_init(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = zext i1 %2 to i8
  %6 = zext i1 %3 to i8
  %7 = icmp eq ptr %1, null
  %8 = and i1 %7, %2
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 502, i32 noundef 9, ptr noundef null) #6
  br label %10

10:                                               ; preds = %9, %4
  store ptr %1, ptr %0, align 4
  %11 = getelementptr inbounds %struct.ttm_pool, ptr %0, i32 0, i32 1
  store i8 %5, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ttm_pool, ptr %0, i32 0, i32 2
  store i8 %6, ptr %12, align 1
  br i1 %2, label %13, label %64

13:                                               ; preds = %10
  %14 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 0
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ 0, %13 ], [ %28, %15 ]
  %17 = getelementptr [12 x %struct.ttm_pool_type], ptr %14, i32 0, i32 %16
  store ptr %0, ptr %17, align 4
  %18 = getelementptr [12 x %struct.ttm_pool_type], ptr %14, i32 0, i32 %16, i32 2
  store i32 0, ptr %18, align 4
  %19 = getelementptr [12 x %struct.ttm_pool_type], ptr %14, i32 0, i32 %16, i32 1
  store i32 %16, ptr %19, align 4
  %20 = getelementptr [12 x %struct.ttm_pool_type], ptr %14, i32 0, i32 %16, i32 4
  store i32 0, ptr %20, align 4
  %21 = getelementptr [12 x %struct.ttm_pool_type], ptr %14, i32 0, i32 %16, i32 5
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr [12 x %struct.ttm_pool_type], ptr %14, i32 0, i32 %16, i32 5, i32 1
  store ptr %21, ptr %22, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #6
  %23 = getelementptr [12 x %struct.ttm_pool_type], ptr %14, i32 0, i32 %16, i32 3
  %24 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  store ptr %23, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  store ptr @shrinker_list, ptr %23, align 4
  %25 = getelementptr [12 x %struct.ttm_pool_type], ptr %14, i32 0, i32 %16, i32 3, i32 1
  store ptr %24, ptr %25, align 4
  store volatile ptr %23, ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %26 = load i16, ptr @shrinker_lock, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr @shrinker_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %28 = add nuw nsw i32 %16, 1
  %29 = icmp eq i32 %28, 12
  br i1 %29, label %30, label %15

30:                                               ; preds = %15
  %31 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 1
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i32 [ 0, %30 ], [ %45, %32 ]
  %34 = getelementptr [12 x %struct.ttm_pool_type], ptr %31, i32 0, i32 %33
  store ptr %0, ptr %34, align 4
  %35 = getelementptr [12 x %struct.ttm_pool_type], ptr %31, i32 0, i32 %33, i32 2
  store i32 1, ptr %35, align 4
  %36 = getelementptr [12 x %struct.ttm_pool_type], ptr %31, i32 0, i32 %33, i32 1
  store i32 %33, ptr %36, align 4
  %37 = getelementptr [12 x %struct.ttm_pool_type], ptr %31, i32 0, i32 %33, i32 4
  store i32 0, ptr %37, align 4
  %38 = getelementptr [12 x %struct.ttm_pool_type], ptr %31, i32 0, i32 %33, i32 5
  store volatile ptr %38, ptr %38, align 4
  %39 = getelementptr [12 x %struct.ttm_pool_type], ptr %31, i32 0, i32 %33, i32 5, i32 1
  store ptr %38, ptr %39, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #6
  %40 = getelementptr [12 x %struct.ttm_pool_type], ptr %31, i32 0, i32 %33, i32 3
  %41 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  store ptr %40, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  store ptr @shrinker_list, ptr %40, align 4
  %42 = getelementptr [12 x %struct.ttm_pool_type], ptr %31, i32 0, i32 %33, i32 3, i32 1
  store ptr %41, ptr %42, align 4
  store volatile ptr %40, ptr %41, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %43 = load i16, ptr @shrinker_lock, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr @shrinker_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %45 = add nuw nsw i32 %33, 1
  %46 = icmp eq i32 %45, 12
  br i1 %46, label %47, label %32

47:                                               ; preds = %32
  %48 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 2
  br label %49

49:                                               ; preds = %49, %47
  %50 = phi i32 [ 0, %47 ], [ %62, %49 ]
  %51 = getelementptr [12 x %struct.ttm_pool_type], ptr %48, i32 0, i32 %50
  store ptr %0, ptr %51, align 4
  %52 = getelementptr [12 x %struct.ttm_pool_type], ptr %48, i32 0, i32 %50, i32 2
  store i32 2, ptr %52, align 4
  %53 = getelementptr [12 x %struct.ttm_pool_type], ptr %48, i32 0, i32 %50, i32 1
  store i32 %50, ptr %53, align 4
  %54 = getelementptr [12 x %struct.ttm_pool_type], ptr %48, i32 0, i32 %50, i32 4
  store i32 0, ptr %54, align 4
  %55 = getelementptr [12 x %struct.ttm_pool_type], ptr %48, i32 0, i32 %50, i32 5
  store volatile ptr %55, ptr %55, align 4
  %56 = getelementptr [12 x %struct.ttm_pool_type], ptr %48, i32 0, i32 %50, i32 5, i32 1
  store ptr %55, ptr %56, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #6
  %57 = getelementptr [12 x %struct.ttm_pool_type], ptr %48, i32 0, i32 %50, i32 3
  %58 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  store ptr %57, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  store ptr @shrinker_list, ptr %57, align 4
  %59 = getelementptr [12 x %struct.ttm_pool_type], ptr %48, i32 0, i32 %50, i32 3, i32 1
  store ptr %58, ptr %59, align 4
  store volatile ptr %57, ptr %58, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %60 = load i16, ptr @shrinker_lock, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr @shrinker_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %62 = add nuw nsw i32 %50, 1
  %63 = icmp eq i32 %62, 12
  br i1 %63, label %64, label %49

64:                                               ; preds = %49, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_pool_fini(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ttm_pool, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 4, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %42, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 0
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %6)
  %7 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 1
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %7)
  %8 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 2
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %8)
  %9 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 3
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %9)
  %10 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 4
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %10)
  %11 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 5
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %11)
  %12 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 6
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %12)
  %13 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 7
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %13)
  %14 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 8
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %14)
  %15 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 9
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %15)
  %16 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 10
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %16)
  %17 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 11
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %17)
  %18 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 1
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %18)
  %19 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 1
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %19)
  %20 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 2
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %20)
  %21 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 3
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %21)
  %22 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 4
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %22)
  %23 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 5
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %23)
  %24 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 6
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %24)
  %25 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 7
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %25)
  %26 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 8
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %26)
  %27 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 9
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %27)
  %28 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 10
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %28)
  %29 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 1, i32 0, i32 11
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %29)
  %30 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 2
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %30)
  %31 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 2, i32 0, i32 1
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %31)
  %32 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 2, i32 0, i32 2
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %32)
  %33 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 2, i32 0, i32 3
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %33)
  %34 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 2, i32 0, i32 4
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %34)
  %35 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 2, i32 0, i32 5
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %35)
  %36 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 2, i32 0, i32 6
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %36)
  %37 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 2, i32 0, i32 7
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %37)
  %38 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 2, i32 0, i32 8
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %38)
  %39 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 2, i32 0, i32 9
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %39)
  %40 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 2, i32 0, i32 10
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %40)
  %41 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 2, i32 0, i32 11
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %41)
  br label %42

42:                                               ; preds = %5, %1
  tail call void @synchronize_shrinkers() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ttm_pool_type_fini(ptr noundef %0) unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #6
  %2 = getelementptr inbounds %struct.ttm_pool_type, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ttm_pool_type, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %7 = load i16, ptr @shrinker_lock, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr @shrinker_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %9 = getelementptr inbounds %struct.ttm_pool_type, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %9) #6
  %10 = getelementptr inbounds %struct.ttm_pool_type, ptr %0, i32 0, i32 5
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  %13 = getelementptr i8, ptr %11, i32 -4
  %14 = icmp eq ptr %13, null
  %15 = or i1 %12, %14
  br i1 %15, label %57, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.ttm_pool_type, ptr %0, i32 0, i32 1
  br label %18

18:                                               ; preds = %51, %16
  %19 = phi ptr [ %13, %16 ], [ %54, %51 ]
  %20 = phi ptr [ %11, %16 ], [ %52, %51 ]
  %21 = load i32, ptr %17, align 4
  %22 = shl nuw i32 1, %21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @allocated_pages) #6, !srcloc !11
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @allocated_pages, ptr nonnull @allocated_pages, i32 %22, ptr nonnull elementtype(i32) @allocated_pages) #6, !srcloc !12
  %24 = getelementptr i8, ptr %20, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %20, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %28 = load i16, ptr %9, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %30 = load ptr, ptr %0, align 4
  %31 = load i32, ptr %17, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.ttm_pool, ptr %30, i32 0, i32 1
  %35 = load i8, ptr %34, align 4, !range !9
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %18
  tail call void @__free_pages(ptr noundef nonnull %19, i32 noundef %31) #6
  br label %51

38:                                               ; preds = %33
  %39 = icmp eq i32 %31, 0
  %40 = select i1 %39, i32 64, i32 320
  %41 = getelementptr i8, ptr %20, i32 16
  %42 = load i32, ptr %41, align 4
  %43 = inttoptr i32 %42 to ptr
  %44 = getelementptr inbounds %struct.ttm_pool_dma, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, -4096
  %47 = inttoptr i32 %46 to ptr
  %48 = load ptr, ptr %30, align 4
  %49 = shl i32 4096, %31
  %50 = load i32, ptr %43, align 4
  tail call void @dma_free_attrs(ptr noundef %48, i32 noundef %49, ptr noundef %47, i32 noundef %50, i32 noundef %40) #6
  tail call void @kfree(ptr noundef %43) #6
  br label %51

51:                                               ; preds = %38, %37
  tail call void @_raw_spin_lock(ptr noundef %9) #6
  %52 = load volatile ptr, ptr %10, align 4
  %53 = icmp eq ptr %52, %10
  %54 = getelementptr i8, ptr %52, i32 -4
  %55 = icmp eq ptr %54, null
  %56 = or i1 %53, %55
  br i1 %56, label %57, label %18

57:                                               ; preds = %51, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %58 = load i16, ptr %9, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_shrinkers() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_pool_debugfs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ttm_pool, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 4, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  br label %63

7:                                                ; preds = %2
  tail call fastcc void @ttm_pool_debugfs_header(ptr noundef %1)
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #6
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.2) #6
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.5) #6
  %8 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 0
  br label %9

9:                                                ; preds = %19, %7
  %10 = phi i32 [ 0, %7 ], [ %22, %19 ]
  %11 = getelementptr %struct.ttm_pool_type, ptr %8, i32 %10, i32 4
  tail call void @_raw_spin_lock(ptr noundef %11) #6
  %12 = getelementptr %struct.ttm_pool_type, ptr %8, i32 %10, i32 5
  br label %13

13:                                               ; preds = %13, %9
  %14 = phi ptr [ %12, %9 ], [ %16, %13 ]
  %15 = phi i32 [ 0, %9 ], [ %18, %13 ]
  %16 = load ptr, ptr %14, align 4
  %17 = icmp eq ptr %16, %12
  %18 = add i32 %15, 1
  br i1 %17, label %19, label %13

19:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %20 = load i16, ptr %11, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %15) #6
  %22 = add nuw nsw i32 %10, 1
  %23 = icmp eq i32 %22, 12
  br i1 %23, label %24, label %9

24:                                               ; preds = %19
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.10) #6
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.2) #6
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.4) #6
  %25 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 1
  br label %26

26:                                               ; preds = %36, %24
  %27 = phi i32 [ 0, %24 ], [ %39, %36 ]
  %28 = getelementptr %struct.ttm_pool_type, ptr %25, i32 %27, i32 4
  tail call void @_raw_spin_lock(ptr noundef %28) #6
  %29 = getelementptr %struct.ttm_pool_type, ptr %25, i32 %27, i32 5
  br label %30

30:                                               ; preds = %30, %26
  %31 = phi ptr [ %29, %26 ], [ %33, %30 ]
  %32 = phi i32 [ 0, %26 ], [ %35, %30 ]
  %33 = load ptr, ptr %31, align 4
  %34 = icmp eq ptr %33, %29
  %35 = add i32 %32, 1
  br i1 %34, label %36, label %30

36:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %37 = load i16, ptr %28, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %32) #6
  %39 = add nuw nsw i32 %27, 1
  %40 = icmp eq i32 %39, 12
  br i1 %40, label %41, label %26

41:                                               ; preds = %36
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.10) #6
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.2) #6
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.3) #6
  %42 = getelementptr %struct.ttm_pool, ptr %0, i32 0, i32 3, i32 2
  br label %43

43:                                               ; preds = %53, %41
  %44 = phi i32 [ 0, %41 ], [ %56, %53 ]
  %45 = getelementptr %struct.ttm_pool_type, ptr %42, i32 %44, i32 4
  tail call void @_raw_spin_lock(ptr noundef %45) #6
  %46 = getelementptr %struct.ttm_pool_type, ptr %42, i32 %44, i32 5
  br label %47

47:                                               ; preds = %47, %43
  %48 = phi ptr [ %46, %43 ], [ %50, %47 ]
  %49 = phi i32 [ 0, %43 ], [ %52, %47 ]
  %50 = load ptr, ptr %48, align 4
  %51 = icmp eq ptr %50, %46
  %52 = add i32 %49, 1
  br i1 %51, label %53, label %47

53:                                               ; preds = %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %54 = load i16, ptr %45, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %45, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %49) #6
  %56 = add nuw nsw i32 %44, 1
  %57 = icmp eq i32 %56, 12
  br i1 %57, label %58, label %43

58:                                               ; preds = %53
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.10) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %59 = load i16, ptr @shrinker_lock, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr @shrinker_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %61 = load volatile i32, ptr @allocated_pages, align 4
  %62 = load i32, ptr @page_pool_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %61, i32 noundef %62) #6
  br label %63

63:                                               ; preds = %58, %6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ttm_pool_debugfs_header(ptr noundef %0) unnamed_addr #0 {
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.8) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 0) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 1) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 2) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 3) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 4) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 5) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 6) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 7) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 8) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 9) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 10) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 11) #6
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.10) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_pool_mgr_init(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @page_pool_size, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i32 %0, ptr @page_pool_size, align 4
  br label %5

5:                                                ; preds = %4, %1
  store i32 0, ptr @shrinker_lock, align 4
  store volatile ptr @shrinker_list, ptr @shrinker_list, align 4
  store ptr @shrinker_list, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  br label %6

6:                                                ; preds = %6, %5
  %7 = phi i32 [ 0, %5 ], [ %52, %6 ]
  %8 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_write_combined, i32 0, i32 %7
  store ptr null, ptr %8, align 4
  %9 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_write_combined, i32 0, i32 %7, i32 2
  store i32 1, ptr %9, align 4
  %10 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_write_combined, i32 0, i32 %7, i32 1
  store i32 %7, ptr %10, align 4
  %11 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_write_combined, i32 0, i32 %7, i32 4
  store i32 0, ptr %11, align 4
  %12 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_write_combined, i32 0, i32 %7, i32 5
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_write_combined, i32 0, i32 %7, i32 5, i32 1
  store ptr %12, ptr %13, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #6
  %14 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_write_combined, i32 0, i32 %7, i32 3
  %15 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  store ptr %14, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  store ptr @shrinker_list, ptr %14, align 4
  %16 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_write_combined, i32 0, i32 %7, i32 3, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %14, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %17 = load i16, ptr @shrinker_lock, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr @shrinker_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %19 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_uncached, i32 0, i32 %7
  store ptr null, ptr %19, align 4
  %20 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_uncached, i32 0, i32 %7, i32 2
  store i32 0, ptr %20, align 4
  %21 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_uncached, i32 0, i32 %7, i32 1
  store i32 %7, ptr %21, align 4
  %22 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_uncached, i32 0, i32 %7, i32 4
  store i32 0, ptr %22, align 4
  %23 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_uncached, i32 0, i32 %7, i32 5
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_uncached, i32 0, i32 %7, i32 5, i32 1
  store ptr %23, ptr %24, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #6
  %25 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_uncached, i32 0, i32 %7, i32 3
  %26 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  store ptr %25, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  store ptr @shrinker_list, ptr %25, align 4
  %27 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_uncached, i32 0, i32 %7, i32 3, i32 1
  store ptr %26, ptr %27, align 4
  store volatile ptr %25, ptr %26, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %28 = load i16, ptr @shrinker_lock, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr @shrinker_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %30 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i32 0, i32 %7
  store ptr null, ptr %30, align 4
  %31 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i32 0, i32 %7, i32 2
  store i32 1, ptr %31, align 4
  %32 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i32 0, i32 %7, i32 1
  store i32 %7, ptr %32, align 4
  %33 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i32 0, i32 %7, i32 4
  store i32 0, ptr %33, align 4
  %34 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i32 0, i32 %7, i32 5
  store volatile ptr %34, ptr %34, align 4
  %35 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i32 0, i32 %7, i32 5, i32 1
  store ptr %34, ptr %35, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #6
  %36 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i32 0, i32 %7, i32 3
  %37 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  store ptr %36, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  store ptr @shrinker_list, ptr %36, align 4
  %38 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i32 0, i32 %7, i32 3, i32 1
  store ptr %37, ptr %38, align 4
  store volatile ptr %36, ptr %37, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %39 = load i16, ptr @shrinker_lock, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr @shrinker_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %41 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i32 0, i32 %7
  store ptr null, ptr %41, align 4
  %42 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i32 0, i32 %7, i32 2
  store i32 0, ptr %42, align 4
  %43 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i32 0, i32 %7, i32 1
  store i32 %7, ptr %43, align 4
  %44 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i32 0, i32 %7, i32 4
  store i32 0, ptr %44, align 4
  %45 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i32 0, i32 %7, i32 5
  store volatile ptr %45, ptr %45, align 4
  %46 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i32 0, i32 %7, i32 5, i32 1
  store ptr %45, ptr %46, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #6
  %47 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i32 0, i32 %7, i32 3
  %48 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  store ptr %47, ptr getelementptr inbounds (%struct.list_head, ptr @shrinker_list, i32 0, i32 1), align 4
  store ptr @shrinker_list, ptr %47, align 4
  %49 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i32 0, i32 %7, i32 3, i32 1
  store ptr %48, ptr %49, align 4
  store volatile ptr %47, ptr %48, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %50 = load i16, ptr @shrinker_lock, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr @shrinker_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %52 = add nuw nsw i32 %7, 1
  %53 = icmp eq i32 %52, 12
  br i1 %53, label %54, label %6

54:                                               ; preds = %6
  %55 = load ptr, ptr @ttm_debugfs_root, align 4
  %56 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %55, ptr noundef null, ptr noundef nonnull @ttm_pool_debugfs_globals_fops) #6
  %57 = load ptr, ptr @ttm_debugfs_root, align 4
  %58 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef %57, ptr noundef null, ptr noundef nonnull @ttm_pool_debugfs_shrink_fops) #6
  store ptr @ttm_pool_shrinker_count, ptr @mm_shrinker, align 4
  store ptr @ttm_pool_shrinker_scan, ptr getelementptr inbounds (%struct.shrinker, ptr @mm_shrinker, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds (%struct.shrinker, ptr @mm_shrinker, i32 0, i32 3), align 4
  %59 = tail call i32 @register_shrinker(ptr noundef nonnull @mm_shrinker) #6
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ttm_pool_shrinker_count(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #2 {
  %3 = load volatile i32, ptr @allocated_pages, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 -2, i32 %3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttm_pool_shrinker_scan(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  br label %3

3:                                                ; preds = %6, %2
  %4 = tail call fastcc i32 @ttm_pool_shrink()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load volatile i32, ptr @allocated_pages, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %3

9:                                                ; preds = %6, %3
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_pool_mgr_fini() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %7, %1 ]
  %3 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_write_combined, i32 0, i32 %2
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %3)
  %4 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_uncached, i32 0, i32 %2
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %4)
  %5 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_write_combined, i32 0, i32 %2
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %5)
  %6 = getelementptr [12 x %struct.ttm_pool_type], ptr @global_dma32_uncached, i32 0, i32 %2
  tail call fastcc void @ttm_pool_type_fini(ptr noundef %6)
  %7 = add nuw nsw i32 %2, 1
  %8 = icmp eq i32 %7, 12
  br i1 %8, label %9, label %1

9:                                                ; preds = %1
  tail call void @unregister_shrinker(ptr noundef nonnull @mm_shrinker) #6
  %10 = load volatile ptr, ptr @shrinker_list, align 4
  %11 = icmp eq ptr %10, @shrinker_list
  br i1 %11, label %13, label %12, !prof !18

12:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 746, i32 noundef 9, ptr noundef null) #6
  br label %13

13:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttm_pool_debugfs_globals_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @ttm_pool_debugfs_globals_show, ptr noundef %4) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttm_pool_debugfs_globals_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call fastcc void @ttm_pool_debugfs_header(ptr noundef %0)
  tail call void @_raw_spin_lock(ptr noundef nonnull @shrinker_lock) #6
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.4) #6
  br label %3

3:                                                ; preds = %13, %2
  %4 = phi i32 [ 0, %2 ], [ %16, %13 ]
  %5 = getelementptr %struct.ttm_pool_type, ptr @global_write_combined, i32 %4, i32 4
  tail call void @_raw_spin_lock(ptr noundef %5) #6
  %6 = getelementptr %struct.ttm_pool_type, ptr @global_write_combined, i32 %4, i32 5
  br label %7

7:                                                ; preds = %7, %3
  %8 = phi ptr [ %6, %3 ], [ %10, %7 ]
  %9 = phi i32 [ 0, %3 ], [ %12, %7 ]
  %10 = load ptr, ptr %8, align 4
  %11 = icmp eq ptr %10, %6
  %12 = add i32 %9, 1
  br i1 %11, label %13, label %7

13:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %14 = load i16, ptr %5, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %9) #6
  %16 = add nuw nsw i32 %4, 1
  %17 = icmp eq i32 %16, 12
  br i1 %17, label %18, label %3

18:                                               ; preds = %13
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.10) #6
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.5) #6
  br label %19

19:                                               ; preds = %29, %18
  %20 = phi i32 [ 0, %18 ], [ %32, %29 ]
  %21 = getelementptr %struct.ttm_pool_type, ptr @global_uncached, i32 %20, i32 4
  tail call void @_raw_spin_lock(ptr noundef %21) #6
  %22 = getelementptr %struct.ttm_pool_type, ptr @global_uncached, i32 %20, i32 5
  br label %23

23:                                               ; preds = %23, %19
  %24 = phi ptr [ %22, %19 ], [ %26, %23 ]
  %25 = phi i32 [ 0, %19 ], [ %28, %23 ]
  %26 = load ptr, ptr %24, align 4
  %27 = icmp eq ptr %26, %22
  %28 = add i32 %25, 1
  br i1 %27, label %29, label %23

29:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %30 = load i16, ptr %21, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %25) #6
  %32 = add nuw nsw i32 %20, 1
  %33 = icmp eq i32 %32, 12
  br i1 %33, label %34, label %19

34:                                               ; preds = %29
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.10) #6
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.13) #6
  br label %35

35:                                               ; preds = %45, %34
  %36 = phi i32 [ 0, %34 ], [ %48, %45 ]
  %37 = getelementptr %struct.ttm_pool_type, ptr @global_dma32_write_combined, i32 %36, i32 4
  tail call void @_raw_spin_lock(ptr noundef %37) #6
  %38 = getelementptr %struct.ttm_pool_type, ptr @global_dma32_write_combined, i32 %36, i32 5
  br label %39

39:                                               ; preds = %39, %35
  %40 = phi ptr [ %38, %35 ], [ %42, %39 ]
  %41 = phi i32 [ 0, %35 ], [ %44, %39 ]
  %42 = load ptr, ptr %40, align 4
  %43 = icmp eq ptr %42, %38
  %44 = add i32 %41, 1
  br i1 %43, label %45, label %39

45:                                               ; preds = %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %46 = load i16, ptr %37, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %37, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %41) #6
  %48 = add nuw nsw i32 %36, 1
  %49 = icmp eq i32 %48, 12
  br i1 %49, label %50, label %35

50:                                               ; preds = %45
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.10) #6
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.14) #6
  br label %51

51:                                               ; preds = %61, %50
  %52 = phi i32 [ 0, %50 ], [ %64, %61 ]
  %53 = getelementptr %struct.ttm_pool_type, ptr @global_dma32_uncached, i32 %52, i32 4
  tail call void @_raw_spin_lock(ptr noundef %53) #6
  %54 = getelementptr %struct.ttm_pool_type, ptr @global_dma32_uncached, i32 %52, i32 5
  br label %55

55:                                               ; preds = %55, %51
  %56 = phi ptr [ %54, %51 ], [ %58, %55 ]
  %57 = phi i32 [ 0, %51 ], [ %60, %55 ]
  %58 = load ptr, ptr %56, align 4
  %59 = icmp eq ptr %58, %54
  %60 = add i32 %57, 1
  br i1 %59, label %61, label %55

61:                                               ; preds = %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %62 = load i16, ptr %53, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr %53, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %57) #6
  %64 = add nuw nsw i32 %52, 1
  %65 = icmp eq i32 %64, 12
  br i1 %65, label %66, label %51

66:                                               ; preds = %61
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.10) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %67 = load i16, ptr @shrinker_lock, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr @shrinker_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %69 = load volatile i32, ptr @allocated_pages, align 4
  %70 = load i32, ptr @page_pool_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %69, i32 noundef %70) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttm_pool_debugfs_shrink_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @ttm_pool_debugfs_shrink_show, ptr noundef %4) #6
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttm_pool_debugfs_shrink_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load volatile i32, ptr @allocated_pages, align 4
  br label %4

4:                                                ; preds = %7, %2
  %5 = tail call fastcc i32 @ttm_pool_shrink() #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load volatile i32, ptr @allocated_pages, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %4

10:                                               ; preds = %7, %4
  %11 = icmp eq i32 %3, 0
  %12 = select i1 %11, i32 -2, i32 %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %12, i32 noundef %5) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!9 = !{i8 0, i8 2}
!10 = !{i32 0, i32 33}
!11 = !{i64 558526, i64 2148048497, i64 2148048523, i64 2148048570, i64 2148048592, i64 2148048620, i64 2148048640}
!12 = !{i64 2148062269, i64 2148062295, i64 2148062324, i64 2148062358, i64 2148062389, i64 2148062412}
!13 = !{i64 2148942667}
!14 = !{i64 2148938491}
!15 = !{i64 2148938566, i64 2148938593, i64 2148938640, i64 2148938662, i64 2148938690, i64 2148938710}
!16 = !{i64 2148965670}
!17 = !{i64 2148059912, i64 2148059938, i64 2148059967, i64 2148060001, i64 2148060032, i64 2148060055}
!18 = !{!"branch_weights", i32 2000, i32 1}
