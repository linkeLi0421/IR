; ModuleID = '/llk/IR/mm/mempool.c_pt.bc'
source_filename = "../mm/mempool.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_exit\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_init_node:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_init_node\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_init_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_init\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_create\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_create_node:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_create_node\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_create_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_resize:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_resize\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_resize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_free:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_free\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_alloc_slab:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_alloc_slab\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_alloc_slab:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_free_slab:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_free_slab\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_free_slab:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_kmalloc\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_kfree\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_alloc_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_alloc_pages\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_alloc_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_free_pages\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__kstrtab_mempool_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_exit to i32), ptr @__kstrtab_mempool_exit, ptr @__kstrtabns_mempool_exit }, section "___ksymtab+mempool_exit", align 4
@__kstrtab_mempool_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_destroy to i32), ptr @__kstrtab_mempool_destroy, ptr @__kstrtabns_mempool_destroy }, section "___ksymtab+mempool_destroy", align 4
@mempool_init_node.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [12 x i8] c"&pool->wait\00", align 1
@__kstrtab_mempool_init_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_init_node = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_init_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_init_node to i32), ptr @__kstrtab_mempool_init_node, ptr @__kstrtabns_mempool_init_node }, section "___ksymtab+mempool_init_node", align 4
@__kstrtab_mempool_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_init to i32), ptr @__kstrtab_mempool_init, ptr @__kstrtabns_mempool_init }, section "___ksymtab+mempool_init", align 4
@__kstrtab_mempool_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_create = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_create to i32), ptr @__kstrtab_mempool_create, ptr @__kstrtabns_mempool_create }, section "___ksymtab+mempool_create", align 4
@__kstrtab_mempool_create_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_create_node = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_create_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_create_node to i32), ptr @__kstrtab_mempool_create_node, ptr @__kstrtabns_mempool_create_node }, section "___ksymtab+mempool_create_node", align 4
@__kstrtab_mempool_resize = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_resize = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_resize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_resize to i32), ptr @__kstrtab_mempool_resize, ptr @__kstrtabns_mempool_resize }, section "___ksymtab+mempool_resize", align 4
@__kstrtab_mempool_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_alloc to i32), ptr @__kstrtab_mempool_alloc, ptr @__kstrtabns_mempool_alloc }, section "___ksymtab+mempool_alloc", align 4
@__kstrtab_mempool_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_free = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_free to i32), ptr @__kstrtab_mempool_free, ptr @__kstrtabns_mempool_free }, section "___ksymtab+mempool_free", align 4
@__kstrtab_mempool_alloc_slab = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_alloc_slab = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_alloc_slab = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_alloc_slab to i32), ptr @__kstrtab_mempool_alloc_slab, ptr @__kstrtabns_mempool_alloc_slab }, section "___ksymtab+mempool_alloc_slab", align 4
@__kstrtab_mempool_free_slab = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_free_slab = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_free_slab = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_free_slab to i32), ptr @__kstrtab_mempool_free_slab, ptr @__kstrtabns_mempool_free_slab }, section "___ksymtab+mempool_free_slab", align 4
@__kstrtab_mempool_kmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_kmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_kmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_kmalloc to i32), ptr @__kstrtab_mempool_kmalloc, ptr @__kstrtabns_mempool_kmalloc }, section "___ksymtab+mempool_kmalloc", align 4
@__kstrtab_mempool_kfree = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_kfree = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_kfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_kfree to i32), ptr @__kstrtab_mempool_kfree, ptr @__kstrtabns_mempool_kfree }, section "___ksymtab+mempool_kfree", align 4
@__kstrtab_mempool_alloc_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_alloc_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_alloc_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_alloc_pages to i32), ptr @__kstrtab_mempool_alloc_pages, ptr @__kstrtabns_mempool_alloc_pages }, section "___ksymtab+mempool_alloc_pages", align 4
@__kstrtab_mempool_free_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_free_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_free_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_free_pages to i32), ptr @__kstrtab_mempool_free_pages, ptr @__kstrtabns_mempool_free_pages }, section "___ksymtab+mempool_free_pages", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_mempool_alloc, ptr @__ksymtab_mempool_alloc_pages, ptr @__ksymtab_mempool_alloc_slab, ptr @__ksymtab_mempool_create, ptr @__ksymtab_mempool_create_node, ptr @__ksymtab_mempool_destroy, ptr @__ksymtab_mempool_exit, ptr @__ksymtab_mempool_free, ptr @__ksymtab_mempool_free_pages, ptr @__ksymtab_mempool_free_slab, ptr @__ksymtab_mempool_init, ptr @__ksymtab_mempool_init_node, ptr @__ksymtab_mempool_kfree, ptr @__ksymtab_mempool_kmalloc, ptr @__ksymtab_mempool_resize], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mempool_exit(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 5
  %8 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 6
  %9 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 4
  br label %10

10:                                               ; preds = %25, %5
  %11 = phi i32 [ %3, %5 ], [ %28, %25 ]
  %12 = load ptr, ptr %6, align 4
  %13 = add i32 %11, -1
  store i32 %13, ptr %2, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mempool.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #9, !srcloc !9
  unreachable

16:                                               ; preds = %10
  %17 = getelementptr ptr, ptr %12, i32 %13
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %7, align 4
  %20 = icmp eq ptr %19, @mempool_alloc_slab
  %21 = icmp eq ptr %19, @mempool_kmalloc
  %22 = or i1 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = tail call i32 @__ksize(ptr noundef %18) #9
  br label %25

25:                                               ; preds = %23, %16
  %26 = load ptr, ptr %8, align 4
  %27 = load ptr, ptr %9, align 4
  tail call void %26(ptr noundef %18, ptr noundef %27) #9
  %28 = load i32, ptr %2, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %10

30:                                               ; preds = %25, %1
  %31 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #9
  store ptr null, ptr %31, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @remove_element(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  store i32 %6, ptr %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mempool.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #9, !srcloc !9
  unreachable

9:                                                ; preds = %1
  %10 = getelementptr ptr, ptr %3, i32 %6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, @mempool_alloc_slab
  %15 = icmp eq ptr %13, @mempool_kmalloc
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = tail call i32 @__ksize(ptr noundef %11) #9
  br label %19

19:                                               ; preds = %17, %9
  ret ptr %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mempool_destroy(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3, !prof !8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 5
  %10 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 4
  br label %12

12:                                               ; preds = %27, %7
  %13 = phi i32 [ %5, %7 ], [ %30, %27 ]
  %14 = load ptr, ptr %8, align 4
  %15 = add i32 %13, -1
  store i32 %15, ptr %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mempool.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #9, !srcloc !9
  unreachable

18:                                               ; preds = %12
  %19 = getelementptr ptr, ptr %14, i32 %15
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %9, align 4
  %22 = icmp eq ptr %21, @mempool_alloc_slab
  %23 = icmp eq ptr %21, @mempool_kmalloc
  %24 = or i1 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = tail call i32 @__ksize(ptr noundef %20) #9
  br label %27

27:                                               ; preds = %25, %18
  %28 = load ptr, ptr %10, align 4
  %29 = load ptr, ptr %11, align 4
  tail call void %28(ptr noundef %20, ptr noundef %29) #9
  %30 = load i32, ptr %4, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %12

32:                                               ; preds = %27, %3
  %33 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  tail call void @kfree(ptr noundef %34) #9
  store ptr null, ptr %33, align 4
  tail call void @kfree(ptr noundef nonnull %0) #9
  br label %35

35:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mempool_init_node(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 %6) #0 {
  store i32 0, ptr %0, align 4
  %8 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 1
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 4
  store ptr %4, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 5
  store ptr %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 6
  store ptr %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef nonnull @mempool_init_node.__key) #9
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #9
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %15, label %17, !prof !8

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 3
  store ptr null, ptr %16, align 4
  br label %45

17:                                               ; preds = %7
  %18 = extractvalue { i32, i1 } %13, 0
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %18, i32 noundef %5) #10
  %20 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 3
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, null
  br i1 %21, label %45, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %38, %22
  %28 = load ptr, ptr %10, align 4
  %29 = load ptr, ptr %9, align 4
  %30 = tail call ptr %28(i32 noundef %5, ptr noundef %29) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33, !prof !8

32:                                               ; preds = %27
  tail call void @mempool_exit(ptr noundef %0)
  br label %45

33:                                               ; preds = %27
  %34 = load i32, ptr %23, align 4
  %35 = load i32, ptr %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %38, label %37, !prof !10

37:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mempool.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 123, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

38:                                               ; preds = %33
  %39 = load ptr, ptr %20, align 4
  %40 = add nsw i32 %34, 1
  store i32 %40, ptr %23, align 4
  %41 = getelementptr ptr, ptr %39, i32 %34
  store ptr %30, ptr %41, align 4
  %42 = load i32, ptr %23, align 4
  %43 = load i32, ptr %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %27, label %45

45:                                               ; preds = %38, %32, %22, %17, %15
  %46 = phi i32 [ -12, %17 ], [ -12, %15 ], [ -12, %32 ], [ 0, %22 ], [ 0, %38 ]
  ret i32 %46
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mempool_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call i32 @mempool_init_node(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 3264, i32 undef)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mempool_create(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 40) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @mempool_init_node(ptr noundef nonnull %6, i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 3264, i32 undef) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #9
  br label %12

12:                                               ; preds = %11, %8, %4
  %13 = phi ptr [ null, %11 ], [ null, %4 ], [ %6, %8 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mempool_create_node(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 {
  %7 = and i32 %4, 17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9, !prof !10

9:                                                ; preds = %6
  %10 = and i32 %4, 1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 1, i32 2
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i32 [ 0, %6 ], [ %12, %9 ]
  %15 = or i32 %4, 256
  %16 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %14, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef %15, i32 noundef 40) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = tail call i32 @mempool_init_node(ptr noundef nonnull %18, i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 undef)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @kfree(ptr noundef nonnull %18) #9
  br label %24

24:                                               ; preds = %23, %20, %13
  %25 = phi ptr [ null, %23 ], [ null, %13 ], [ %18, %20 ]
  ret ptr %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mempool_resize(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mempool.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 304, 0\0A.popsection", ""() #9, !srcloc !12
  unreachable

5:                                                ; preds = %2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, %1
  br i1 %9, label %43, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, %1
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 3
  %16 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 5
  %17 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 4
  br label %19

19:                                               ; preds = %35, %14
  %20 = phi i32 [ %12, %14 ], [ %39, %35 ]
  %21 = phi i32 [ %6, %14 ], [ %38, %35 ]
  %22 = load ptr, ptr %15, align 4
  %23 = add nsw i32 %20, -1
  store i32 %23, ptr %11, align 4
  %24 = icmp slt i32 %20, 1
  br i1 %24, label %25, label %26, !prof !8

25:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mempool.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #9, !srcloc !9
  unreachable

26:                                               ; preds = %19
  %27 = getelementptr ptr, ptr %22, i32 %23
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %16, align 4
  %30 = icmp eq ptr %29, @mempool_alloc_slab
  %31 = icmp eq ptr %29, @mempool_kmalloc
  %32 = or i1 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = tail call i32 @__ksize(ptr noundef %28) #9
  br label %35

35:                                               ; preds = %33, %26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %21) #9
  %36 = load ptr, ptr %17, align 4
  %37 = load ptr, ptr %18, align 4
  tail call void %36(ptr noundef %28, ptr noundef %37) #9
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %39 = load i32, ptr %11, align 4
  %40 = icmp sgt i32 %39, %1
  br i1 %40, label %19, label %41

41:                                               ; preds = %35, %10
  %42 = phi i32 [ %6, %10 ], [ %38, %35 ]
  store i32 %1, ptr %7, align 4
  br label %88

43:                                               ; preds = %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %6) #9
  %44 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #9
  %45 = extractvalue { i32, i1 } %44, 1
  br i1 %45, label %90, label %46, !prof !8

46:                                               ; preds = %43
  %47 = extractvalue { i32, i1 } %44, 0
  %48 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %47, i32 noundef 3264) #10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %90, label %50

50:                                               ; preds = %46
  %51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %52 = load i32, ptr %7, align 4
  %53 = icmp slt i32 %52, %1
  br i1 %53, label %55, label %54, !prof !10

54:                                               ; preds = %50
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %51) #9
  tail call void @kfree(ptr noundef nonnull %48) #9
  br label %90

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = shl i32 %59, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %48, ptr align 4 %57, i32 %60, i1 false)
  tail call void @kfree(ptr noundef %57) #9
  store ptr %48, ptr %56, align 4
  store i32 %1, ptr %7, align 4
  %61 = load i32, ptr %58, align 4
  %62 = icmp slt i32 %61, %1
  br i1 %62, label %63, label %88

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 5
  %65 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 4
  br label %66

