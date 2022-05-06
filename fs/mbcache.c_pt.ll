; ModuleID = '/llk/IR/fs/mbcache.c_pt.bc'
source_filename = "../fs/mbcache.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mb_cache_entry_create:\09\09\09\09\09"
module asm "\09.asciz \09\22mb_cache_entry_create\22\09\09\09\09\09"
module asm "__kstrtabns_mb_cache_entry_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mb_cache_entry_free:\09\09\09\09\09"
module asm "\09.asciz \09\22__mb_cache_entry_free\22\09\09\09\09\09"
module asm "__kstrtabns___mb_cache_entry_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mb_cache_entry_find_first:\09\09\09\09\09"
module asm "\09.asciz \09\22mb_cache_entry_find_first\22\09\09\09\09\09"
module asm "__kstrtabns_mb_cache_entry_find_first:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mb_cache_entry_find_next:\09\09\09\09\09"
module asm "\09.asciz \09\22mb_cache_entry_find_next\22\09\09\09\09\09"
module asm "__kstrtabns_mb_cache_entry_find_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mb_cache_entry_get:\09\09\09\09\09"
module asm "\09.asciz \09\22mb_cache_entry_get\22\09\09\09\09\09"
module asm "__kstrtabns_mb_cache_entry_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mb_cache_entry_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22mb_cache_entry_delete\22\09\09\09\09\09"
module asm "__kstrtabns_mb_cache_entry_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mb_cache_entry_touch:\09\09\09\09\09"
module asm "\09.asciz \09\22mb_cache_entry_touch\22\09\09\09\09\09"
module asm "__kstrtabns_mb_cache_entry_touch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mb_cache_create:\09\09\09\09\09"
module asm "\09.asciz \09\22mb_cache_create\22\09\09\09\09\09"
module asm "__kstrtabns_mb_cache_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mb_cache_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22mb_cache_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_mb_cache_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mb_cache = type { ptr, i32, i32, %struct.spinlock, %struct.list_head, i32, %struct.shrinker, %struct.work_struct }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.mb_cache_entry = type { %struct.list_head, %struct.hlist_bl_node, %struct.atomic_t, i32, i8, i64 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.hlist_bl_head = type { ptr }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }

