; ModuleID = '/llk/IR/mm/fadvise.c_pt.bc'
source_filename = "../mm/fadvise.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_fadvise:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_fadvise\22\09\09\09\09\09"
module asm "__kstrtabns_generic_fadvise:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_fadvise:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_fadvise\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_fadvise:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.85, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.86, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.87, ptr, %struct.address_space, %struct.list_head, %union.anon.90, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.85 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.86 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.87 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.90 = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@noop_backing_dev_info = external dso_local global %struct.backing_dev_info, align 8
@__kstrtab_generic_fadvise = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_fadvise = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_fadvise = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_fadvise to i32), ptr @__kstrtab_generic_fadvise, ptr @__kstrtabns_generic_fadvise }, section "___ksymtab+generic_fadvise", align 4
@__kstrtab_vfs_fadvise = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_fadvise = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_fadvise = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_fadvise to i32), ptr @__kstrtab_vfs_fadvise, ptr @__kstrtabns_vfs_fadvise }, section "___ksymtab+vfs_fadvise", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_generic_fadvise, ptr @__ksymtab_vfs_fadvise], section "llvm.metadata"

@sys_fadvise64_64 = dso_local alias i32 (i32, i64, i64, i32), ptr @__se_sys_fadvise64_64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_fadvise(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.readahead_control, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, -4096
  %11 = icmp eq i16 %10, 4096
  br i1 %11, label %111, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  %16 = icmp slt i64 %2, 0
  %17 = or i1 %16, %15
  br i1 %17, label %111, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %14, align 4
  %20 = tail call ptr @inode_to_bdi(ptr noundef %19) #3
  %21 = icmp eq ptr %20, @noop_backing_dev_info
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = icmp ult i32 %3, 6
  %24 = select i1 %23, i32 0, i32 -22
  br label %111

25:                                               ; preds = %18
  %26 = add i64 %2, %1
  %27 = icmp eq i64 %2, 0
  %28 = icmp slt i64 %26, %2
  %29 = or i1 %27, %28
  %30 = add i64 %26, -1
  %31 = select i1 %29, i64 -1, i64 %30
  switch i32 %3, label %111 [
    i32 0, label %32
    i32 1, label %42
    i32 2, label %49
    i32 3, label %60
    i32 5, label %110
    i32 4, label %75
  ]

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.backing_dev_info, ptr %20, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 13, i32 3
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %36) #3
  %37 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, -4097
  store i32 %39, ptr %37, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  %40 = load i16, ptr %36, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %36, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  br label %110

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %43) #3
  %44 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %45 = load i32, ptr %44, align 8
  %46 = or i32 %45, 4096
  store i32 %46, ptr %44, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  %47 = load i16, ptr %43, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %43, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  br label %110

49:                                               ; preds = %25
  %50 = getelementptr inbounds %struct.backing_dev_info, ptr %20, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = shl i32 %51, 1
  %53 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 13, i32 3
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %54) #3
  %55 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, -4097
  store i32 %57, ptr %55, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  %58 = load i16, ptr %54, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %54, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  br label %110

60:                                               ; preds = %25
  %61 = lshr i64 %1, 12
  %62 = trunc i64 %61 to i32
  %63 = lshr i64 %31, 12
  %64 = trunc i64 %63 to i32
  %65 = sub i32 %64, %62
  %66 = add i32 %65, 1
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 -1, i32 %66
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #3
  store ptr %0, ptr %5, align 4
  %69 = getelementptr inbounds %struct.readahead_control, ptr %5, i32 0, i32 1
  store ptr %14, ptr %69, align 4
  %70 = getelementptr inbounds %struct.readahead_control, ptr %5, i32 0, i32 2
  %71 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 13
  store ptr %71, ptr %70, align 4
  %72 = getelementptr inbounds %struct.readahead_control, ptr %5, i32 0, i32 3
  store i32 %62, ptr %72, align 4
  %73 = getelementptr inbounds %struct.readahead_control, ptr %5, i32 0, i32 4
  store i32 0, ptr %73, align 4
  %74 = getelementptr inbounds %struct.readahead_control, ptr %5, i32 0, i32 5
  store i32 0, ptr %74, align 4
  call void @force_page_cache_ra(ptr noundef nonnull %5, i32 noundef %68) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #3
  br label %110