66:                                               ; preds = %77, %63
  %67 = phi i32 [ %51, %63 ], [ %73, %77 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %67) #9
  %68 = load ptr, ptr %64, align 4
  %69 = load ptr, ptr %65, align 4
  %70 = tail call ptr %68(i32 noundef 3264, ptr noundef %69) #9
  %71 = icmp eq ptr %70, null
  br i1 %71, label %90, label %72

72:                                               ; preds = %66
  %73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %74 = load i32, ptr %58, align 4
  %75 = load i32, ptr %7, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load ptr, ptr %56, align 4
  %79 = add nsw i32 %74, 1
  store i32 %79, ptr %58, align 4
  %80 = getelementptr ptr, ptr %78, i32 %74
  store ptr %70, ptr %80, align 4
  %81 = load i32, ptr %58, align 4
  %82 = load i32, ptr %7, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %66, label %88

84:                                               ; preds = %72
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %73) #9
  %85 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 6
  %86 = load ptr, ptr %85, align 4
  %87 = load ptr, ptr %65, align 4
  tail call void %86(ptr noundef nonnull %70, ptr noundef %87) #9
  br label %90

88:                                               ; preds = %77, %55, %41
  %89 = phi i32 [ %42, %41 ], [ %51, %55 ], [ %73, %77 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %89) #9
  br label %90