@mb_entry_cache = internal unnamed_addr global ptr null, align 4
@__kstrtab_mb_cache_entry_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_mb_cache_entry_create = external dso_local constant [0 x i8], align 1
@__ksymtab_mb_cache_entry_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mb_cache_entry_create to i32), ptr @__kstrtab_mb_cache_entry_create, ptr @__kstrtabns_mb_cache_entry_create }, section "___ksymtab+mb_cache_entry_create", align 4
@__kstrtab___mb_cache_entry_free = external dso_local constant [0 x i8], align 1
@__kstrtabns___mb_cache_entry_free = external dso_local constant [0 x i8], align 1
@__ksymtab___mb_cache_entry_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mb_cache_entry_free to i32), ptr @__kstrtab___mb_cache_entry_free, ptr @__kstrtabns___mb_cache_entry_free }, section "___ksymtab+__mb_cache_entry_free", align 4
@__kstrtab_mb_cache_entry_find_first = external dso_local constant [0 x i8], align 1
@__kstrtabns_mb_cache_entry_find_first = external dso_local constant [0 x i8], align 1
@__ksymtab_mb_cache_entry_find_first = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mb_cache_entry_find_first to i32), ptr @__kstrtab_mb_cache_entry_find_first, ptr @__kstrtabns_mb_cache_entry_find_first }, section "___ksymtab+mb_cache_entry_find_first", align 4
@__kstrtab_mb_cache_entry_find_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_mb_cache_entry_find_next = external dso_local constant [0 x i8], align 1
@__ksymtab_mb_cache_entry_find_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mb_cache_entry_find_next to i32), ptr @__kstrtab_mb_cache_entry_find_next, ptr @__kstrtabns_mb_cache_entry_find_next }, section "___ksymtab+mb_cache_entry_find_next", align 4
@__kstrtab_mb_cache_entry_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_mb_cache_entry_get = external dso_local constant [0 x i8], align 1
@__ksymtab_mb_cache_entry_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mb_cache_entry_get to i32), ptr @__kstrtab_mb_cache_entry_get, ptr @__kstrtabns_mb_cache_entry_get }, section "___ksymtab+mb_cache_entry_get", align 4
@mb_cache_entry_delete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [13 x i8] c"fs/mbcache.c\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"mbcache: attempt to decrement c_entry_count past zero\00", align 1
@__kstrtab_mb_cache_entry_delete = external dso_local constant [0 x i8], align 1
@__kstrtabns_mb_cache_entry_delete = external dso_local constant [0 x i8], align 1
@__ksymtab_mb_cache_entry_delete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mb_cache_entry_delete to i32), ptr @__kstrtab_mb_cache_entry_delete, ptr @__kstrtabns_mb_cache_entry_delete }, section "___ksymtab+mb_cache_entry_delete", align 4
@__kstrtab_mb_cache_entry_touch = external dso_local constant [0 x i8], align 1
@__kstrtabns_mb_cache_entry_touch = external dso_local constant [0 x i8], align 1
@__ksymtab_mb_cache_entry_touch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mb_cache_entry_touch to i32), ptr @__kstrtab_mb_cache_entry_touch, ptr @__kstrtabns_mb_cache_entry_touch }, section "___ksymtab+mb_cache_entry_touch", align 4
@__kstrtab_mb_cache_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_mb_cache_create = external dso_local constant [0 x i8], align 1
@__ksymtab_mb_cache_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mb_cache_create to i32), ptr @__kstrtab_mb_cache_create, ptr @__kstrtabns_mb_cache_create }, section "___ksymtab+mb_cache_create", align 4
@__kstrtab_mb_cache_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_mb_cache_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_mb_cache_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mb_cache_destroy to i32), ptr @__kstrtab_mb_cache_destroy, ptr @__kstrtabns_mb_cache_destroy }, section "___ksymtab+mb_cache_destroy", align 4
@__initcall__kmod_mbcache__198_432_mbcache_init6 = internal global ptr @mbcache_init, section ".initcall6.init", align 4
@__exitcall_mbcache_exit = internal global ptr @mbcache_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author199 = internal constant [39 x i8] c"mbcache.author=Jan Kara <jack@suse.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description200 = internal constant [63 x i8] c"mbcache.description=Meta block cache (for extended attributes)\00", section ".modinfo", align 1
@__UNIQUE_ID_file201 = internal constant [24 x i8] c"mbcache.file=fs/mbcache\00", section ".modinfo", align 1
@__UNIQUE_ID_license202 = internal constant [20 x i8] c"mbcache.license=GPL\00", section ".modinfo", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"mbcache\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author199, ptr @__UNIQUE_ID_description200, ptr @__UNIQUE_ID_file201, ptr @__UNIQUE_ID_license202, ptr @__exitcall_mbcache_exit, ptr @__initcall__kmod_mbcache__198_432_mbcache_init6, ptr @__ksymtab___mb_cache_entry_free, ptr @__ksymtab_mb_cache_create, ptr @__ksymtab_mb_cache_destroy, ptr @__ksymtab_mb_cache_entry_create, ptr @__ksymtab_mb_cache_entry_delete, ptr @__ksymtab_mb_cache_entry_find_first, ptr @__ksymtab_mb_cache_entry_find_next, ptr @__ksymtab_mb_cache_entry_get, ptr @__ksymtab_mb_cache_entry_touch, ptr @mbcache_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mb_cache_entry_create(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i1 noundef zeroext %4) #0 {
  %6 = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr @system_wq, align 4
  %14 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %13, ptr noundef %12) #8
  %15 = load i32, ptr %6, align 4
  %16 = load i32, ptr %8, align 4
  br label %17

17:                                               ; preds = %11, %5
  %18 = phi i32 [ %16, %11 ], [ %9, %5 ]
  %19 = phi i32 [ %15, %11 ], [ %7, %5 ]
  %20 = shl i32 %18, 1
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = tail call fastcc i32 @mb_cache_shrink(ptr noundef %0, i32 noundef 64)
  br label %24

