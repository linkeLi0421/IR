; ModuleID = '/llk/IR/kernel/crash_core.c_pt.bc'
source_filename = "../kernel/crash_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_paddr_vmcoreinfo_note:\09\09\09\09\09"
module asm "\09.asciz \09\22paddr_vmcoreinfo_note\22\09\09\09\09\09"
module asm "__kstrtabns_paddr_vmcoreinfo_note:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nodemask_t = type { [1 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.elf32_note = type { i32, i32, i32 }
%struct.__va_list = type { ptr }

@.str = private unnamed_addr constant [13 x i8] c"crashkernel=\00", align 1
@suffix_tbl = internal unnamed_addr constant [3 x ptr] [ptr @.str.12, ptr @.str.13, ptr null], section ".init.data", align 4
@__setup_str_parse_crashkernel_dummy = internal constant [12 x i8] c"crashkernel\00", section ".init.rodata", align 1
@__setup_parse_crashkernel_dummy = internal global %struct.obs_kernel_param { ptr @__setup_str_parse_crashkernel_dummy, ptr @parse_crashkernel_dummy, i32 1 }, section ".init.setup", align 4
@vmcoreinfo_data = dso_local local_unnamed_addr global ptr null, align 4
@vmcoreinfo_size = dso_local local_unnamed_addr global i32 0, align 4
@vmcoreinfo_data_safecopy = internal unnamed_addr global ptr null, align 4
@vmcoreinfo_note = dso_local local_unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"CRASHTIME=%lld\0A\00", align 1
@__kstrtab_paddr_vmcoreinfo_note = external dso_local constant [0 x i8], align 1
@__kstrtabns_paddr_vmcoreinfo_note = external dso_local constant [0 x i8], align 1
@__ksymtab_paddr_vmcoreinfo_note = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @paddr_vmcoreinfo_note to i32), ptr @__kstrtab_paddr_vmcoreinfo_note, ptr @__kstrtabns_paddr_vmcoreinfo_note }, section "___ksymtab+paddr_vmcoreinfo_note", align 4
@__initcall__kmod_crash_core__218_493_crash_save_vmcoreinfo_init4 = internal global ptr @crash_save_vmcoreinfo_init, section ".initcall4.init", align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"\014crashkernel: memory value expected\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\014crashkernel: unrecognized char: %c\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\014crashkernel: Memory value expected\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"\014crashkernel: '-' expected\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"\014crashkernel: end <= start\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\014crashkernel: ':' expected\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"\014Memory value expected\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"\014crashkernel: invalid size\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"\014Memory value expected after '@'\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"\016crashkernel size resulted in zero bytes\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c",high\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c",low\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"VMCOREINFO\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"\014Memory allocation for vmcoreinfo_data failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"\014Memory allocation for vmcoreinfo_note failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"OSRELEASE=%s\0A\00", align 1
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"BUILD-ID=%20phN\0A\00", align 1
@vmlinux_build_id = external dso_local global [20 x i8], align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"PAGESIZE=%ld\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"SYMBOL(%s)=%lx\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"init_uts_ns\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"OFFSET(%s.%s)=%lu\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"uts_namespace\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"node_online_map\00", align 1
@node_states = external dso_local global [7 x %struct.nodemask_t], align 4
@.str.26 = private unnamed_addr constant [15 x i8] c"swapper_pg_dir\00", align 1
@swapper_pg_dir = external dso_local global [2048 x [2 x i32]], align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"_stext\00", align 1
@_stext = external dso_local global [0 x i8], align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"vmap_area_list\00", align 1
@vmap_area_list = external dso_local global %struct.list_head, align 4
@.str.29 = private unnamed_addr constant [8 x i8] c"mem_map\00", align 1
@mem_map = external dso_local global ptr, align 4
@.str.30 = private unnamed_addr constant [17 x i8] c"contig_page_data\00", align 1
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@.str.31 = private unnamed_addr constant [14 x i8] c"SIZE(%s)=%lu\0A\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"page\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"pglist_data\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"zone\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"free_area\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"list_head\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"nodemask_t\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"_refcount\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"mapping\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"lru\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"_mapcount\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"compound_dtor\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"compound_order\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"compound_head\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"node_zones\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"nr_zones\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"node_mem_map\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"node_start_pfn\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"node_spanned_pages\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"node_id\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"vm_stat\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"spanned_pages\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"free_list\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"prev\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"vmap_area\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"va_start\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"LENGTH(%s)=%lu\0A\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"zone.free_area\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"free_area.free_list\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"NUMBER(%s)=%ld\0A\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"NR_FREE_PAGES\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"PG_lru\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"PG_private\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"PG_swapcache\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"PG_swapbacked\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"PG_slab\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"PG_head_mask\00", align 1
@.str.72 = private unnamed_addr constant [26 x i8] c"PAGE_BUDDY_MAPCOUNT_VALUE\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__initcall__kmod_crash_core__218_493_crash_save_vmcoreinfo_init4, ptr @__ksymtab_paddr_vmcoreinfo_note, ptr @__setup_parse_crashkernel_dummy], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @parse_crashkernel(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 section ".init.text" {
  %5 = tail call fastcc i32 @__parse_crashkernel(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null) #16
  ret i32 %5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @__parse_crashkernel(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef writeonly %3, ptr noundef %4) unnamed_addr #0 section ".init.text" {
  %6 = icmp eq ptr %2, null
  %7 = icmp eq ptr %3, null
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/crash_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 241, 0\0A.popsection", ""() #17, !srcloc !9
  unreachable

