; ModuleID = '/llk/IR/fs/kernfs/file.c_pt.bc'
source_filename = "../fs/kernfs/file.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernfs_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22kernfs_notify\22\09\09\09\09\09"
module asm "__kstrtabns_kernfs_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon, ptr, i64, i16, i16, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.kernfs_open_node = type { %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.63, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.64, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.65, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.64 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.65 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.kernfs_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, ptr, ptr }
%struct.kernfs_open_file = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, %struct.list_head, ptr, i32, i8, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.71, %struct.list_head, %struct.list_head, %union.anon.72 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.69 }
%union.anon.69 = type { i64 }
%union.anon.71 = type { %struct.list_head }
%union.anon.72 = type { %struct.hlist_node }
%struct.kernfs_root = type { ptr, i32, %struct.idr, i32, i32, ptr, %struct.list_head, %struct.wait_queue_head, %struct.rw_semaphore }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.27, %union.anon.28 }
%union.anon.27 = type { ptr }
%union.anon.28 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.21, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}

@kernfs_open_node_lock = internal global %struct.spinlock zeroinitializer, align 4
@kernfs_open_file_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @kernfs_open_file_mutex, i64 12), ptr getelementptr (i8, ptr @kernfs_open_file_mutex, i64 12) } }, align 4
@kernfs_notify.kernfs_notify_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @kernfs_notify.kernfs_notify_work, i64 4), ptr getelementptr (i8, ptr @kernfs_notify.kernfs_notify_work, i64 4) }, ptr @kernfs_notify_workfn }, align 4
@.str = private unnamed_addr constant [17 x i8] c"fs/kernfs/file.c\00", align 1
@kernfs_notify_lock = internal global %struct.spinlock zeroinitializer, align 4
@kernfs_notify_list = internal global ptr @kernfs_notify_list, align 4
@__kstrtab_kernfs_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernfs_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_kernfs_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernfs_notify to i32), ptr @__kstrtab_kernfs_notify, ptr @__kstrtabns_kernfs_notify }, section "___ksymtab_gpl+kernfs_notify", align 4
@kernfs_file_fops = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @kernfs_fop_read_iter, ptr @kernfs_fop_write_iter, ptr null, ptr null, ptr null, ptr @kernfs_fop_poll, ptr null, ptr null, ptr @kernfs_fop_mmap, i32 0, ptr @kernfs_fop_open, ptr null, ptr @kernfs_fop_release, ptr @noop_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@kernfs_vm_ops = internal constant %struct.vm_operations_struct { ptr @kernfs_vma_open, ptr null, ptr null, ptr null, ptr null, ptr @kernfs_vma_fault, ptr null, ptr null, ptr null, ptr @kernfs_vma_page_mkwrite, ptr null, ptr @kernfs_vma_access, ptr null, ptr null }, align 4
@kernfs_fop_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"&of->mutex\00", align 1
@kernfs_fop_open.__key.4 = internal global %struct.lock_class_key zeroinitializer, align 1
@kernfs_fop_open.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"&of->prealloc_mutex\00", align 1
@kernfs_seq_ops = internal constant %struct.seq_operations { ptr @kernfs_seq_start, ptr @kernfs_seq_stop, ptr @kernfs_seq_next, ptr @kernfs_seq_show }, align 4
@kernfs_get_open_node.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"&new_on->poll\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_kernfs_notify], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernfs_drain_open_files(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 10
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 8320
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %63, label %6

6:                                                ; preds = %1
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @kernfs_open_node_lock) #8
  %7 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 7, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %8) #8, !srcloc !8
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %8, ptr nonnull %8, i32 1, ptr nonnull elementtype(i32) %8) #8, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %12 = load i16, ptr @kernfs_open_node_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @kernfs_open_node_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  tail call void @mutex_lock(ptr noundef nonnull @kernfs_open_file_mutex) #8
  %14 = getelementptr inbounds %struct.kernfs_open_node, ptr %8, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %54, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 7
  br label %22

19:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %20 = load i16, ptr @kernfs_open_node_lock, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr @kernfs_open_node_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %63

22:                                               ; preds = %51, %17
  %23 = phi ptr [ %15, %17 ], [ %52, %51 ]
  %24 = getelementptr i8, ptr %23, i32 -60
  %25 = load i16, ptr %2, align 8
  %26 = and i16 %25, 128
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %22
  %29 = getelementptr i8, ptr %23, i32 -56
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.file, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 9
  %34 = load ptr, ptr %33, align 8
  tail call void @unmap_mapping_range(ptr noundef %34, i64 noundef 0, i64 noundef 0, i32 noundef 1) #8
  %35 = load i16, ptr %2, align 8
  br label %36

36:                                               ; preds = %28, %22
  %37 = phi i16 [ %35, %28 ], [ %25, %22 ]
  %38 = and i16 %37, 8192
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %23, i32 16
  %42 = load i8, ptr %41, align 4
  %43 = and i8 %42, 2
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load ptr, ptr %18, align 8
  %47 = getelementptr inbounds %struct.kernfs_ops, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void %48(ptr noundef %24) #8
  %49 = load i8, ptr %41, align 4
  %50 = or i8 %49, 2
  store i8 %50, ptr %41, align 4
  br label %51