24:                                               ; preds = %22, %17
  %25 = load ptr, ptr @mb_entry_cache, align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %25, i32 noundef %1) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %105, label %28

28:                                               ; preds = %24
  store volatile ptr %26, ptr %26, align 8
  %29 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %26, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mb_cache_entry, ptr %26, i32 0, i32 2
  store volatile i32 1, ptr %30, align 8
  %31 = getelementptr inbounds %struct.mb_cache_entry, ptr %26, i32 0, i32 3
  store i32 %2, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mb_cache_entry, ptr %26, i32 0, i32 5
  store i64 %3, ptr %32, align 8
  %33 = getelementptr inbounds %struct.mb_cache_entry, ptr %26, i32 0, i32 4
  %34 = load i8, ptr %33, align 8
  %35 = select i1 %4, i8 2, i8 0
  %36 = and i8 %34, -4
  %37 = or i8 %36, %35
  store i8 %37, ptr %33, align 8
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = mul i32 %2, 1640531527
  %42 = sub i32 32, %40
  %43 = lshr i32 %41, %42
  %44 = getelementptr %struct.hlist_bl_head, ptr %38, i32 %43
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  br label %45

45:                                               ; preds = %59, %28
  %46 = load volatile i32, ptr %44, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54, !prof !9

49:                                               ; preds = %45
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #8, !srcloc !10
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #8, !srcloc !11
  %51 = extractvalue { i32, i32, i32 } %50, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54, !prof !13

54:                                               ; preds = %49, %45
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %55

55:                                               ; preds = %55, %54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !16
  %56 = load volatile i32, ptr %44, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %55

59:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %45

60:                                               ; preds = %49
  %61 = load ptr, ptr %44, align 4
  %62 = ptrtoint ptr %61 to i32
  %63 = and i32 %62, -2
  %64 = inttoptr i32 %63 to ptr
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.mb_cache_entry, ptr %26, i32 0, i32 1
  store ptr %64, ptr %67, align 8
  br label %88

68:                                               ; preds = %81, %60
  %69 = phi ptr [ %82, %81 ], [ %64, %60 ]
  %70 = getelementptr i8, ptr %69, i32 12
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, %2
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = getelementptr i8, ptr %69, i32 24
  %75 = load i64, ptr %74, align 8
  %76 = icmp eq i64 %75, %3
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load volatile i32, ptr %44, align 4
  %79 = and i32 %78, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  store volatile i32 %79, ptr %44, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  %80 = load ptr, ptr @mb_entry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %80, ptr noundef nonnull %26) #8
  br label %105

81:                                               ; preds = %73, %68
  %82 = load ptr, ptr %69, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %68

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.mb_cache_entry, ptr %26, i32 0, i32 1
  store ptr %64, ptr %85, align 8
  br i1 %65, label %88, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.hlist_bl_node, ptr %64, i32 0, i32 1
  store ptr %85, ptr %87, align 4
  br label %88

88:                                               ; preds = %86, %84, %66
  %89 = phi ptr [ %67, %66 ], [ %85, %84 ], [ %85, %86 ]
  %90 = getelementptr inbounds %struct.mb_cache_entry, ptr %26, i32 0, i32 1, i32 1
  store ptr %44, ptr %90, align 4
  %91 = ptrtoint ptr %89 to i32
  %92 = or i32 %91, 1
  %93 = inttoptr i32 %92 to ptr
  store ptr %93, ptr %44, align 4
  %94 = load volatile i32, ptr %44, align 4
  %95 = and i32 %94, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  store volatile i32 %95, ptr %44, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  %96 = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %96) #8
  %97 = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 4
  %98 = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 4, i32 1
  %99 = load ptr, ptr %98, align 4
  store ptr %26, ptr %98, align 4
  store ptr %97, ptr %26, align 8
  store ptr %99, ptr %29, align 4
  store volatile ptr %26, ptr %99, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #8, !srcloc !10
  %100 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #8, !srcloc !20
  %101 = load i32, ptr %6, align 4
  %102 = add i32 %101, 1
  store i32 %102, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  %103 = load i16, ptr %96, align 4
  %104 = add i16 %103, 1
  store i16 %104, ptr %96, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !24
  br label %105