10:                                               ; preds = %5
  store i64 0, ptr %2, align 8
  store i64 0, ptr %3, align 8
  %11 = tail call fastcc ptr @get_last_crashkernel(ptr noundef %0, ptr noundef %4) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %11, i32 12
  %15 = icmp eq ptr %4, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @parse_crashkernel_suffix(ptr noundef %14, ptr noundef nonnull %2, ptr noundef nonnull %4) #16
  br label %30

18:                                               ; preds = %13
  %19 = tail call ptr @strchr(ptr noundef %14, i32 noundef 58)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @strchr(ptr noundef %14, i32 noundef 32)
  %23 = icmp eq ptr %22, null
  %24 = icmp ult ptr %19, %22
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = tail call fastcc i32 @parse_crashkernel_mem(ptr noundef %14, i64 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  br label %30

28:                                               ; preds = %21, %18
  %29 = tail call fastcc i32 @parse_crashkernel_simple(ptr noundef %14, ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  br label %30

30:                                               ; preds = %28, %26, %16, %10
  %31 = phi i32 [ %17, %16 ], [ %27, %26 ], [ %29, %28 ], [ -22, %10 ]
  ret i32 %31
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @parse_crashkernel_high(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 section ".init.text" {
  %5 = tail call fastcc i32 @__parse_crashkernel(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @.str.12) #16
  ret i32 %5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @parse_crashkernel_low(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 section ".init.text" {
  %5 = tail call fastcc i32 @__parse_crashkernel(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @.str.13) #16
  ret i32 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal i32 @parse_crashkernel_dummy(ptr nocapture noundef readnone %0) #1 section ".init.text" {
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @append_elf_note(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = tail call i32 @strlen(ptr noundef %1)
  %7 = add i32 %6, 1
  store i32 %7, ptr %0, align 4
  %8 = getelementptr inbounds %struct.elf32_note, ptr %0, i32 0, i32 1
  store i32 %4, ptr %8, align 4
  %9 = getelementptr inbounds %struct.elf32_note, ptr %0, i32 0, i32 2
  store i32 %2, ptr %9, align 4
  %10 = getelementptr i32, ptr %0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %10, ptr align 1 %1, i32 %7, i1 false)
  %11 = add i32 %6, 4
  %12 = lshr i32 %11, 2
  %13 = getelementptr i32, ptr %10, i32 %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 1 %3, i32 %4, i1 false)
  %14 = add i32 %4, 3
  %15 = lshr i32 %14, 2
  %16 = getelementptr i32, ptr %13, i32 %15
  ret ptr %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @final_note(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %0, i8 0, i32 12, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @crash_update_vmcoreinfo_safecopy(ptr noundef %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @vmcoreinfo_data, align 4
  %5 = load i32, ptr @vmcoreinfo_size, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %0, ptr align 1 %4, i32 %5, i1 false)
  br label %6

6:                                                ; preds = %3, %1
  store ptr %0, ptr @vmcoreinfo_data_safecopy, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crash_save_vmcoreinfo() local_unnamed_addr #9 {
  %1 = load ptr, ptr @vmcoreinfo_note, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @vmcoreinfo_data_safecopy, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  store ptr %4, ptr @vmcoreinfo_data, align 4
  br label %7

7:                                                ; preds = %6, %3
  %8 = tail call i64 @ktime_get_real_seconds() #17
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.1, i64 noundef %8)
  %9 = load i32, ptr @vmcoreinfo_size, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @vmcoreinfo_note, align 4
  %13 = load ptr, ptr @vmcoreinfo_data, align 4
  store i32 11, ptr %12, align 4
  %14 = getelementptr inbounds %struct.elf32_note, ptr %12, i32 0, i32 1
  store i32 %9, ptr %14, align 4
  %15 = getelementptr inbounds %struct.elf32_note, ptr %12, i32 0, i32 2
  store i32 0, ptr %15, align 4
  %16 = getelementptr i32, ptr %12, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(11) %16, ptr noundef nonnull align 1 dereferenceable(11) @.str.14, i32 11, i1 false) #17
  %17 = getelementptr i32, ptr %12, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %17, ptr align 1 %13, i32 %9, i1 false) #17
  %18 = add i32 %9, 3
  %19 = lshr i32 %18, 2
  %20 = getelementptr i32, ptr %17, i32 %19
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %20, i8 0, i32 12, i1 false) #17
  br label %21

21:                                               ; preds = %11, %7, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vmcoreinfo_append_str(ptr noundef %0, ...) local_unnamed_addr #9 {
  %2 = alloca %struct.__va_list, align 4
  %3 = alloca [80 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %3, i8 0, i32 80, i1 false), !annotation !10
  call void @llvm.va_start(ptr nonnull %2)
  %4 = load i32, ptr %2, align 4
  %5 = insertvalue [1 x i32] poison, i32 %4, 0
  %6 = call i32 @vscnprintf(ptr noundef nonnull %3, i32 noundef 80, ptr noundef %0, [1 x i32] %5) #17
  call void @llvm.va_end(ptr nonnull %2)
  %7 = load i32, ptr @vmcoreinfo_size, align 4
  %8 = sub i32 4096, %7
  %9 = call i32 @llvm.umin.i32(i32 %6, i32 %8)
  %10 = load ptr, ptr @vmcoreinfo_data, align 4
  %11 = getelementptr i8, ptr %10, i32 %7
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %11, ptr nonnull align 1 %3, i32 %9, i1 false)
  %12 = load i32, ptr @vmcoreinfo_size, align 4
  %13 = add i32 %12, %9
  store i32 %13, ptr @vmcoreinfo_size, align 4
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_crash_save_vmcoreinfo() local_unnamed_addr #9 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @paddr_vmcoreinfo_note() #9 {
  %1 = load ptr, ptr @vmcoreinfo_note, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %2, i32 -2130706432, i32 8454144) #18, !srcloc !11
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @crash_save_vmcoreinfo_init() #0 section ".init.text" {
  %1 = tail call i32 @get_zeroed_page(i32 noundef 3264) #17
  %2 = inttoptr i32 %1 to ptr
  store ptr %2, ptr @vmcoreinfo_data, align 4
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #19
  br label %26