51:                                               ; preds = %45, %40, %36
  %52 = load ptr, ptr %23, align 4
  %53 = icmp eq ptr %52, %14
  br i1 %53, label %54, label %22

54:                                               ; preds = %51, %10
  tail call void @mutex_unlock(ptr noundef nonnull @kernfs_open_file_mutex) #8
  %55 = load ptr, ptr %7, align 4
  tail call void @mutex_lock(ptr noundef nonnull @kernfs_open_file_mutex) #8
  %56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kernfs_open_node_lock) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #8, !srcloc !8
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %55, ptr %55, i32 1, ptr elementtype(i32) %55) #8, !srcloc !16
  %58 = extractvalue { i32, i32 } %57, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store ptr null, ptr %7, align 4
  br label %61

61:                                               ; preds = %60, %54
  %62 = phi ptr [ %55, %60 ], [ null, %54 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kernfs_open_node_lock, i32 noundef %56) #8
  tail call void @mutex_unlock(ptr noundef nonnull @kernfs_open_file_mutex) #8
  tail call void @kfree(ptr noundef %62) #8
  br label %63

63:                                               ; preds = %61, %19, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @kernfs_put_open_node(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 7, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @mutex_lock(ptr noundef nonnull @kernfs_open_file_mutex) #8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kernfs_open_node_lock) #8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.kernfs_open_file, ptr %1, i32 0, i32 7
  %9 = getelementptr inbounds %struct.kernfs_open_file, ptr %1, i32 0, i32 7, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  br label %13

13:                                               ; preds = %7, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #8, !srcloc !8
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #8, !srcloc !16
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store ptr null, ptr %3, align 4
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi ptr [ %4, %17 ], [ null, %13 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kernfs_open_node_lock, i32 noundef %5) #8
  tail call void @mutex_unlock(ptr noundef nonnull @kernfs_open_file_mutex) #8
  tail call void @kfree(ptr noundef %19) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernfs_generic_poll(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 47
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi ptr [ %12, %10 ], [ null, %2 ]
  %15 = getelementptr inbounds %struct.kernfs_node, ptr %14, i32 0, i32 7, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.kernfs_open_node, ptr %16, i32 0, i32 2
  %18 = icmp eq ptr %1, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %1, align 4
  %21 = icmp ne ptr %20, null
  %22 = icmp ne ptr %17, null
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  tail call void %20(ptr noundef %4, ptr noundef nonnull %17, ptr noundef nonnull %1) #8
  br label %25

25:                                               ; preds = %24, %19, %13
  %26 = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.kernfs_open_node, ptr %16, i32 0, i32 1
  %29 = load volatile i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  %31 = select i1 %30, i32 325, i32 335
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernfs_notify(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 10
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 15
  %5 = icmp eq i16 %4, 2
  br i1 %5, label %7, label %6, !prof !18

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 921, i32 noundef 9, ptr noundef null) #8
  br label %26

7:                                                ; preds = %1
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kernfs_open_node_lock) #8
  %9 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.kernfs_open_node, ptr %10, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #8, !srcloc !8
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #8, !srcloc !9
  %15 = getelementptr inbounds %struct.kernfs_open_node, ptr %10, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %15, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %16

16:                                               ; preds = %12, %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kernfs_open_node_lock, i32 noundef %8) #8
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kernfs_notify_lock) #8
  %18 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 7, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  tail call void @kernfs_get(ptr noundef %0) #8
  %22 = load ptr, ptr @kernfs_notify_list, align 4
  store ptr %22, ptr %18, align 8
  store ptr %0, ptr @kernfs_notify_list, align 4
  %23 = load ptr, ptr @system_wq, align 4
  %24 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %23, ptr noundef nonnull @kernfs_notify.kernfs_notify_work) #8
  br label %25

25:                                               ; preds = %21, %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kernfs_notify_lock, i32 noundef %17) #8
  br label %26

26:                                               ; preds = %25, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kernfs_notify_workfn(ptr nocapture noundef readnone %0) #0 {
  %2 = alloca %struct.qstr, align 8
  call void @_raw_spin_lock_irq(ptr noundef nonnull @kernfs_notify_lock) #8
  %3 = load ptr, ptr @kernfs_notify_list, align 4
  %4 = icmp eq ptr %3, @kernfs_notify_list
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %2, i32 4
  %7 = getelementptr inbounds i8, ptr %2, i32 8
  br label %11

8:                                                ; preds = %80, %1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %9 = load i16, ptr @kernfs_notify_lock, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr @kernfs_notify_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  ret void

11:                                               ; preds = %80, %5
  %12 = phi ptr [ %3, %5 ], [ %81, %80 ]
  %13 = getelementptr inbounds %struct.kernfs_node, ptr %12, i32 0, i32 7, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr @kernfs_notify_list, align 4
  store ptr null, ptr %13, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %15 = load i16, ptr @kernfs_notify_lock, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr @kernfs_notify_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %17 = getelementptr inbounds %struct.kernfs_node, ptr %12, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, ptr %12, ptr %18
  %21 = getelementptr inbounds %struct.kernfs_node, ptr %20, i32 0, i32 7, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.kernfs_root, ptr %22, i32 0, i32 8
  call void @down_write(ptr noundef %23) #8
  %24 = load ptr, ptr %17, align 8
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr %12, ptr %24
  %27 = getelementptr inbounds %struct.kernfs_node, ptr %26, i32 0, i32 7, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.kernfs_root, ptr %28, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %80, label %32