105:                                              ; preds = %88, %77, %24
  %106 = phi i32 [ -16, %77 ], [ 0, %88 ], [ -12, %24 ]
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mb_cache_shrink(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %96, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 4, i32 1
  %8 = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 5
  %9 = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 1
  br label %10

10:                                               ; preds = %92, %6
  %11 = phi i32 [ %1, %6 ], [ %15, %92 ]
  %12 = phi i32 [ 0, %6 ], [ %93, %92 ]
  br label %13

13:                                               ; preds = %23, %10
  %14 = phi i32 [ %11, %10 ], [ %15, %23 ]
  %15 = add i32 %14, -1
  %16 = load volatile ptr, ptr %4, align 4
  %17 = icmp eq ptr %16, %4
  br i1 %17, label %96, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.mb_cache_entry, ptr %16, i32 0, i32 4
  %20 = load i8, ptr %19, align 8
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = and i8 %20, -2
  store i8 %24, ptr %19, align 8
  %25 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %16, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  %29 = load ptr, ptr %7, align 4
  store ptr %16, ptr %7, align 4
  store ptr %4, ptr %16, align 4
  store ptr %29, ptr %25, align 4
  store volatile ptr %16, ptr %29, align 4
  %30 = icmp eq i32 %15, 0
  br i1 %30, label %96, label %13

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %16, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %33, ptr %35, align 4
  store volatile ptr %34, ptr %33, align 4
  store volatile ptr %16, ptr %16, align 4
  store ptr %16, ptr %32, align 4
  %36 = load i32, ptr %8, align 4
  %37 = add i32 %36, -1
  store i32 %37, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  %38 = load i16, ptr %3, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !24
  %40 = getelementptr inbounds %struct.mb_cache_entry, ptr %16, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %0, align 4
  %43 = load i32, ptr %9, align 4
  %44 = mul i32 %41, 1640531527
  %45 = sub i32 32, %43
  %46 = lshr i32 %44, %45
  %47 = getelementptr %struct.hlist_bl_head, ptr %42, i32 %46
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  br label %48

48:                                               ; preds = %62, %31
  %49 = load volatile i32, ptr %47, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57, !prof !9

52:                                               ; preds = %48
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #8, !srcloc !10
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #8, !srcloc !11
  %54 = extractvalue { i32, i32, i32 } %53, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57, !prof !13

57:                                               ; preds = %52, %48
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %58

58:                                               ; preds = %58, %57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !16
  %59 = load volatile i32, ptr %47, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %58

62:                                               ; preds = %58
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %48

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.mb_cache_entry, ptr %16, i32 0, i32 1
  %65 = getelementptr inbounds %struct.mb_cache_entry, ptr %16, i32 0, i32 1, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %82, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr %64, align 4
  %70 = ptrtoint ptr %69 to i32
  %71 = load ptr, ptr %66, align 4
  %72 = ptrtoint ptr %71 to i32
  %73 = and i32 %72, 1
  %74 = or i32 %73, %70
  %75 = inttoptr i32 %74 to ptr
  store volatile ptr %75, ptr %66, align 4
  %76 = icmp eq ptr %69, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.hlist_bl_node, ptr %69, i32 0, i32 1
  store ptr %66, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %68
  store ptr null, ptr %64, align 4
  store ptr null, ptr %65, align 4
  %80 = getelementptr inbounds %struct.mb_cache_entry, ptr %16, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %80) #8, !srcloc !10
  %81 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %80, ptr %80, i32 1, ptr elementtype(i32) %80) #8, !srcloc !25
  br label %82

82:                                               ; preds = %79, %63
  %83 = load volatile i32, ptr %47, align 4
  %84 = and i32 %83, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  store volatile i32 %84, ptr %47, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  %85 = getelementptr inbounds %struct.mb_cache_entry, ptr %16, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %85) #8, !srcloc !10
  %86 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %85, ptr %85, i32 1, ptr elementtype(i32) %85) #8, !srcloc !27
  %87 = extractvalue { i32, i32 } %86, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !28
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load ptr, ptr @mb_entry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %90, ptr noundef %16) #8
  %91 = add i32 %12, 1
  br label %92