6:                                                ; preds = %0
  %7 = tail call noalias ptr @alloc_pages_exact(i32 noundef 4132, i32 noundef 3520) #20
  store ptr %7, ptr @vmcoreinfo_note, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load ptr, ptr @vmcoreinfo_data, align 4
  %11 = ptrtoint ptr %10 to i32
  tail call void @free_pages(i32 noundef %11, i32 noundef 0) #17
  store ptr null, ptr @vmcoreinfo_data, align 4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #19
  br label %26

13:                                               ; preds = %6
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.17, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2))
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.18, ptr noundef nonnull @vmlinux_build_id)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.19, i32 noundef 4096)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef ptrtoint (ptr @init_uts_ns to i32))
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 0)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.25, i32 noundef ptrtoint (ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 1) to i32))
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.26, i32 noundef ptrtoint (ptr @swapper_pg_dir to i32))
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.27, i32 noundef ptrtoint (ptr @_stext to i32))
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.28, i32 noundef ptrtoint (ptr @vmap_area_list to i32))
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.29, i32 noundef ptrtoint (ptr @mem_map to i32))
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.30, i32 noundef ptrtoint (ptr @contig_page_data to i32))
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef 32)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.33, i32 noundef 4096)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34, i32 noundef 896)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.35, i32 noundef 52)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.36, i32 noundef 8)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.37, i32 noundef 4)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.38, i32 noundef 0)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.39, i32 noundef 28)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.40, i32 noundef 12)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.41, i32 noundef 4)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.42, i32 noundef 24)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.43, i32 noundef 20)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.44, i32 noundef 8)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.45, i32 noundef 9)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.46, i32 noundef 4)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.47, i32 noundef 0)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.48, i32 noundef 3624)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.49, i32 noundef 3628)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.50, i32 noundef 3632)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.51, i32 noundef 3640)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.52, i32 noundef 3644)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 128)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.53, i32 noundef 832)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.54, i32 noundef 68)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.55, i32 noundef 0)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.56, i32 noundef 0)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.57, i32 noundef 4)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 0)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.60, i32 noundef 20)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 12)
  tail call void @log_buf_vmcoreinfo_setup() #17
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.63, i32 noundef 6)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, i32 noundef 0)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.66, i32 noundef 4)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.67, i32 noundef 13)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.68, i32 noundef 10)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.69, i32 noundef 19)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.70, i32 noundef 9)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.71, i32 noundef 65536)
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.72, i32 noundef -129)
  tail call void @arch_crash_save_vmcoreinfo()
  %14 = load i32, ptr @vmcoreinfo_size, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @vmcoreinfo_note, align 4
  %18 = load ptr, ptr @vmcoreinfo_data, align 4
  store i32 11, ptr %17, align 4
  %19 = getelementptr inbounds %struct.elf32_note, ptr %17, i32 0, i32 1
  store i32 %14, ptr %19, align 4
  %20 = getelementptr inbounds %struct.elf32_note, ptr %17, i32 0, i32 2
  store i32 0, ptr %20, align 4
  %21 = getelementptr i32, ptr %17, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(11) %21, ptr noundef nonnull align 1 dereferenceable(11) @.str.14, i32 11, i1 false) #17
  %22 = getelementptr i32, ptr %17, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %22, ptr align 1 %18, i32 %14, i1 false) #17
  %23 = add i32 %14, 3
  %24 = lshr i32 %23, 2
  %25 = getelementptr i32, ptr %22, i32 %24
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %25, i8 0, i32 12, i1 false) #17
  br label %26