32:                                               ; preds = %11
  %33 = getelementptr inbounds %struct.kernfs_node, ptr %12, i32 0, i32 9
  %34 = getelementptr inbounds %struct.kernfs_node, ptr %12, i32 0, i32 3
  br label %35

35:                                               ; preds = %71, %32
  %36 = phi ptr [ %30, %32 ], [ %72, %71 ]
  %37 = getelementptr i8, ptr %36, i32 -12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !19
  %38 = load ptr, ptr %37, align 4
  %39 = load i64, ptr %33, align 8
  %40 = trunc i64 %39 to i32
  %41 = call ptr @ilookup(ptr noundef %38, i32 noundef %40) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %71, label %43

43:                                               ; preds = %35
  %44 = load ptr, ptr %34, align 4
  %45 = call i32 @strlen(ptr noundef %44)
  store i32 0, ptr %2, align 8
  store i32 %45, ptr %6, align 4
  store ptr %44, ptr %7, align 8
  %46 = call ptr @kernfs_get_parent(ptr noundef %12) #8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %37, align 4
  %50 = getelementptr inbounds %struct.kernfs_node, ptr %46, i32 0, i32 9
  %51 = load i64, ptr %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call ptr @ilookup(ptr noundef %49, i32 noundef %52) #8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  call void @kernfs_put(ptr noundef nonnull %46) #8
  br label %58

56:                                               ; preds = %48
  %57 = call i32 @fsnotify(i32 noundef 134217730, ptr noundef nonnull %41, i32 noundef 2, ptr noundef nonnull %53, ptr noundef nonnull %2, ptr noundef nonnull %41, i32 noundef 0) #8
  call void @iput(ptr noundef nonnull %53) #8
  call void @kernfs_put(ptr noundef nonnull %46) #8
  br label %70

58:                                               ; preds = %55, %43
  %59 = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 8
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 42
  %62 = load volatile i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load i16, ptr %41, align 8
  %66 = and i16 %65, -4096
  %67 = icmp eq i16 %66, 16384
  %68 = select i1 %67, i32 1073741826, i32 2
  %69 = call i32 @fsnotify(i32 noundef %68, ptr noundef nonnull %41, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef nonnull %41, i32 noundef 0) #8
  br label %70

70:                                               ; preds = %64, %58, %56
  call void @iput(ptr noundef nonnull %41) #8
  br label %71

71:                                               ; preds = %70, %35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  %72 = load ptr, ptr %36, align 4
  %73 = load ptr, ptr %17, align 8
  %74 = icmp eq ptr %73, null
  %75 = select i1 %74, ptr %12, ptr %73
  %76 = getelementptr inbounds %struct.kernfs_node, ptr %75, i32 0, i32 7, i32 0, i32 2
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.kernfs_root, ptr %77, i32 0, i32 6
  %79 = icmp eq ptr %72, %78
  br i1 %79, label %80, label %35

80:                                               ; preds = %71, %11
  call void @up_write(ptr noundef %23) #8
  call void @kernfs_put(ptr noundef %12) #8
  call void @_raw_spin_lock_irq(ptr noundef nonnull @kernfs_notify_lock) #8
  %81 = load ptr, ptr @kernfs_notify_list, align 4
  %82 = icmp eq ptr %81, @kernfs_notify_list
  br i1 %82, label %8, label %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_fop_read_iter(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.kernfs_node, ptr %8, i32 0, i32 10
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 64
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call i32 @seq_read_iter(ptr noundef %0, ptr noundef %1) #8
  br label %70

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 4096) #8
  %19 = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %23) #8
  br label %27

24:                                               ; preds = %15
  %25 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %18, i32 noundef 3264) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %70, label %27

27:                                               ; preds = %24, %22
  %28 = phi ptr [ %25, %24 ], [ %20, %22 ]
  %29 = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %29) #8
  %30 = load ptr, ptr %7, align 4
  %31 = tail call ptr @kernfs_get_active(ptr noundef %30) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @mutex_unlock(ptr noundef %29) #8
  br label %63

34:                                               ; preds = %27
  %35 = load ptr, ptr %7, align 4
  %36 = getelementptr inbounds %struct.kernfs_node, ptr %35, i32 0, i32 7, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.kernfs_open_node, ptr %37, i32 0, i32 1
  %39 = load volatile i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 6
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.kernfs_node, ptr %35, i32 0, i32 7
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.kernfs_ops, ptr %42, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %48 = load i64, ptr %47, align 8
  %49 = tail call i32 %44(ptr noundef %7, ptr noundef nonnull %28, i32 noundef %18, i64 noundef %48) #8
  %50 = load ptr, ptr %7, align 4
  br label %51