92:                                               ; preds = %89, %82
  %93 = phi i32 [ %91, %89 ], [ %12, %82 ]
  %94 = tail call i32 @__cond_resched() #8
  tail call void @_raw_spin_lock(ptr noundef %3) #8
  %95 = icmp eq i32 %15, 0
  br i1 %95, label %96, label %10

96:                                               ; preds = %92, %23, %13, %2
  %97 = phi i32 [ 0, %2 ], [ %12, %23 ], [ %12, %13 ], [ %93, %92 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  %98 = load i16, ptr %3, align 4
  %99 = add i16 %98, 1
  store i16 %99, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !24
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__mb_cache_entry_free(ptr noundef %0) #0 {
  %2 = load ptr, ptr @mb_entry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mb_cache_entry_find_first(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = tail call fastcc ptr @__entry_find(ptr noundef %0, ptr noundef null, i32 noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__entry_find(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = mul i32 %2, 1640531527
  %8 = sub i32 32, %6
  %9 = lshr i32 %7, %8
  %10 = getelementptr %struct.hlist_bl_head, ptr %4, i32 %9
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  br label %11

11:                                               ; preds = %25, %3
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20, !prof !9

15:                                               ; preds = %11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #8, !srcloc !10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #8, !srcloc !11
  %17 = extractvalue { i32, i32, i32 } %16, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20, !prof !13

20:                                               ; preds = %15, %11
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %21

21:                                               ; preds = %21, %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !16
  %22 = load volatile i32, ptr %10, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %21

25:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %11

26:                                               ; preds = %15
  %27 = icmp eq ptr %1, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.mb_cache_entry, ptr %1, i32 0, i32 1, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.mb_cache_entry, ptr %1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  br label %40

35:                                               ; preds = %28, %26
  %36 = load ptr, ptr %10, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = and i32 %37, -2
  %39 = inttoptr i32 %38 to ptr
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi ptr [ %39, %35 ], [ %34, %32 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %60, label %43

43:                                               ; preds = %57, %40
  %44 = phi ptr [ %58, %57 ], [ %41, %40 ]
  %45 = getelementptr i8, ptr %44, i32 12
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %2
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = getelementptr i8, ptr %44, i32 16
  %50 = load i8, ptr %49, align 8
  %51 = and i8 %50, 2
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = getelementptr i8, ptr %44, i32 -8
  %55 = getelementptr i8, ptr %44, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #8, !srcloc !10
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %55, ptr %55, i32 1, ptr elementtype(i32) %55) #8, !srcloc !20
  br label %60

57:                                               ; preds = %48, %43
  %58 = load ptr, ptr %44, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %43

60:                                               ; preds = %57, %53, %40
  %61 = phi ptr [ %54, %53 ], [ null, %40 ], [ null, %57 ]
  %62 = load volatile i32, ptr %10, align 4
  %63 = and i32 %62, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  store volatile i32 %63, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  br i1 %27, label %71, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.mb_cache_entry, ptr %1, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %65) #8, !srcloc !10
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %65, ptr %65, i32 1, ptr elementtype(i32) %65) #8, !srcloc !27
  %67 = extractvalue { i32, i32 } %66, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !28
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load ptr, ptr @mb_entry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %70, ptr noundef nonnull %1) #8
  br label %71

71:                                               ; preds = %69, %64, %60
  ret ptr %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mb_cache_entry_find_next(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mb_cache_entry, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = tail call fastcc ptr @__entry_find(ptr noundef %0, ptr noundef %1, i32 noundef %4)
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mb_cache_entry_get(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = mul i32 %1, 1640531527
  %8 = sub i32 32, %6
  %9 = lshr i32 %7, %8
  %10 = getelementptr %struct.hlist_bl_head, ptr %4, i32 %9
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  br label %11

11:                                               ; preds = %25, %3
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20, !prof !9

15:                                               ; preds = %11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #8, !srcloc !10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #8, !srcloc !11
  %17 = extractvalue { i32, i32, i32 } %16, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20, !prof !13

20:                                               ; preds = %15, %11
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %21

21:                                               ; preds = %21, %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !16
  %22 = load volatile i32, ptr %10, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %21

25:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %11

26:                                               ; preds = %15
  %27 = load ptr, ptr %10, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = and i32 %28, -2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %26
  %32 = inttoptr i32 %29 to ptr
  br label %33

33:                                               ; preds = %46, %31
  %34 = phi ptr [ %47, %46 ], [ %32, %31 ]
  %35 = getelementptr i8, ptr %34, i32 12
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = getelementptr i8, ptr %34, i32 24
  %40 = load i64, ptr %39, align 8
  %41 = icmp eq i64 %40, %2
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %34, i32 -8
  %44 = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #8, !srcloc !10
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #8, !srcloc !20
  br label %49

46:                                               ; preds = %38, %33
  %47 = load ptr, ptr %34, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %33

49:                                               ; preds = %46, %42, %26
  %50 = phi ptr [ %43, %42 ], [ null, %26 ], [ null, %46 ]
  %51 = load volatile i32, ptr %10, align 4
  %52 = and i32 %51, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  store volatile i32 %52, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  ret ptr %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mb_cache_entry_delete(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = mul i32 %1, 1640531527
  %8 = sub i32 32, %6
  %9 = lshr i32 %7, %8
  %10 = getelementptr %struct.hlist_bl_head, ptr %4, i32 %9
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  br label %11

11:                                               ; preds = %25, %3
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20, !prof !9

15:                                               ; preds = %11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #8, !srcloc !10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #8, !srcloc !11
  %17 = extractvalue { i32, i32, i32 } %16, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20, !prof !13

20:                                               ; preds = %15, %11
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %21

21:                                               ; preds = %21, %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !16
  %22 = load volatile i32, ptr %10, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %21

25:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %11

26:                                               ; preds = %15
  %27 = load ptr, ptr %10, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = and i32 %28, -2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %95, label %31

31:                                               ; preds = %26
  %32 = inttoptr i32 %29 to ptr
  br label %33

33:                                               ; preds = %92, %31
  %34 = phi ptr [ %93, %92 ], [ %32, %31 ]
  %35 = getelementptr i8, ptr %34, i32 12
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %38, label %92

38:                                               ; preds = %33
  %39 = getelementptr i8, ptr %34, i32 24
  %40 = load i64, ptr %39, align 8
  %41 = icmp eq i64 %40, %2
  br i1 %41, label %42, label %92

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %34, i32 -8
  %44 = getelementptr inbounds %struct.hlist_bl_node, ptr %34, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %59, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr %34, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = load ptr, ptr %45, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = and i32 %51, 1
  %53 = or i32 %52, %49
  %54 = inttoptr i32 %53 to ptr
  store volatile ptr %54, ptr %45, align 4
  %55 = icmp eq ptr %48, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.hlist_bl_node, ptr %48, i32 0, i32 1
  store ptr %45, ptr %57, align 4
  br label %58

58:                                               ; preds = %56, %47
  store ptr null, ptr %34, align 4
  store ptr null, ptr %44, align 4
  br label %59

59:                                               ; preds = %58, %42
  %60 = load volatile i32, ptr %10, align 4
  %61 = and i32 %60, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  store volatile i32 %61, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  %62 = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %62) #8
  %63 = load volatile ptr, ptr %43, align 4
  %64 = icmp eq ptr %63, %43
  br i1 %64, label %83, label %65

65:                                               ; preds = %59
  %66 = getelementptr i8, ptr %34, i32 -4
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %67, ptr %68, align 4
  store volatile ptr %63, ptr %67, align 4
  store volatile ptr %43, ptr %43, align 4
  store ptr %43, ptr %66, align 4
  %69 = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  %72 = load i1, ptr @mb_cache_entry_delete.__already_done, align 1
  %73 = xor i1 %72, true
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %76, !prof !29

75:                                               ; preds = %65
  store i1 true, ptr @mb_cache_entry_delete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 244, i32 noundef 9, ptr noundef nonnull @.str.1) #8
  br label %76

76:                                               ; preds = %75, %65
  br i1 %71, label %80, label %77

77:                                               ; preds = %76
  %78 = load i32, ptr %69, align 4
  %79 = add i32 %78, -1
  store i32 %79, ptr %69, align 4
  br label %80

80:                                               ; preds = %77, %76
  %81 = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %81) #8, !srcloc !10
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %81, ptr %81, i32 1, ptr elementtype(i32) %81) #8, !srcloc !25
  br label %83