26:                                               ; preds = %16, %13, %9, %4
  %27 = phi i32 [ -12, %9 ], [ -12, %4 ], [ 0, %13 ], [ 0, %16 ]
  ret i32 %27
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync)
define internal fastcc ptr @get_last_crashkernel(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #12 section ".init.text" {
  %3 = tail call ptr @strstr(ptr noundef %0, ptr noundef nonnull @.str)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br label %7

7:                                                ; preds = %36, %5
  %8 = phi ptr [ null, %5 ], [ %37, %36 ]
  %9 = phi ptr [ %3, %5 ], [ %39, %36 ]
  %10 = tail call ptr @strchr(ptr noundef nonnull %9, i32 noundef 32)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = tail call i32 @strlen(ptr noundef nonnull %9)
  %14 = getelementptr i8, ptr %9, i32 %13
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %10, %7 ], [ %14, %12 ]
  br i1 %6, label %20, label %29

17:                                               ; preds = %20
  %18 = add nuw nsw i32 %21, 1
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %36, label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %18, %17 ], [ 0, %15 ]
  %22 = getelementptr [3 x ptr], ptr @suffix_tbl, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @strlen(ptr noundef %23)
  %25 = sub i32 0, %24
  %26 = getelementptr i8, ptr %16, i32 %25
  %27 = tail call i32 @strncmp(ptr noundef %26, ptr noundef %23, i32 noundef %24)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %17