51:                                               ; preds = %46, %34
  %52 = phi ptr [ %50, %46 ], [ %35, %34 ]
  %53 = phi i32 [ %49, %46 ], [ -22, %34 ]
  tail call void @kernfs_put_active(ptr noundef %52) #8
  tail call void @mutex_unlock(ptr noundef %29) #8
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = tail call i32 @_copy_to_iter(ptr noundef %28, i32 noundef %53, ptr noundef %1) #8
  %57 = icmp eq i32 %56, %53
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = zext i32 %53 to i64
  %60 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %61 = load i64, ptr %60, align 8
  %62 = add i64 %61, %59
  store i64 %62, ptr %60, align 8
  br label %63

63:                                               ; preds = %58, %55, %51, %33
  %64 = phi i32 [ %53, %51 ], [ %53, %58 ], [ -19, %33 ], [ -14, %55 ]
  %65 = load ptr, ptr %19, align 4
  %66 = icmp eq ptr %28, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %68) #8
  br label %70

69:                                               ; preds = %63
  tail call void @kfree(ptr noundef nonnull %28) #8
  br label %70

70:                                               ; preds = %69, %67, %24, %13
  %71 = phi i32 [ %14, %13 ], [ -12, %24 ], [ %64, %69 ], [ %64, %67 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_fop_write_iter(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = icmp ugt i32 %9, %11
  br i1 %14, label %76, label %17

15:                                               ; preds = %2
  %16 = tail call i32 @llvm.umin.i32(i32 %9, i32 4096)
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %9, %13 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %23) #8
  br label %28

24:                                               ; preds = %17
  %25 = add i32 %18, 1
  %26 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef 3264) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %76, label %28

28:                                               ; preds = %24, %22
  %29 = phi ptr [ %26, %24 ], [ %20, %22 ]
  %30 = icmp slt i32 %18, 0
  %31 = load i1, ptr @check_copy_size.__already_done, align 1
  %32 = xor i1 %31, true
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %35, !prof !20

34:                                               ; preds = %28
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %35

35:                                               ; preds = %34, %28
  br i1 %30, label %38, label %36, !prof !20

36:                                               ; preds = %35
  %37 = tail call i32 @_copy_from_iter(ptr noundef %29, i32 noundef %18, ptr noundef %1) #8
  br label %38

38:                                               ; preds = %36, %35
  %39 = phi i32 [ %37, %36 ], [ 0, %35 ]
  %40 = icmp eq i32 %39, %18
  br i1 %40, label %41, label %69

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %29, i32 %18
  store i8 0, ptr %42, align 1
  %43 = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %43) #8
  %44 = load ptr, ptr %7, align 4
  %45 = tail call ptr @kernfs_get_active(ptr noundef %44) #8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  tail call void @mutex_unlock(ptr noundef %43) #8
  br label %69

48:                                               ; preds = %41
  %49 = load ptr, ptr %7, align 4
  %50 = getelementptr inbounds %struct.kernfs_node, ptr %49, i32 0, i32 7
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.kernfs_ops, ptr %51, i32 0, i32 9
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %57 = load i64, ptr %56, align 8
  %58 = tail call i32 %53(ptr noundef %7, ptr noundef nonnull %29, i32 noundef %18, i64 noundef %57) #8
  %59 = load ptr, ptr %7, align 4
  br label %60

60:                                               ; preds = %55, %48
  %61 = phi ptr [ %59, %55 ], [ %49, %48 ]
  %62 = phi i32 [ %58, %55 ], [ -22, %48 ]
  tail call void @kernfs_put_active(ptr noundef %61) #8
  tail call void @mutex_unlock(ptr noundef %43) #8
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = zext i32 %62 to i64
  %66 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %67 = load i64, ptr %66, align 8
  %68 = add i64 %67, %65
  store i64 %68, ptr %66, align 8
  br label %69

69:                                               ; preds = %64, %60, %47, %38
  %70 = phi i32 [ %62, %64 ], [ %62, %60 ], [ -19, %47 ], [ -14, %38 ]
  %71 = load ptr, ptr %19, align 4
  %72 = icmp eq ptr %29, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %74) #8
  br label %76

75:                                               ; preds = %69
  tail call void @kfree(ptr noundef nonnull %29) #8
  br label %76