83:                                               ; preds = %80, %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  %84 = load i16, ptr %62, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr %62, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !24
  %86 = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %86) #8, !srcloc !10
  %87 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %86, ptr %86, i32 1, ptr elementtype(i32) %86) #8, !srcloc !27
  %88 = extractvalue { i32, i32 } %87, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !28
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load ptr, ptr @mb_entry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %91, ptr noundef %43) #8
  br label %98

92:                                               ; preds = %38, %33
  %93 = load ptr, ptr %34, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %33

95:                                               ; preds = %92, %26
  %96 = load volatile i32, ptr %10, align 4
  %97 = and i32 %96, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  store volatile i32 %97, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  br label %98

98:                                               ; preds = %95, %90, %83
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @mb_cache_entry_touch(ptr nocapture readnone %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mb_cache_entry, ptr %1, i32 0, i32 4
  %4 = load i8, ptr %3, align 8
  %5 = or i8 %4, 1
  store i8 %5, ptr %3, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mb_cache_create(i32 noundef %0) #0 {
  %2 = shl nuw i32 1, %0
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 76) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %42, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mb_cache, ptr %4, i32 0, i32 1
  store i32 %0, ptr %7, align 4
  %8 = shl i32 %2, 4
  %9 = getelementptr inbounds %struct.mb_cache, ptr %4, i32 0, i32 2
  store i32 %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.mb_cache, ptr %4, i32 0, i32 4
  store volatile ptr %10, ptr %10, align 8
  %11 = getelementptr inbounds %struct.mb_cache, ptr %4, i32 0, i32 4, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mb_cache, ptr %4, i32 0, i32 3
  store i32 0, ptr %12, align 4
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #8
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %15, label %16, !prof !29