29:                                               ; preds = %15
  %30 = tail call i32 @strlen(ptr noundef nonnull %1)
  %31 = sub i32 0, %30
  %32 = getelementptr i8, ptr %16, i32 %31
  %33 = tail call i32 @strncmp(ptr noundef %32, ptr noundef nonnull %1, i32 noundef %30)
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr %9, ptr %8
  br label %36

36:                                               ; preds = %29, %20, %17
  %37 = phi ptr [ %35, %29 ], [ %9, %17 ], [ %8, %20 ]
  %38 = getelementptr i8, ptr %9, i32 1
  %39 = tail call ptr @strstr(ptr noundef %38, ptr noundef nonnull @.str)
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %7

41:                                               ; preds = %36, %2
  %42 = phi ptr [ null, %2 ], [ %37, %36 ]
  ret ptr %42
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @parse_crashkernel_suffix(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 section ".init.text" {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store ptr %0, ptr %4, align 4
  %5 = call i64 @memparse(ptr noundef %0, ptr noundef nonnull %4) #17
  store i64 %5, ptr %1, align 8
  %6 = load ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #19
  br label %24

10:                                               ; preds = %3
  %11 = call i32 @strlen(ptr noundef %2)
  %12 = call i32 @strncmp(ptr noundef %6, ptr noundef %2, i32 noundef %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i8, ptr %6, align 1
  %16 = zext i8 %15 to i32
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %16) #19
  br label %24

18:                                               ; preds = %10
  %19 = getelementptr i8, ptr %6, i32 %11
  store ptr %19, ptr %4, align 4
  %20 = load i8, ptr %19, align 1
  switch i8 %20, label %21 [
    i8 32, label %24
    i8 0, label %24
  ]

21:                                               ; preds = %18
  %22 = zext i8 %20 to i32
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %22) #19
  br label %24

24:                                               ; preds = %21, %18, %18, %14, %8
  %25 = phi i32 [ -22, %8 ], [ -22, %14 ], [ -22, %21 ], [ 0, %18 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %25
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @parse_crashkernel_mem(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 section ".init.text" {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store ptr null, ptr %5, align 4, !annotation !10
  br label %6

6:                                                ; preds = %41, %4
  %7 = phi ptr [ %0, %4 ], [ %42, %41 ]
  %8 = call i64 @memparse(ptr noundef %7, ptr noundef nonnull %5) #17
  %9 = load ptr, ptr %5, align 4
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %61, label %11

11:                                               ; preds = %6
  %12 = load i8, ptr %9, align 1
  %13 = icmp eq i8 %12, 45
  br i1 %13, label %14, label %61

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %9, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 58
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = call i64 @memparse(ptr noundef %15, ptr noundef nonnull %5) #17
  %20 = load ptr, ptr %5, align 4
  %21 = icmp eq ptr %15, %20
  br i1 %21, label %61, label %22

22:                                               ; preds = %18
  %23 = icmp ugt i64 %19, %8
  br i1 %23, label %24, label %61

24:                                               ; preds = %22
  %25 = load i8, ptr %20, align 1
  %26 = icmp eq i8 %25, 58
  br i1 %26, label %27, label %61

27:                                               ; preds = %24, %14
  %28 = phi ptr [ %20, %24 ], [ %15, %14 ]
  %29 = phi i64 [ %19, %24 ], [ -1, %14 ]
  %30 = getelementptr i8, ptr %28, i32 1
  %31 = call i64 @memparse(ptr noundef %30, ptr noundef nonnull %5) #17
  %32 = load ptr, ptr %5, align 4
  %33 = icmp eq ptr %30, %32
  br i1 %33, label %61, label %34

34:                                               ; preds = %27
  %35 = icmp ult i64 %31, %1
  br i1 %35, label %36, label %61

36:                                               ; preds = %34
  %37 = icmp ule i64 %8, %1
  %38 = icmp ugt i64 %29, %1
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i64 %31, ptr %2, align 8
  br label %47

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %32, i32 1
  %43 = load i8, ptr %32, align 1
  %44 = icmp eq i8 %43, 44
  br i1 %44, label %6, label %45

45:                                               ; preds = %41
  %46 = load i64, ptr %2, align 8
  br label %47

47:                                               ; preds = %45, %40
  %48 = phi i64 [ %46, %45 ], [ %31, %40 ]
  %49 = phi ptr [ %42, %45 ], [ %32, %40 ]
  %50 = icmp eq i64 %48, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %54, %47
  %52 = phi ptr [ %55, %54 ], [ %49, %47 ]
  %53 = load i8, ptr %52, align 1
  switch i8 %53, label %54 [
    i8 64, label %56
    i8 0, label %65
    i8 32, label %65
  ]

54:                                               ; preds = %51
  %55 = getelementptr i8, ptr %52, i32 1
  br label %51

56:                                               ; preds = %51
  %57 = getelementptr i8, ptr %52, i32 1
  %58 = call i64 @memparse(ptr noundef %57, ptr noundef nonnull %5) #17
  store i64 %58, ptr %3, align 8
  %59 = load ptr, ptr %5, align 4
  %60 = icmp eq ptr %57, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %56, %47, %34, %27, %24, %22, %18, %11, %6
  %62 = phi ptr [ @.str.10, %56 ], [ @.str.11, %47 ], [ @.str.4, %6 ], [ @.str.5, %11 ], [ @.str.4, %18 ], [ @.str.6, %22 ], [ @.str.7, %24 ], [ @.str.8, %27 ], [ @.str.9, %34 ]
  %63 = phi i32 [ -22, %56 ], [ 0, %47 ], [ -22, %6 ], [ -22, %11 ], [ -22, %18 ], [ -22, %22 ], [ -22, %24 ], [ -22, %27 ], [ -22, %34 ]
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %62) #19
  br label %65

65:                                               ; preds = %61, %56, %51, %51
  %66 = phi i32 [ 0, %56 ], [ %63, %61 ], [ 0, %51 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %66
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @parse_crashkernel_simple(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 section ".init.text" {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store ptr %0, ptr %4, align 4
  %5 = call i64 @memparse(ptr noundef %0, ptr noundef nonnull %4) #17
  store i64 %5, ptr %1, align 8
  %6 = load ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #19
  br label %18

10:                                               ; preds = %3
  %11 = load i8, ptr %6, align 1
  switch i8 %11, label %15 [
    i8 64, label %12
    i8 32, label %18
    i8 0, label %18
  ]

12:                                               ; preds = %10
  %13 = getelementptr i8, ptr %6, i32 1
  %14 = call i64 @memparse(ptr noundef %13, ptr noundef nonnull %4) #17
  store i64 %14, ptr %2, align 8
  br label %18

15:                                               ; preds = %10
  %16 = zext i8 %11 to i32
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %16) #19
  br label %18

18:                                               ; preds = %15, %12, %10, %10, %8
  %19 = phi i32 [ -22, %8 ], [ -22, %15 ], [ 0, %10 ], [ 0, %10 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %19
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @alloc_pages_exact(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @log_buf_vmcoreinfo_setup() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { cold nofree nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { cold }
attributes #17 = { nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }

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
!9 = !{i64 2152159929, i64 2152160413, i64 2152159966, i64 2152160022, i64 2152160056, i64 2152160080, i64 2152160121, i64 2152160142, i64 2152160170, i64 2152160204}
!10 = !{!"auto-init"}
!11 = !{i64 2148585788, i64 2148585811, i64 2148585843, i64 2148585875, i64 2148585913, i64 2148585943}