76:                                               ; preds = %75, %73, %24, %13
  %77 = phi i32 [ -7, %13 ], [ -12, %24 ], [ %70, %75 ], [ %70, %73 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_fop_poll(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.seq_file, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 47
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi ptr [ %14, %12 ], [ null, %2 ]
  %17 = tail call ptr @kernfs_get_active(ptr noundef %16) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %57, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.kernfs_node, ptr %16, i32 0, i32 7
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.kernfs_ops, ptr %21, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = tail call i32 %23(ptr noundef %6, ptr noundef %1) #8
  br label %55

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.kernfs_open_file, ptr %6, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.file, ptr %29, i32 0, i32 1, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 47
  %37 = load ptr, ptr %36, align 4
  br label %38

38:                                               ; preds = %35, %27
  %39 = phi ptr [ %37, %35 ], [ null, %27 ]
  %40 = getelementptr inbounds %struct.kernfs_node, ptr %39, i32 0, i32 7, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.kernfs_open_node, ptr %41, i32 0, i32 2
  %43 = icmp eq ptr %1, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr %1, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void %45(ptr noundef %29, ptr noundef nonnull %42, ptr noundef nonnull %1) #8
  br label %48

48:                                               ; preds = %47, %44, %38
  %49 = getelementptr inbounds %struct.kernfs_open_file, ptr %6, i32 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.kernfs_open_node, ptr %41, i32 0, i32 1
  %52 = load volatile i32, ptr %51, align 4
  %53 = icmp eq i32 %50, %52
  %54 = select i1 %53, i32 325, i32 335
  br label %55

55:                                               ; preds = %48, %25
  %56 = phi i32 [ %26, %25 ], [ %54, %48 ]
  tail call void @kernfs_put_active(ptr noundef %16) #8
  br label %57

57:                                               ; preds = %55, %15
  %58 = phi i32 [ %56, %55 ], [ 335, %15 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_fop_mmap(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.seq_file, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 10
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, 128
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %60, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.kernfs_open_file, ptr %6, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %13) #8
  %14 = load ptr, ptr %6, align 4
  %15 = tail call ptr @kernfs_get_active(ptr noundef %14) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %58, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.kernfs_node, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.kernfs_ops, ptr %20, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef %6, ptr noundef %1) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.kernfs_open_file, ptr %6, i32 0, i32 10
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  %36 = load ptr, ptr %35, align 4
  br label %43

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.kernfs_open_file, ptr %6, i32 0, i32 11
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %37, %34
  %44 = phi ptr [ %36, %34 ], [ %39, %37 ]
  %45 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  %46 = icmp eq ptr %44, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.vm_operations_struct, ptr %44, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %43
  %52 = or i8 %31, 1
  store i8 %52, ptr %30, align 4
  %53 = load ptr, ptr %45, align 4
  %54 = getelementptr inbounds %struct.kernfs_open_file, ptr %6, i32 0, i32 11
  store ptr %53, ptr %54, align 4
  store ptr @kernfs_vm_ops, ptr %45, align 4
  br label %55

55:                                               ; preds = %51, %47, %37, %25, %17
  %56 = phi i32 [ %23, %17 ], [ 0, %25 ], [ -22, %37 ], [ -22, %47 ], [ 0, %51 ]
  %57 = load ptr, ptr %6, align 4
  tail call void @kernfs_put_active(ptr noundef %57) #8
  br label %58

58:                                               ; preds = %55, %12
  %59 = phi i32 [ %56, %55 ], [ -19, %12 ]
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %60

60:                                               ; preds = %58, %2
  %61 = phi i32 [ %59, %58 ], [ -19, %2 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_fop_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr %4, ptr %6
  %9 = getelementptr inbounds %struct.kernfs_node, ptr %8, i32 0, i32 7, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call ptr @kernfs_get_active(ptr noundef %4) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %150, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 7
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.kernfs_ops, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.kernfs_ops, ptr %15, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.kernfs_ops, ptr %15, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br label %27

27:                                               ; preds = %23, %19, %13
  %28 = phi i1 [ false, %19 ], [ false, %13 ], [ %26, %23 ]
  %29 = getelementptr inbounds %struct.kernfs_ops, ptr %15, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  %32 = getelementptr inbounds %struct.kernfs_ops, ptr %15, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  %35 = select i1 %31, i1 %34, i1 false
  %36 = icmp eq ptr %33, null
  %37 = getelementptr inbounds %struct.kernfs_root, ptr %10, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i16, ptr %0, align 8
  %48 = and i16 %47, 146
  %49 = icmp eq i16 %48, 0
  %50 = select i1 %49, i1 true, i1 %35
  br i1 %50, label %148, label %51

51:                                               ; preds = %46, %41
  %52 = and i32 %43, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i16, ptr %0, align 8
  %56 = and i16 %55, 292
  %57 = icmp eq i16 %56, 0
  %58 = select i1 %57, i1 true, i1 %28
  br i1 %58, label %148, label %59

59:                                               ; preds = %54, %51, %27
  %60 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %61 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 84) #10
  %62 = icmp eq ptr %61, null
  br i1 %62, label %148, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.kernfs_open_file, ptr %61, i32 0, i32 4
  %65 = select i1 %36, ptr @kernfs_fop_open.__key.4, ptr @kernfs_fop_open.__key
  tail call void @__mutex_init(ptr noundef %64, ptr noundef nonnull @.str.3, ptr noundef nonnull %65) #8
  store ptr %4, ptr %61, align 8
  %66 = getelementptr inbounds %struct.kernfs_open_file, ptr %61, i32 0, i32 1
  store ptr %1, ptr %66, align 4
  %67 = getelementptr inbounds %struct.kernfs_ops, ptr %15, i32 0, i32 7
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.kernfs_open_file, ptr %61, i32 0, i32 9
  store i32 %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.kernfs_ops, ptr %15, i32 0, i32 8
  %71 = load i8, ptr %70, align 4, !range !21
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %63
  %74 = load ptr, ptr %16, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %144

76:                                               ; preds = %73
  %77 = icmp eq i32 %68, 0
  %78 = add i32 %68, 1
  %79 = select i1 %77, i32 4097, i32 %78
  %80 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %79, i32 noundef 3264) #9
  %81 = getelementptr inbounds %struct.kernfs_open_file, ptr %61, i32 0, i32 8
  store ptr %80, ptr %81, align 4
  %82 = icmp eq ptr %80, null
  br i1 %82, label %144, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.kernfs_open_file, ptr %61, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %84, ptr noundef nonnull @.str.6, ptr noundef nonnull @kernfs_fop_open.__key.5) #8
  br label %85