15:                                               ; preds = %6
  store ptr null, ptr %4, align 8
  br label %22

16:                                               ; preds = %6
  %17 = extractvalue { i32, i1 } %13, 0
  %18 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 3264) #10
  store ptr %18, ptr %4, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  store ptr null, ptr %18, align 64
  %21 = icmp eq i32 %0, 0
  br i1 %21, label %29, label %23

22:                                               ; preds = %16, %15
  tail call void @kfree(ptr noundef nonnull %4) #8
  br label %42

23:                                               ; preds = %23, %20
  %24 = phi i32 [ %27, %23 ], [ 1, %20 ]
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr %struct.hlist_bl_head, ptr %25, i32 %24
  store ptr null, ptr %26, align 4
  %27 = add nuw i32 %24, 1
  %28 = icmp eq i32 %27, %2
  br i1 %28, label %29, label %23

29:                                               ; preds = %23, %20
  %30 = getelementptr inbounds %struct.mb_cache, ptr %4, i32 0, i32 6
  store ptr @mb_cache_count, ptr %30, align 4
  %31 = getelementptr inbounds %struct.mb_cache, ptr %4, i32 0, i32 6, i32 1
  store ptr @mb_cache_scan, ptr %31, align 8
  %32 = getelementptr inbounds %struct.mb_cache, ptr %4, i32 0, i32 6, i32 3
  store i32 2, ptr %32, align 8
  %33 = tail call i32 @register_shrinker(ptr noundef %30) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %4, align 8
  tail call void @kfree(ptr noundef %36) #8
  tail call void @kfree(ptr noundef nonnull %4) #8
  br label %42

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.mb_cache, ptr %4, i32 0, i32 7
  store i32 -32, ptr %38, align 4
  %39 = getelementptr inbounds %struct.mb_cache, ptr %4, i32 0, i32 7, i32 1
  store volatile ptr %39, ptr %39, align 8
  %40 = getelementptr inbounds %struct.mb_cache, ptr %4, i32 0, i32 7, i32 1, i32 1
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.mb_cache, ptr %4, i32 0, i32 7, i32 2
  store ptr @mb_cache_shrink_worker, ptr %41, align 8
  br label %42