90:                                               ; preds = %88, %84, %66, %54, %46, %43
  %91 = phi i32 [ -12, %46 ], [ 0, %88 ], [ 0, %84 ], [ 0, %54 ], [ -12, %43 ], [ 0, %66 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @mempool_alloc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !13
  %4 = or i32 %1, 598016
  %5 = and i32 %4, -1089
  %6 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 5
  %7 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %6, align 4
  %9 = load ptr, ptr %7, align 4
  %10 = call ptr %8(i32 noundef %5, ptr noundef %9) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %45, !prof !8

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 2
  %14 = and i32 %1, 1024
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %17 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  %18 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  %19 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  %20 = getelementptr inbounds %struct.mempool_s, ptr %0, i32 0, i32 7
  br label %21

21:                                               ; preds = %31, %12
  %22 = phi i32 [ %5, %12 ], [ %4, %31 ]
  %23 = icmp eq i32 %22, %4
  br label %24

24:                                               ; preds = %38, %21
  %25 = call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %26 = load i32, ptr %13, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28, !prof !8

28:                                               ; preds = %24
  %29 = call fastcc ptr @remove_element(ptr noundef %0)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %25) #9
  call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !14
  br label %45

30:                                               ; preds = %24
  br i1 %23, label %36, label %31

31:                                               ; preds = %30
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %25) #9
  %32 = load ptr, ptr %6, align 4
  %33 = load ptr, ptr %7, align 4
  %34 = call ptr %32(i32 noundef %4, ptr noundef %33) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %21, label %45, !prof !8