85:                                               ; preds = %83, %63
  %86 = load ptr, ptr %16, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @kernfs_seq_ops) #8
  br label %92

90:                                               ; preds = %85
  %91 = tail call i32 @seq_open(ptr noundef %1, ptr noundef null) #8
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %144

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.kernfs_open_file, ptr %61, i32 0, i32 2
  store ptr %97, ptr %98, align 8
  %99 = getelementptr inbounds %struct.seq_file, ptr %97, i32 0, i32 11
  store ptr %61, ptr %99, align 8
  %100 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %101 = load i32, ptr %100, align 8
  %102 = and i32 %101, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %95
  %105 = or i32 %101, 16
  store i32 %105, ptr %100, align 8
  br label %106

106:                                              ; preds = %104, %95
  tail call void @mutex_lock(ptr noundef nonnull @kernfs_open_file_mutex) #8
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @kernfs_open_node_lock) #8
  %107 = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 7, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %124

110:                                              ; preds = %106
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %111 = load i16, ptr @kernfs_open_node_lock, align 4
  %112 = add i16 %111, 1
  store i16 %112, ptr @kernfs_open_node_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  tail call void @mutex_unlock(ptr noundef nonnull @kernfs_open_file_mutex) #8
  %113 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %114 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %113, i32 noundef 3264, i32 noundef 28) #10
  %115 = icmp eq ptr %114, null
  br i1 %115, label %141, label %117

116:                                              ; preds = %117
  store ptr %114, ptr %107, align 4
  br label %124

117:                                              ; preds = %110
  store volatile i32 0, ptr %114, align 8
  %118 = getelementptr inbounds %struct.kernfs_open_node, ptr %114, i32 0, i32 1
  store volatile i32 1, ptr %118, align 4
  %119 = getelementptr inbounds %struct.kernfs_open_node, ptr %114, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %119, ptr noundef nonnull @.str.7, ptr noundef nonnull @kernfs_get_open_node.__key) #8
  %120 = getelementptr inbounds %struct.kernfs_open_node, ptr %114, i32 0, i32 3
  store volatile ptr %120, ptr %120, align 4
  %121 = getelementptr inbounds %struct.kernfs_open_node, ptr %114, i32 0, i32 3, i32 1
  store ptr %120, ptr %121, align 8
  tail call void @mutex_lock(ptr noundef nonnull @kernfs_open_file_mutex) #8
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @kernfs_open_node_lock) #8
  %122 = load ptr, ptr %107, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %116, label %124

124:                                              ; preds = %117, %116, %106
  %125 = phi ptr [ null, %116 ], [ null, %106 ], [ %114, %117 ]
  %126 = phi ptr [ %114, %116 ], [ %108, %106 ], [ %122, %117 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %126) #8, !srcloc !8
  %127 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %126, ptr nonnull %126, i32 1, ptr nonnull elementtype(i32) %126) #8, !srcloc !9
  %128 = getelementptr inbounds %struct.kernfs_open_file, ptr %61, i32 0, i32 7
  %129 = getelementptr inbounds %struct.kernfs_open_node, ptr %126, i32 0, i32 3
  %130 = getelementptr inbounds %struct.kernfs_open_node, ptr %126, i32 0, i32 3, i32 1
  %131 = load ptr, ptr %130, align 4
  store ptr %128, ptr %130, align 4
  store ptr %129, ptr %128, align 4
  %132 = getelementptr inbounds %struct.kernfs_open_file, ptr %61, i32 0, i32 7, i32 1
  store ptr %131, ptr %132, align 8
  store volatile ptr %128, ptr %131, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %133 = load i16, ptr @kernfs_open_node_lock, align 4
  %134 = add i16 %133, 1
  store i16 %134, ptr @kernfs_open_node_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  tail call void @mutex_unlock(ptr noundef nonnull @kernfs_open_file_mutex) #8
  tail call void @kfree(ptr noundef %125) #8
  %135 = load ptr, ptr %15, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %148, label %137

137:                                              ; preds = %124
  %138 = tail call i32 %135(ptr noundef nonnull %61) #8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %137
  tail call fastcc void @kernfs_put_open_node(ptr noundef %4, ptr noundef nonnull %61)
  br label %141

141:                                              ; preds = %140, %110
  %142 = phi i32 [ %138, %140 ], [ -12, %110 ]
  %143 = tail call i32 @seq_release(ptr noundef %0, ptr noundef %1) #8
  br label %144

144:                                              ; preds = %141, %92, %76, %73
  %145 = phi i32 [ -22, %73 ], [ %93, %92 ], [ %142, %141 ], [ -12, %76 ]
  %146 = getelementptr inbounds %struct.kernfs_open_file, ptr %61, i32 0, i32 8
  %147 = load ptr, ptr %146, align 4
  tail call void @kfree(ptr noundef %147) #8
  tail call void @kfree(ptr noundef nonnull %61) #8
  br label %148