42:                                               ; preds = %37, %35, %22, %1
  %43 = phi ptr [ %4, %37 ], [ null, %1 ], [ null, %35 ], [ null, %22 ]
  ret ptr %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @mb_cache_count(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mb_cache_scan(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call fastcc i32 @mb_cache_shrink(ptr noundef %3, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mb_cache_shrink_worker(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -60
  %3 = getelementptr i8, ptr %0, i32 -52
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 4
  %6 = tail call fastcc i32 @mb_cache_shrink(ptr noundef %2, i32 noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mb_cache_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 6
  tail call void @unregister_shrinker(ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.mb_cache, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %45, label %6

6:                                                ; preds = %43, %1
  %7 = phi ptr [ %8, %43 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mb_cache_entry, ptr %7, i32 0, i32 1
  %10 = getelementptr inbounds %struct.mb_cache_entry, ptr %7, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr %9, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = load ptr, ptr %11, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = and i32 %17, 1
  %19 = or i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  store volatile ptr %20, ptr %11, align 4
  %21 = icmp eq ptr %14, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.hlist_bl_node, ptr %14, i32 0, i32 1
  store ptr %11, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %13
  store ptr null, ptr %9, align 4
  store ptr null, ptr %10, align 4
  %25 = getelementptr inbounds %struct.mb_cache_entry, ptr %7, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #8, !srcloc !10
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #8, !srcloc !25
  br label %28

27:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 407, i32 noundef 9, ptr noundef null) #8
  br label %28

28:                                               ; preds = %27, %24
  %29 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  %33 = getelementptr inbounds %struct.mb_cache_entry, ptr %7, i32 0, i32 2
  %34 = load volatile i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %37, label %36, !prof !13

36:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 409, i32 noundef 9, ptr noundef null) #8
  br label %37

37:                                               ; preds = %36, %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #8, !srcloc !10
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #8, !srcloc !27
  %39 = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !28
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load ptr, ptr @mb_entry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %42, ptr noundef %7) #8
  br label %43

43:                                               ; preds = %41, %37
  %44 = icmp eq ptr %8, %3
  br i1 %44, label %45, label %6

45:                                               ; preds = %43, %1
  %46 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %46) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mbcache_exit() #4 section ".exit.text" {
  %1 = load ptr, ptr @mb_entry_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mbcache_init() #4 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.2, i32 noundef 40, i32 noundef 0, i32 noundef 1179648, ptr noundef null) #8
  store ptr %1, ptr @mb_entry_cache, align 4
  %2 = icmp eq ptr %1, null
  %3 = select i1 %2, i32 -12, i32 0
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

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
!8 = !{i64 2150089425}
!9 = !{!"branch_weights", i32 2146410443, i32 1073205}
!10 = !{i64 662868, i64 2148152839, i64 2148152865, i64 2148152912, i64 2148152934, i64 2148152962, i64 2148152982}
!11 = !{i64 2148172716, i64 2148172748, i64 2148172777, i64 2148172811, i64 2148172842, i64 2148172865}
!12 = !{i64 2148274056}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2150089536}
!15 = !{i64 2150089765}
!16 = !{i64 2150089607}
!17 = !{i64 2150089847}
!18 = !{i64 2148258728}
!19 = !{i64 2150090633}
!20 = !{i64 2148164254, i64 2148164280, i64 2148164309, i64 2148164343, i64 2148164374, i64 2148164397}
!21 = !{i64 2148831472}
!22 = !{i64 2148827296}
!23 = !{i64 2148827371, i64 2148827398, i64 2148827445, i64 2148827467, i64 2148827495, i64 2148827515}
!24 = !{i64 2148854475}
!25 = !{i64 2148166611, i64 2148166637, i64 2148166666, i64 2148166700, i64 2148166731, i64 2148166754}
!26 = !{i64 2148264933}
!27 = !{i64 2148167295, i64 2148167327, i64 2148167356, i64 2148167390, i64 2148167421, i64 2148167444}
!28 = !{i64 2148265136}
!29 = !{!"branch_weights", i32 1, i32 2000}