36:                                               ; preds = %30
  br i1 %15, label %37, label %38

37:                                               ; preds = %36
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %25) #9
  br label %45

38:                                               ; preds = %36
  %39 = tail call ptr @llvm.thread.pointer() #9
  store ptr %39, ptr %16, align 4
  store ptr @autoremove_wake_function, ptr %17, align 4
  store volatile ptr %18, ptr %18, align 4
  store ptr %18, ptr %19, align 4
  store i32 0, ptr %3, align 4
  call void @prepare_to_wait(ptr noundef %20, ptr noundef nonnull %3, i32 noundef 2) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %25) #9
  %40 = call i32 @io_schedule_timeout(i32 noundef 500) #9
  call void @finish_wait(ptr noundef %20, ptr noundef nonnull %3) #9
  %41 = load ptr, ptr %6, align 4
  %42 = load ptr, ptr %7, align 4
  %43 = call ptr %41(i32 noundef %4, ptr noundef %42) #9
  %44 = icmp eq ptr %43, null
  br i1 %44, label %24, label %45, !prof !8

45:                                               ; preds = %38, %37, %31, %28, %2
  %46 = phi ptr [ %29, %28 ], [ null, %37 ], [ %10, %2 ], [ %43, %38 ], [ %34, %31 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  ret ptr %46
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mempool_free(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4, !prof !8

4:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %5 = getelementptr inbounds %struct.mempool_s, ptr %1, i32 0, i32 2
  %6 = load volatile i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mempool_s, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %22, !prof !8

10:                                               ; preds = %4
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %12 = load i32, ptr %5, align 4
  %13 = load i32, ptr %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %21, !prof !10

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.mempool_s, ptr %1, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = add nsw i32 %12, 1
  store i32 %18, ptr %5, align 4
  %19 = getelementptr ptr, ptr %17, i32 %12
  store ptr %0, ptr %19, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %11) #9
  %20 = getelementptr inbounds %struct.mempool_s, ptr %1, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %20, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %27

21:                                               ; preds = %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %11) #9
  br label %22