148:                                              ; preds = %144, %137, %124, %59, %54, %46
  %149 = phi i32 [ 0, %137 ], [ 0, %124 ], [ %145, %144 ], [ -12, %59 ], [ -13, %54 ], [ -13, %46 ]
  tail call void @kernfs_put_active(ptr noundef %4) #8
  br label %150

150:                                              ; preds = %148, %2
  %151 = phi i32 [ -19, %2 ], [ %149, %148 ]
  ret i32 %151
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_fop_release(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.seq_file, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 10
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 8192
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @kernfs_open_file_mutex) #8
  %14 = getelementptr inbounds %struct.kernfs_open_file, ptr %8, i32 0, i32 10
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 7
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.kernfs_ops, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %8) #8
  %23 = load i8, ptr %14, align 4
  %24 = or i8 %23, 2
  store i8 %24, ptr %14, align 4
  br label %25

25:                                               ; preds = %18, %13
  tail call void @mutex_unlock(ptr noundef nonnull @kernfs_open_file_mutex) #8
  br label %26

26:                                               ; preds = %25, %2
  tail call fastcc void @kernfs_put_open_node(ptr noundef %4, ptr noundef %8)
  %27 = tail call i32 @seq_release(ptr noundef %0, ptr noundef %1) #8
  %28 = getelementptr inbounds %struct.kernfs_open_file, ptr %8, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  tail call void @kfree(ptr noundef %29) #8
  tail call void @kfree(ptr noundef %8) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @noop_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__kernfs_create_file(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, [1 x i32] %3, [1 x i32] %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nocapture noundef readnone %9) local_unnamed_addr #0 {
  %11 = and i16 %2, 4095
  %12 = or i16 %11, -32768
  %13 = tail call ptr @kernfs_new_node(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %12, [1 x i32] %3, [1 x i32] %4, i32 noundef 2) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %48, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.kernfs_node, ptr %13, i32 0, i32 7
  store ptr %6, ptr %16, align 8
  %17 = getelementptr inbounds %struct.kernfs_node, ptr %13, i32 0, i32 7, i32 0, i32 2
  store i64 %5, ptr %17, align 8
  %18 = getelementptr inbounds %struct.kernfs_node, ptr %13, i32 0, i32 5
  store ptr %8, ptr %18, align 4
  %19 = getelementptr inbounds %struct.kernfs_node, ptr %13, i32 0, i32 8
  store ptr %7, ptr %19, align 8
  %20 = getelementptr inbounds %struct.kernfs_ops, ptr %6, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.kernfs_node, ptr %13, i32 0, i32 10
  %25 = load i16, ptr %24, align 8
  %26 = or i16 %25, 64
  store i16 %26, ptr %24, align 8
  br label %27

27:                                               ; preds = %23, %15
  %28 = getelementptr inbounds %struct.kernfs_ops, ptr %6, i32 0, i32 11
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.kernfs_node, ptr %13, i32 0, i32 10
  %33 = load i16, ptr %32, align 8
  %34 = or i16 %33, 128
  store i16 %34, ptr %32, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds %struct.kernfs_ops, ptr %6, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.kernfs_node, ptr %13, i32 0, i32 10
  %41 = load i16, ptr %40, align 8
  %42 = or i16 %41, 8192
  store i16 %42, ptr %40, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = tail call i32 @kernfs_add_one(ptr noundef nonnull %13) #8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  tail call void @kernfs_put(ptr noundef nonnull %13) #8
  %47 = inttoptr i32 %44 to ptr
  br label %48

