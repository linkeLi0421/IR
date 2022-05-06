; ModuleID = '/llk/IR/drivers/video/fbdev/core/fb_defio.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fb_defio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_deferred_io_fsync:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_deferred_io_fsync\22\09\09\09\09\09"
module asm "__kstrtabns_fb_deferred_io_fsync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_deferred_io_init:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_deferred_io_init\22\09\09\09\09\09"
module asm "__kstrtabns_fb_deferred_io_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_deferred_io_open:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_deferred_io_open\22\09\09\09\09\09"
module asm "__kstrtabns_fb_deferred_io_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_deferred_io_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_deferred_io_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_fb_deferred_io_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.71 = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.66, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.66 = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.24, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.fb_deferred_io = type { i32, %struct.mutex, %struct.list_head, ptr, ptr }
%struct.page = type { i32, %union.anon.15, %union.anon.30, %struct.atomic_t }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.30 = type { %struct.atomic_t }
%struct.anon.26 = type { ptr, i32, i32, i32 }
%struct.vm_fault = type { %struct.anon.26, i32, ptr, ptr, %union.anon.27, ptr, ptr, ptr, ptr, ptr }
%union.anon.27 = type { i32 }

@__kstrtab_fb_deferred_io_fsync = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_deferred_io_fsync = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_deferred_io_fsync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_deferred_io_fsync to i32), ptr @__kstrtab_fb_deferred_io_fsync, ptr @__kstrtabns_fb_deferred_io_fsync }, section "___ksymtab_gpl+fb_deferred_io_fsync", align 4
@fb_deferred_io_vm_ops = internal constant %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fb_deferred_io_fault, ptr null, ptr null, ptr null, ptr @fb_deferred_io_mkwrite, ptr null, ptr null, ptr null, ptr null }, align 4
@fb_deferred_io_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [15 x i8] c"&fbdefio->lock\00", align 1
@__kstrtab_fb_deferred_io_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_deferred_io_init = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_deferred_io_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_deferred_io_init to i32), ptr @__kstrtab_fb_deferred_io_init, ptr @__kstrtabns_fb_deferred_io_init }, section "___ksymtab_gpl+fb_deferred_io_init", align 4
@fb_deferred_io_aops = internal constant %struct.address_space_operations { ptr null, ptr null, ptr null, ptr @fb_deferred_io_set_page_dirty, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_fb_deferred_io_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_deferred_io_open = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_deferred_io_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_deferred_io_open to i32), ptr @__kstrtab_fb_deferred_io_open, ptr @__kstrtabns_fb_deferred_io_open }, section "___ksymtab_gpl+fb_deferred_io_open", align 4
@__kstrtab_fb_deferred_io_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_deferred_io_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_deferred_io_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_deferred_io_cleanup to i32), ptr @__kstrtab_fb_deferred_io_cleanup, ptr @__kstrtabns_fb_deferred_io_cleanup }, section "___ksymtab_gpl+fb_deferred_io_cleanup", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"\013no mapping available\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_fb_deferred_io_cleanup, ptr @__ksymtab_fb_deferred_io_fsync, ptr @__ksymtab_fb_deferred_io_init, ptr @__ksymtab_fb_deferred_io_open], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fb_deferred_io_fsync(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @file_write_and_wait_range(ptr noundef %0, i64 noundef %1, i64 noundef %2) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 24
  tail call void @down_write(ptr noundef %16) #5
  %17 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 18
  %18 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %17) #5
  %19 = load ptr, ptr @system_wq, align 4
  %20 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %19, ptr noundef %17, i32 noundef 0) #5
  tail call void @up_write(ptr noundef %16) #5
  br label %21