22:                                               ; preds = %21, %4
  %23 = getelementptr inbounds %struct.mempool_s, ptr %1, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.mempool_s, ptr %1, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  tail call void %24(ptr noundef nonnull %0, ptr noundef %26) #9
  br label %27

27:                                               ; preds = %22, %15, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @mempool_alloc_slab(i32 noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef %0) #9
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mempool_free_slab(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @kmem_cache_free(ptr noundef %1, ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mempool_kmalloc(i32 noundef %0, ptr noundef %1) #0 {
  %3 = ptrtoint ptr %1 to i32
  %4 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %3, i32 noundef %0) #10
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mempool_kfree(ptr noundef %0, ptr nocapture readnone %1) #0 {
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mempool_alloc_pages(i32 noundef %0, ptr noundef %1) #0 {
  %3 = ptrtoint ptr %1 to i32
  %4 = tail call ptr @__alloc_pages(i32 noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null) #9
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mempool_free_pages(ptr noundef %0, ptr noundef %1) #0 {
  %3 = ptrtoint ptr %1 to i32
  tail call void @__free_pages(ptr noundef %0, i32 noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ksize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{i64 2153354475, i64 2153354952, i64 2153354512, i64 2153354568, i64 2153354602, i64 2153354626, i64 2153354667, i64 2153354688, i64 2153354716, i64 2153354750}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2153353470, i64 2153353947, i64 2153353507, i64 2153353563, i64 2153353597, i64 2153353621, i64 2153353662, i64 2153353683, i64 2153353711, i64 2153353745}
!12 = !{i64 2153367771, i64 2153368248, i64 2153367808, i64 2153367864, i64 2153367898, i64 2153367922, i64 2153367963, i64 2153367984, i64 2153368012, i64 2153368046}
!13 = !{!"auto-init"}
!14 = !{i64 2153372674}
!15 = !{i64 2153374329}