48:                                               ; preds = %46, %43, %10
  %49 = phi ptr [ %47, %46 ], [ %13, %43 ], [ inttoptr (i32 -12 to ptr), %10 ]
  ret ptr %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_new_node(ptr noundef, ptr noundef, i16 noundef zeroext, [1 x i32], [1 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_add_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kernfs_vma_open(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.seq_file, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %7, align 4
  %13 = tail call ptr @kernfs_get_active(ptr noundef %12) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %8, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void %17(ptr noundef %0) #8
  br label %20

20:                                               ; preds = %19, %15
  %21 = load ptr, ptr %7, align 4
  tail call void @kernfs_put_active(ptr noundef %21) #8
  br label %22

22:                                               ; preds = %20, %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_vma_fault(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.seq_file, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.kernfs_open_file, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %8, align 4
  %14 = tail call ptr @kernfs_get_active(ptr noundef %13) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr inbounds %struct.vm_operations_struct, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call i32 %19(ptr noundef %0) #8
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi i32 [ %22, %21 ], [ 2, %16 ]
  %25 = load ptr, ptr %8, align 4
  tail call void @kernfs_put_active(ptr noundef %25) #8
  br label %26

26:                                               ; preds = %23, %12, %1
  %27 = phi i32 [ %24, %23 ], [ 2, %1 ], [ 2, %12 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_vma_page_mkwrite(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.seq_file, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.kernfs_open_file, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %8, align 4
  %14 = tail call ptr @kernfs_get_active(ptr noundef %13) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr inbounds %struct.vm_operations_struct, ptr %17, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call i32 %19(ptr noundef %0) #8
  br label %25

23:                                               ; preds = %16
  %24 = tail call i32 @file_update_time(ptr noundef %4) #8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ 0, %23 ]
  %27 = load ptr, ptr %8, align 4
  tail call void @kernfs_put_active(ptr noundef %27) #8
  br label %28

28:                                               ; preds = %25, %12, %1
  %29 = phi i32 [ %26, %25 ], [ 2, %1 ], [ 2, %12 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_vma_access(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.seq_file, ptr %9, i32 0, i32 11
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.kernfs_open_file, ptr %11, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %5
  %16 = load ptr, ptr %11, align 4
  %17 = tail call ptr @kernfs_get_active(ptr noundef %16) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr inbounds %struct.vm_operations_struct, ptr %20, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = tail call i32 %22(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #8
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i32 [ %25, %24 ], [ -22, %19 ]
  %28 = load ptr, ptr %11, align 4
  tail call void @kernfs_put_active(ptr noundef %28) #8
  br label %29

29:                                               ; preds = %26, %15, %5
  %30 = phi i32 [ %27, %26 ], [ -22, %5 ], [ -22, %15 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @kernfs_seq_start(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.kernfs_open_file, ptr %4, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = load ptr, ptr %4, align 4
  %7 = tail call ptr @kernfs_get_active(ptr noundef %6) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.kernfs_node, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.kernfs_ops, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %9
  %17 = tail call ptr %14(ptr noundef %0, ptr noundef %1) #8
  %18 = icmp eq ptr %17, inttoptr (i32 -19 to ptr)
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.kernfs_node, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.kernfs_ops, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  tail call void %25(ptr noundef %0, ptr noundef nonnull inttoptr (i32 -19 to ptr)) #8
  %28 = load ptr, ptr %20, align 4
  br label %29

29:                                               ; preds = %27, %19
  %30 = phi ptr [ %28, %27 ], [ %21, %19 ]
  tail call void @kernfs_put_active(ptr noundef %30) #8
  br label %36

31:                                               ; preds = %9
  %32 = load i64, ptr %1, align 8
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = getelementptr i8, ptr null, i32 %34
  br label %36

36:                                               ; preds = %31, %29, %16, %2
  %37 = phi ptr [ %35, %31 ], [ inttoptr (i32 -19 to ptr), %29 ], [ %17, %16 ], [ inttoptr (i32 -19 to ptr), %2 ]
  ret ptr %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kernfs_seq_stop(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %1, inttoptr (i32 -19 to ptr)
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.kernfs_ops, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  tail call void %11(ptr noundef %0, ptr noundef %1) #8
  %14 = load ptr, ptr %4, align 4
  br label %15

15:                                               ; preds = %13, %6
  %16 = phi ptr [ %14, %13 ], [ %7, %6 ]
  tail call void @kernfs_put_active(ptr noundef %16) #8
  br label %17

17:                                               ; preds = %15, %2
  %18 = getelementptr inbounds %struct.kernfs_open_file, ptr %4, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %18) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @kernfs_seq_next(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.kernfs_node, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.kernfs_ops, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %3
  %13 = tail call ptr %10(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  %14 = icmp eq ptr %13, inttoptr (i32 -19 to ptr)
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load ptr, ptr %4, align 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.kernfs_node, ptr %17, i32 0, i32 7
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.kernfs_ops, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  tail call void %21(ptr noundef %0, ptr noundef nonnull inttoptr (i32 -19 to ptr)) #8
  %24 = load ptr, ptr %16, align 4
  br label %25

25:                                               ; preds = %23, %15
  %26 = phi ptr [ %24, %23 ], [ %17, %15 ]
  tail call void @kernfs_put_active(ptr noundef %26) #8
  br label %30

27:                                               ; preds = %3
  %28 = load i64, ptr %2, align 8
  %29 = add i64 %28, 1
  store i64 %29, ptr %2, align 8
  br label %30

30:                                               ; preds = %27, %25, %12
  %31 = phi ptr [ null, %27 ], [ inttoptr (i32 -19 to ptr), %25 ], [ %13, %12 ]
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 7, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.kernfs_open_node, ptr %7, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.kernfs_open_file, ptr %4, i32 0, i32 6
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 7
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.kernfs_ops, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %0, ptr noundef %1) #8
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(2) }

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
!8 = !{i64 851688, i64 2148341659, i64 2148341685, i64 2148341732, i64 2148341754, i64 2148341782, i64 2148341802}
!9 = !{i64 2148353074, i64 2148353100, i64 2148353129, i64 2148353163, i64 2148353194, i64 2148353217}
!10 = !{i64 2149020292}
!11 = !{i64 2149016116}
!12 = !{i64 2149016191, i64 2149016218, i64 2149016265, i64 2149016287, i64 2149016315, i64 2149016335}
!13 = !{i64 757611}
!14 = !{i64 2149044436}
!15 = !{i64 2148453753}
!16 = !{i64 2148356115, i64 2148356147, i64 2148356176, i64 2148356210, i64 2148356241, i64 2148356264}
!17 = !{i64 2148453956}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{!"auto-init"}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i8 0, i8 2}