21:                                               ; preds = %15, %11, %4
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @fb_deferred_io_mmap(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @fb_deferred_io_vm_ops, ptr %3, align 4
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = or i32 %5, 67371008
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = or i32 %5, 67387392
  store i32 %12, ptr %4, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  store ptr %0, ptr %14, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fb_deferred_io_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/core/fb_defio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #5, !srcloc !9
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.fb_deferred_io, ptr %3, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @fb_deferred_io_init.__key) #5
  %8 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 18
  store i32 -32, ptr %8, align 4
  %9 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 18, i32 0, i32 1
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 18, i32 0, i32 1, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 18, i32 0, i32 2
  store ptr @fb_deferred_io_work, ptr %11, align 4
  %12 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 18, i32 1
  tail call void @init_timer_key(ptr noundef %12, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #5
  %13 = getelementptr inbounds %struct.fb_deferred_io, ptr %3, i32 0, i32 2
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.fb_deferred_io, ptr %3, i32 0, i32 2, i32 1
  store ptr %13, ptr %14, align 4
  %15 = load i32, ptr %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  store i32 100, ptr %3, align 4
  br label %18

18:                                               ; preds = %17, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fb_deferred_io_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -716
  %3 = getelementptr i8, ptr %0, i32 44
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fb_deferred_io, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #5
  %6 = getelementptr inbounds %struct.fb_deferred_io, ptr %4, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %45, label %9

9:                                                ; preds = %39, %1
  %10 = phi ptr [ %43, %39 ], [ %7, %1 ]
  %11 = getelementptr i8, ptr %10, i32 -4
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15, !prof !10

15:                                               ; preds = %9
  %16 = add i32 %12, -1
  br label %19

17:                                               ; preds = %9
  %18 = ptrtoint ptr %11 to i32
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = inttoptr i32 %20 to ptr
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #5, !srcloc !11
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #5, !srcloc !12
  %27 = extractvalue { i32, i32, i32 } %26, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %19
  tail call void @__folio_lock(ptr noundef %21) #5
  br label %31

31:                                               ; preds = %30, %25
  %32 = load volatile i32, ptr %10, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35, !prof !10

35:                                               ; preds = %31
  %36 = add i32 %32, -1
  br label %39

37:                                               ; preds = %31
  %38 = ptrtoint ptr %11 to i32
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = inttoptr i32 %40 to ptr
  %42 = tail call i32 @folio_mkclean(ptr noundef %41) #5
  tail call void @unlock_page(ptr noundef %11) #5
  %43 = load ptr, ptr %10, align 4
  %44 = icmp eq ptr %43, %6
  br i1 %44, label %45, label %9

45:                                               ; preds = %39, %1
  %46 = getelementptr inbounds %struct.fb_deferred_io, ptr %4, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  tail call void %47(ptr noundef %2, ptr noundef %6) #5
  %48 = load ptr, ptr %6, align 4
  %49 = icmp eq ptr %48, %6
  br i1 %49, label %57, label %50

50:                                               ; preds = %50, %45
  %51 = phi ptr [ %52, %50 ], [ %48, %45 ]
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %54, ptr %55, align 4
  store volatile ptr %52, ptr %54, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %51, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %53, align 4
  %56 = icmp eq ptr %52, %6
  br i1 %56, label %57, label %50

57:                                               ; preds = %50, %45
  tail call void @mutex_unlock(ptr noundef %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @fb_deferred_io_open(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 9
  store ptr @fb_deferred_io_aops, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fb_deferred_io_cleanup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/core/fb_defio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 229, 0\0A.popsection", ""() #5, !srcloc !14
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 18
  %8 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %7) #5
  %9 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 24
  %14 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 1
  br label %15

15:                                               ; preds = %30, %12
  %16 = phi i32 [ 0, %12 ], [ %33, %30 ]
  %17 = load ptr, ptr %13, align 4
  %18 = getelementptr i8, ptr %17, i32 %16
  %19 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %18) #5
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = tail call ptr @vmalloc_to_page(ptr noundef %18) #5
  br label %30

22:                                               ; preds = %15
  %23 = load ptr, ptr @mem_map, align 4
  %24 = load i32, ptr %14, align 4
  %25 = add i32 %24, %16
  %26 = lshr i32 %25, 12
  %27 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %28 = sub i32 %26, %27
  %29 = getelementptr %struct.page, ptr %23, i32 %28
  br label %30

30:                                               ; preds = %22, %20
  %31 = phi ptr [ %21, %20 ], [ %29, %22 ]
  %32 = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 1, i32 0, i32 1
  store ptr null, ptr %32, align 4
  %33 = add i32 %16, 4096
  %34 = load i32, ptr %9, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %15, label %36

36:                                               ; preds = %30, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fb_deferred_io_fault(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.anon.26, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 12
  %8 = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 7, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %64

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 24
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %7
  %15 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %14) #5
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = tail call ptr @vmalloc_to_page(ptr noundef %14) #5
  br label %27

18:                                               ; preds = %11
  %19 = load ptr, ptr @mem_map, align 4
  %20 = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 7, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %7
  %23 = lshr i32 %22, 12
  %24 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %25 = sub i32 %23, %24
  %26 = getelementptr %struct.page, ptr %19, i32 %25
  br label %27

27:                                               ; preds = %18, %16
  %28 = phi ptr [ %17, %16 ], [ %26, %18 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %64, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35, !prof !10

35:                                               ; preds = %30
  %36 = add i32 %32, -1
  br label %39

37:                                               ; preds = %30
  %38 = ptrtoint ptr %28 to i32
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #5, !srcloc !11
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 1, ptr elementtype(i32) %42) #5, !srcloc !15
  %44 = load ptr, ptr %0, align 4
  %45 = getelementptr inbounds %struct.vm_area_struct, ptr %44, i32 0, i32 14
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.file, ptr %46, i32 0, i32 17
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1, i32 0, i32 1
  store ptr %50, ptr %51, align 4
  br label %56

52:                                               ; preds = %39
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  %54 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi ptr [ %50, %48 ], [ %55, %52 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60, !prof !8

59:                                               ; preds = %56
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/core/fb_defio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 61, 0\0A.popsection", ""() #5, !srcloc !16
  unreachable

60:                                               ; preds = %56
  %61 = load i32, ptr %5, align 4
  %62 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1, i32 0, i32 2
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  store ptr %28, ptr %63, align 4
  br label %64

64:                                               ; preds = %60, %27, %1
  %65 = phi i32 [ 0, %60 ], [ 2, %1 ], [ 2, %27 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fb_deferred_io_mkwrite(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @file_update_time(ptr noundef %10) #5
  %12 = getelementptr inbounds %struct.fb_deferred_io, ptr %8, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %12) #5
  %13 = getelementptr inbounds %struct.fb_deferred_io, ptr %8, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.fb_deferred_io, ptr %8, i32 0, i32 2
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void %14(ptr noundef %6) #5
  br label %21

21:                                               ; preds = %20, %16, %1
  %22 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26, !prof !10

26:                                               ; preds = %21
  %27 = add i32 %23, -1
  br label %30

28:                                               ; preds = %21
  %29 = ptrtoint ptr %3 to i32
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = inttoptr i32 %31 to ptr
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #5, !srcloc !11
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #5, !srcloc !12
  %38 = extractvalue { i32, i32, i32 } %37, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %30
  tail call void @__folio_lock(ptr noundef %32) #5
  br label %42

42:                                               ; preds = %41, %36
  %43 = getelementptr inbounds %struct.fb_deferred_io, ptr %8, i32 0, i32 2
  %44 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1, i32 0, i32 2
  br label %45

45:                                               ; preds = %52, %42
  %46 = phi ptr [ %43, %42 ], [ %47, %52 ]
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %43
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %47, i32 -4
  %51 = icmp eq ptr %50, %3
  br i1 %51, label %62, label %52, !prof !8

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.anon.16, ptr %47, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %44, align 4
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %57, label %45

57:                                               ; preds = %52, %45
  %58 = phi ptr [ %47, %52 ], [ %43, %45 ]
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  store ptr %22, ptr %59, align 4
  store ptr %58, ptr %22, align 4
  %61 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %60, ptr %61, align 4
  store volatile ptr %22, ptr %60, align 4
  br label %62

62:                                               ; preds = %57, %49
  tail call void @mutex_unlock(ptr noundef %12) #5
  %63 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 18
  %64 = load i32, ptr %8, align 4
  %65 = load ptr, ptr @system_wq, align 4
  %66 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %65, ptr noundef %63, i32 noundef %64) #5
  ret i32 512
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_mkclean(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fb_deferred_io_set_page_dirty(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !10

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load volatile i32, ptr %2, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !10

20:                                               ; preds = %16
  %21 = add i32 %17, -1
  br label %24

22:                                               ; preds = %16
  %23 = ptrtoint ptr %0 to i32
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = inttoptr i32 %25 to ptr
  tail call void @_set_bit(i32 noundef 3, ptr noundef %26) #5
  br label %27

27:                                               ; preds = %24, %10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!9 = !{i64 2154331440, i64 2154331940, i64 2154331477, i64 2154331533, i64 2154331567, i64 2154331591, i64 2154331632, i64 2154331653, i64 2154331681, i64 2154331715}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 546113, i64 2148036084, i64 2148036110, i64 2148036157, i64 2148036179, i64 2148036207, i64 2148036227}
!12 = !{i64 2148055961, i64 2148055993, i64 2148056022, i64 2148056056, i64 2148056087, i64 2148056110}
!13 = !{i64 2148157301}
!14 = !{i64 2154336380, i64 2154336880, i64 2154336417, i64 2154336473, i64 2154336507, i64 2154336531, i64 2154336572, i64 2154336593, i64 2154336621, i64 2154336655}
!15 = !{i64 2148047499, i64 2148047525, i64 2148047554, i64 2148047588, i64 2148047619, i64 2148047642}
!16 = !{i64 2154321047, i64 2154321546, i64 2154321084, i64 2154321140, i64 2154321174, i64 2154321198, i64 2154321239, i64 2154321260, i64 2154321288, i64 2154321322}