75:                                               ; preds = %25
  %76 = load ptr, ptr %14, align 4
  %77 = tail call ptr @inode_to_bdi(ptr noundef %76) #3
  %78 = getelementptr inbounds %struct.backing_dev_info, ptr %77, i32 0, i32 11, i32 10
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = tail call i32 @__filemap_fdatawrite_range(ptr noundef nonnull %14, i64 noundef %1, i64 noundef %31, i32 noundef 0) #3
  br label %84

84:                                               ; preds = %82, %75
  %85 = add i64 %1, 4095
  %86 = lshr i64 %85, 12
  %87 = trunc i64 %86 to i32
  %88 = lshr i64 %31, 12
  %89 = trunc i64 %88 to i32
  %90 = and i64 %31, 4095
  %91 = icmp eq i64 %90, 4095
  br i1 %91, label %101, label %92

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 13
  %94 = load i64, ptr %93, align 8
  %95 = add i64 %94, -1
  %96 = icmp eq i64 %31, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = icmp eq i32 %89, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %97
  %100 = add i32 %89, -1
  br label %101

101:                                              ; preds = %99, %92, %84
  %102 = phi i32 [ %100, %99 ], [ %89, %92 ], [ %89, %84 ]
  %103 = icmp ult i32 %102, %87
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #3
  store i32 0, ptr %6, align 4
  tail call void @lru_add_drain() #3
  call void @invalidate_mapping_pagevec(ptr noundef nonnull %14, i32 noundef %87, i32 noundef %102, ptr noundef nonnull %6) #3
  %105 = load i32, ptr %6, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  call void @lru_add_drain_all() #3
  %108 = call i32 @invalidate_mapping_pages(ptr noundef nonnull %14, i32 noundef %87, i32 noundef %102) #3
  br label %109

109:                                              ; preds = %107, %104
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #3
  br label %110

110:                                              ; preds = %109, %101, %97, %60, %49, %42, %32, %25
  br label %111

111:                                              ; preds = %110, %25, %22, %12, %4
  %112 = phi i32 [ 0, %110 ], [ -29, %4 ], [ -22, %12 ], [ %24, %22 ], [ -22, %25 ]
  ret i32 %112
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__filemap_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_mapping_pagevec(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain_all() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_fadvise(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.file_operations, ptr %6, i32 0, i32 31
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 %8(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #3
  br label %14

12:                                               ; preds = %4
  %13 = tail call i32 @generic_fadvise(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3)
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_fadvise64_64(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @__fdget(i32 noundef %0) #3, !noalias !12
  %6 = and i32 %5, -4
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.file_operations, ptr %11, i32 0, i32 31
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = tail call i32 %13(ptr noundef nonnull %7, i64 noundef %1, i64 noundef %2, i32 noundef %3) #3
  br label %19

17:                                               ; preds = %9
  %18 = tail call i32 @generic_fadvise(ptr noundef nonnull %7, i64 noundef %1, i64 noundef %2, i32 noundef %3) #3
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @fput(ptr noundef nonnull %7) #3
  br label %24

24:                                               ; preds = %23, %19, %4
  %25 = phi i32 [ -9, %4 ], [ %20, %19 ], [ %20, %23 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fadvise64_64(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @__fdget(i32 noundef %0) #3, !noalias !15
  %6 = and i32 %5, -4
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.file_operations, ptr %11, i32 0, i32 31
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = tail call i32 %13(ptr noundef nonnull %7, i64 noundef %1, i64 noundef %2, i32 noundef %3) #3
  br label %19

17:                                               ; preds = %9
  %18 = tail call i32 @generic_fadvise(ptr noundef nonnull %7, i64 noundef %1, i64 noundef %2, i32 noundef %3) #3
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @fput(ptr noundef nonnull %7) #3
  br label %24

24:                                               ; preds = %23, %19, %4
  %25 = phi i32 [ -9, %4 ], [ %20, %19 ], [ %20, %23 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @force_page_cache_ra(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
!8 = !{i64 2149003787}
!9 = !{i64 2148999611}
!10 = !{i64 2148999686, i64 2148999713, i64 2148999760, i64 2148999782, i64 2148999810, i64 2148999830}
!11 = !{i64 2149026790}
!12 = !{!13}
!13 = distinct !{!13, !14, !"fdget: argument 0"}
!14 = distinct !{!14, !"fdget"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"fdget: argument 0"}
!17 = distinct !{!17, !"fdget"}
