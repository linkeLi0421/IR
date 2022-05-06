; ModuleID = '/llk/IR/sound/core/info.c_pt.bc'
source_filename = "../sound/core/info.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_seq_root:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_seq_root\22\09\09\09\09\09"
module asm "__kstrtabns_snd_seq_root:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_info_get_line:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_info_get_line\22\09\09\09\09\09"
module asm "__kstrtabns_snd_info_get_line:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_info_get_str:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_info_get_str\22\09\09\09\09\09"
module asm "__kstrtabns_snd_info_get_str:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_info_create_module_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_info_create_module_entry\22\09\09\09\09\09"
module asm "__kstrtabns_snd_info_create_module_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_info_create_card_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_info_create_card_entry\22\09\09\09\09\09"
module asm "__kstrtabns_snd_info_create_card_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_info_free_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_info_free_entry\22\09\09\09\09\09"
module asm "__kstrtabns_snd_info_free_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_info_register:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_info_register\22\09\09\09\09\09"
module asm "__kstrtabns_snd_info_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_card_rw_proc_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_card_rw_proc_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_card_rw_proc_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
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
%struct.lock_class_key = type {}
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_info_buffer = type { ptr, i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.56, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.57, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.58, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.56 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.58 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }
%struct.snd_info_private_data = type { ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.snd_info_entry_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"meminfo\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"memdebug\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"detect\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"oss\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"cards\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"timers\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"synth\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"card\00", align 1
@snd_seq_root = dso_local global ptr null, align 4
@__kstrtab_snd_seq_root = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_seq_root = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_seq_root = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_seq_root to i32), ptr @__kstrtab_snd_seq_root, ptr @__kstrtabns_snd_seq_root }, section "___ksymtab+snd_seq_root", align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"asound\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@snd_proc_root = internal unnamed_addr global ptr null, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"card%i\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@info_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @info_mutex, i64 12), ptr getelementptr (i8, ptr @info_mutex, i64 12) } }, align 4
@__kstrtab_snd_info_get_line = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_info_get_line = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_info_get_line = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_info_get_line to i32), ptr @__kstrtab_snd_info_get_line, ptr @__kstrtabns_snd_info_get_line }, section "___ksymtab+snd_info_get_line", align 4
@__kstrtab_snd_info_get_str = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_info_get_str = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_info_get_str = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_info_get_str to i32), ptr @__kstrtab_snd_info_get_str, ptr @__kstrtabns_snd_info_get_str }, section "___ksymtab+snd_info_get_str", align 4
@__kstrtab_snd_info_create_module_entry = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_info_create_module_entry = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_info_create_module_entry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_info_create_module_entry to i32), ptr @__kstrtab_snd_info_create_module_entry, ptr @__kstrtabns_snd_info_create_module_entry }, section "___ksymtab+snd_info_create_module_entry", align 4
@__kstrtab_snd_info_create_card_entry = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_info_create_card_entry = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_info_create_card_entry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_info_create_card_entry to i32), ptr @__kstrtab_snd_info_create_card_entry, ptr @__kstrtabns_snd_info_create_card_entry }, section "___ksymtab+snd_info_create_card_entry", align 4
@__kstrtab_snd_info_free_entry = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_info_free_entry = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_info_free_entry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_info_free_entry to i32), ptr @__kstrtab_snd_info_free_entry, ptr @__kstrtabns_snd_info_free_entry }, section "___ksymtab+snd_info_free_entry", align 4
@__kstrtab_snd_info_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_info_register = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_info_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_info_register to i32), ptr @__kstrtab_snd_info_register, ptr @__kstrtabns_snd_info_register }, section "___ksymtab+snd_info_register", align 4
@__kstrtab_snd_card_rw_proc_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_card_rw_proc_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_card_rw_proc_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_card_rw_proc_new to i32), ptr @__kstrtab_snd_card_rw_proc_new, ptr @__kstrtabns_snd_card_rw_proc_new }, section "___ksymtab_gpl+snd_card_rw_proc_new", align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@snd_info_create_entry.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"&entry->access\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@snd_info_entry_operations = internal constant %struct.proc_ops { i32 0, ptr @snd_info_entry_open, ptr @snd_info_entry_read, ptr null, ptr @snd_info_entry_write, ptr @snd_info_entry_llseek, ptr @snd_info_entry_release, ptr @snd_info_entry_poll, ptr @snd_info_entry_ioctl, ptr @snd_info_entry_mmap, ptr null }, align 4
@snd_info_text_entry_ops = internal constant %struct.proc_ops { i32 0, ptr @snd_info_text_entry_open, ptr @seq_read, ptr null, ptr @snd_info_text_entry_write, ptr @seq_lseek, ptr @snd_info_text_entry_release, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.19 = private unnamed_addr constant [55 x i8] c"Advanced Linux Sound Architecture Driver Version k%s.\0A\00", align 1
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_snd_card_rw_proc_new, ptr @__ksymtab_snd_info_create_card_entry, ptr @__ksymtab_snd_info_create_module_entry, ptr @__ksymtab_snd_info_free_entry, ptr @__ksymtab_snd_info_get_line, ptr @__ksymtab_snd_info_get_str, ptr @__ksymtab_snd_info_register, ptr @__ksymtab_snd_seq_root], section "llvm.metadata"

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @snd_info_check_reserved_words(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str, ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %38, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.1, ptr noundef %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.2, ptr noundef %0)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.3, ptr noundef %0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.4, ptr noundef %0)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.5, ptr noundef %0)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.6, ptr noundef %0)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.7, ptr noundef %0)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.8, ptr noundef %0)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.9, ptr noundef %0)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.10, ptr noundef %0)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(5) @.str.11, i32 noundef 4)
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %39 = phi i32 [ %37, %34 ], [ 0, %31 ], [ 0, %28 ], [ 0, %25 ], [ 0, %22 ], [ 0, %19 ], [ 0, %16 ], [ 0, %13 ], [ 0, %10 ], [ 0, %7 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @snd_info_init() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call fastcc ptr @snd_info_create_entry(ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef nonnull @__this_module)
  store ptr %1, ptr @snd_proc_root, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.snd_info_entry, ptr %1, i32 0, i32 1
  store i16 16749, ptr %4, align 4
  %5 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.12, ptr noundef null) #13
  %6 = load ptr, ptr @snd_proc_root, align 4
  %7 = getelementptr inbounds %struct.snd_info_entry, ptr %6, i32 0, i32 9
  store ptr %5, ptr %7, align 4
  %8 = icmp eq ptr %5, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = tail call fastcc i32 @snd_info_version_init()
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @snd_minor_info_init() #13
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @snd_card_info_init() #13
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %12, %9, %3
  %19 = load ptr, ptr @snd_proc_root, align 4
  tail call void @snd_info_free_entry(ptr noundef %19)
  br label %20

20:                                               ; preds = %18, %15, %0
  %21 = phi i32 [ -12, %18 ], [ -12, %0 ], [ 0, %15 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @snd_info_create_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 80) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = tail call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 3264) #13
  store ptr %8, ptr %5, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #13
  br label %27

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.snd_info_entry, ptr %5, i32 0, i32 1
  store i16 -32476, ptr %12, align 4
  %13 = getelementptr inbounds %struct.snd_info_entry, ptr %5, i32 0, i32 3
  store i16 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.snd_info_entry, ptr %5, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %14, ptr noundef nonnull @.str.16, ptr noundef nonnull @snd_info_create_entry.__key) #13
  %15 = getelementptr inbounds %struct.snd_info_entry, ptr %5, i32 0, i32 11
  store volatile ptr %15, ptr %15, align 8
  %16 = getelementptr inbounds %struct.snd_info_entry, ptr %5, i32 0, i32 11, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.snd_info_entry, ptr %5, i32 0, i32 12
  store volatile ptr %17, ptr %17, align 8
  %18 = getelementptr inbounds %struct.snd_info_entry, ptr %5, i32 0, i32 12, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.snd_info_entry, ptr %5, i32 0, i32 5
  store ptr %1, ptr %19, align 8
  %20 = getelementptr inbounds %struct.snd_info_entry, ptr %5, i32 0, i32 6
  store ptr %2, ptr %20, align 4
  %21 = icmp eq ptr %1, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.snd_info_entry, ptr %1, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %23) #13
  %24 = getelementptr inbounds %struct.snd_info_entry, ptr %1, i32 0, i32 11
  %25 = getelementptr inbounds %struct.snd_info_entry, ptr %1, i32 0, i32 11, i32 1
  %26 = load ptr, ptr %25, align 4
  store ptr %17, ptr %25, align 4
  store ptr %24, ptr %17, align 8
  store ptr %26, ptr %18, align 4
  store volatile ptr %17, ptr %26, align 4
  tail call void @mutex_unlock(ptr noundef %23) #13
  br label %27

27:                                               ; preds = %22, %11, %10, %3
  %28 = phi ptr [ null, %10 ], [ null, %3 ], [ %5, %22 ], [ %5, %11 ]
  ret ptr %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @snd_info_version_init() unnamed_addr #3 section ".init.text" {
  %1 = load ptr, ptr @snd_proc_root, align 4
  %2 = tail call fastcc ptr @snd_info_create_entry(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @__this_module) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.snd_info_entry, ptr %2, i32 0, i32 4
  store ptr @snd_info_version_read, ptr %5, align 4
  %6 = tail call i32 @snd_info_register(ptr noundef nonnull %2)
  br label %7

7:                                                ; preds = %4, %0
  %8 = phi i32 [ %6, %4 ], [ -12, %0 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_minor_info_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_info_init() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_info_free_entry(ptr noundef %0) #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull @info_mutex) #13
  tail call fastcc void @snd_info_disconnect(ptr noundef nonnull %0)
  tail call void @mutex_unlock(ptr noundef nonnull @info_mutex) #13
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %17, label %12

12:                                               ; preds = %12, %8
  %13 = phi ptr [ %15, %12 ], [ %10, %8 ]
  %14 = getelementptr i8, ptr %13, i32 -72
  %15 = load ptr, ptr %13, align 4
  tail call void @snd_info_free_entry(ptr noundef %14)
  %16 = icmp eq ptr %15, %9
  br i1 %16, label %17, label %12

17:                                               ; preds = %12, %8
  %18 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.snd_info_entry, ptr %19, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %22) #13
  %23 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 12
  %24 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 12, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  tail call void @mutex_unlock(ptr noundef %22) #13
  br label %28

28:                                               ; preds = %21, %17
  %29 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %29) #13
  %30 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void %31(ptr noundef nonnull %0) #13
  br label %34

34:                                               ; preds = %33, %28
  tail call void @kfree(ptr noundef nonnull %0) #13
  br label %35

35:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @snd_info_done() local_unnamed_addr #3 section ".exit.text" {
  %1 = load ptr, ptr @snd_proc_root, align 4
  tail call void @snd_info_free_entry(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_info_card_create(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.13, i32 noundef %5)
  %7 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr @snd_proc_root, align 4
  %10 = call fastcc ptr @snd_info_create_entry(ptr noundef nonnull %2, ptr noundef %9, ptr noundef %8) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.snd_info_entry, ptr %10, i32 0, i32 1
  store i16 16749, ptr %13, align 4
  %14 = call i32 @snd_info_register(ptr noundef nonnull %10) #13
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  call void @snd_info_free_entry(ptr noundef nonnull %10) #13
  br label %25

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 20
  store ptr %10, ptr %18, align 8
  %19 = load ptr, ptr %7, align 4
  %20 = call fastcc ptr @snd_info_create_entry(ptr noundef nonnull @.str.14, ptr noundef nonnull %10, ptr noundef %19) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.snd_info_entry, ptr %20, i32 0, i32 7
  store ptr %0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.snd_info_entry, ptr %20, i32 0, i32 4
  store ptr @snd_card_id_read, ptr %24, align 4
  br label %25

25:                                               ; preds = %22, %17, %16, %4, %1
  %26 = phi i32 [ -6, %1 ], [ -12, %17 ], [ 0, %22 ], [ -12, %16 ], [ -12, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret i32 %26
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_card_id_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.15, ptr noundef %6) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_info_card_register(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @snd_info_register(ptr noundef %5)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @strcmp(ptr noundef %9, ptr noundef %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 21
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load ptr, ptr @snd_proc_root, align 4
  %20 = getelementptr inbounds %struct.snd_info_entry, ptr %19, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @proc_symlink(ptr noundef %9, ptr noundef %21, ptr noundef %11) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store ptr %22, ptr %15, align 4
  br label %25

25:                                               ; preds = %24, %18, %14, %8, %3, %1
  %26 = phi i32 [ 0, %24 ], [ -6, %1 ], [ %6, %3 ], [ 0, %8 ], [ 0, %14 ], [ -12, %18 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_info_register(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %44

5:                                                ; preds = %1
  %6 = icmp eq ptr %0, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = load ptr, ptr @snd_proc_root, align 4
  %12 = select i1 %10, ptr %11, ptr %9
  %13 = getelementptr inbounds %struct.snd_info_entry, ptr %12, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  tail call void @mutex_lock(ptr noundef nonnull @info_mutex) #13
  %15 = load ptr, ptr %2, align 4
  %16 = icmp eq ptr %15, null
  %17 = icmp ne ptr %14, null
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %43

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 1
  %21 = load i16, ptr %20, align 4
  %22 = and i16 %21, -4096
  %23 = icmp eq i16 %22, 16384
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load ptr, ptr %0, align 4
  %26 = tail call ptr @proc_mkdir_mode(ptr noundef %25, i16 noundef zeroext %21, ptr noundef nonnull %14) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %40

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 3
  %30 = load i16, ptr %29, align 4
  %31 = icmp eq i16 %30, 1
  %32 = select i1 %31, ptr @snd_info_entry_operations, ptr @snd_info_text_entry_ops
  %33 = load ptr, ptr %0, align 4
  %34 = tail call ptr @proc_create_data(ptr noundef %33, i16 noundef zeroext %21, ptr noundef nonnull %14, ptr noundef nonnull %32, ptr noundef nonnull %0) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = sext i32 %38 to i64
  tail call void @proc_set_size(ptr noundef nonnull %34, i64 noundef %39) #13
  br label %40

40:                                               ; preds = %36, %24
  %41 = phi ptr [ %26, %24 ], [ %34, %36 ]
  store ptr %41, ptr %2, align 4
  br label %43

42:                                               ; preds = %28, %24
  tail call void @mutex_unlock(ptr noundef nonnull @info_mutex) #13
  br label %54

43:                                               ; preds = %40, %7
  tail call void @mutex_unlock(ptr noundef nonnull @info_mutex) #13
  br label %44

44:                                               ; preds = %43, %1
  %45 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 11
  br label %46

46:                                               ; preds = %50, %44
  %47 = phi ptr [ %45, %44 ], [ %48, %50 ]
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %45
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %48, i32 -72
  %52 = tail call i32 @snd_info_register(ptr noundef %51)
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %46

54:                                               ; preds = %50, %46, %42, %5
  %55 = phi i32 [ -12, %42 ], [ -6, %5 ], [ 0, %46 ], [ %52, %50 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_info_card_id_change(ptr noundef %0) local_unnamed_addr #4 {
  tail call void @mutex_lock(ptr noundef nonnull @info_mutex) #13
  %2 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @proc_remove(ptr noundef nonnull %3) #13
  store ptr null, ptr %2, align 4
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @strcmp(ptr noundef %7, ptr noundef %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr @snd_proc_root, align 4
  %15 = getelementptr inbounds %struct.snd_info_entry, ptr %14, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @proc_symlink(ptr noundef %7, ptr noundef %16, ptr noundef %10) #13
  store ptr %17, ptr %2, align 4
  br label %18

18:                                               ; preds = %13, %6
  tail call void @mutex_unlock(ptr noundef nonnull @info_mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_remove(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_info_card_disconnect(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @info_mutex) #13
  %4 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 21
  %5 = load ptr, ptr %4, align 4
  tail call void @proc_remove(ptr noundef %5) #13
  store ptr null, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 20
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call fastcc void @snd_info_disconnect(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %9, %3
  tail call void @mutex_unlock(ptr noundef nonnull @info_mutex) #13
  br label %11

11:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snd_info_disconnect(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %16, label %9

9:                                                ; preds = %9, %5
  %10 = phi ptr [ %12, %9 ], [ %7, %5 ]
  %11 = getelementptr i8, ptr %10, i32 -72
  tail call fastcc void @snd_info_disconnect(ptr noundef %11)
  %12 = load ptr, ptr %10, align 4
  %13 = icmp eq ptr %12, %6
  br i1 %13, label %14, label %9

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 4
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi ptr [ %15, %14 ], [ %3, %5 ]
  tail call void @proc_remove(ptr noundef %17) #13
  store ptr null, ptr %2, align 4
  br label %18

18:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_info_card_free(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 8
  tail call void @snd_info_free_entry(ptr noundef %5)
  store ptr null, ptr %4, align 8
  br label %6

6:                                                ; preds = %3, %1
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_info_get_line(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %50, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  %8 = icmp slt i32 %2, 1
  %9 = or i1 %8, %7
  br i1 %9, label %50, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.snd_info_buffer, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.snd_info_buffer, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.snd_info_buffer, ptr %0, i32 0, i32 1
  %20 = getelementptr inbounds %struct.snd_info_buffer, ptr %0, i32 0, i32 2
  br label %21

21:                                               ; preds = %42, %18
  %22 = phi ptr [ %6, %18 ], [ %44, %42 ]
  %23 = phi ptr [ %1, %18 ], [ %46, %42 ]
  %24 = phi i32 [ %2, %18 ], [ %45, %42 ]
  %25 = load i32, ptr %19, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %19, align 4
  %27 = getelementptr i8, ptr %22, i32 %25
  %28 = load i8, ptr %27, align 1
  %29 = load i32, ptr %20, align 4
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  store i32 1, ptr %11, align 4
  br label %32

32:                                               ; preds = %31, %21
  %33 = phi i32 [ 1, %31 ], [ 0, %21 ]
  %34 = icmp eq i8 %28, 10
  br i1 %34, label %48, label %35

35:                                               ; preds = %32
  %36 = icmp sgt i32 %24, 1
  br i1 %36, label %37, label %42

37:                                               ; preds = %35
  %38 = add nsw i32 %24, -1
  %39 = getelementptr i8, ptr %23, i32 1
  store i8 %28, ptr %23, align 1
  %40 = load ptr, ptr %0, align 4
  %41 = load i32, ptr %11, align 4
  br label %42

42:                                               ; preds = %37, %35
  %43 = phi i32 [ %41, %37 ], [ %33, %35 ]
  %44 = phi ptr [ %40, %37 ], [ %22, %35 ]
  %45 = phi i32 [ %38, %37 ], [ 1, %35 ]
  %46 = phi ptr [ %39, %37 ], [ %23, %35 ]
  %47 = icmp eq i32 %43, 0
  br i1 %47, label %21, label %48

48:                                               ; preds = %42, %32
  %49 = phi ptr [ %46, %42 ], [ %23, %32 ]
  store i8 0, ptr %49, align 1
  br label %50

50:                                               ; preds = %48, %14, %10, %5, %3
  %51 = phi i32 [ 0, %48 ], [ 1, %3 ], [ 1, %5 ], [ 1, %14 ], [ 1, %10 ]
  ret i32 %51
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @snd_info_get_str(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, i32 noundef %2) #8 {
  br label %4

4:                                                ; preds = %10, %3
  %5 = phi ptr [ %1, %3 ], [ %11, %10 ]
  %6 = load i8, ptr %5, align 1
  switch i8 %6, label %7 [
    i8 32, label %10
    i8 9, label %10
    i8 34, label %12
    i8 39, label %12
  ]

7:                                                ; preds = %4
  %8 = add i32 %2, -1
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %43, label %55

10:                                               ; preds = %4, %4
  %11 = getelementptr i8, ptr %5, i32 1
  br label %4

12:                                               ; preds = %4, %4
  %13 = getelementptr i8, ptr %5, i32 1
  %14 = add i32 %2, -1
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load i8, ptr %13, align 1
  %18 = icmp eq i8 %17, 0
  %19 = icmp eq i8 %17, %6
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %35, label %26

21:                                               ; preds = %26
  %22 = load i8, ptr %32, align 1
  %23 = icmp eq i8 %22, 0
  %24 = icmp eq i8 %22, %6
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %35, label %26

26:                                               ; preds = %21, %16
  %27 = phi i8 [ %22, %21 ], [ %17, %16 ]
  %28 = phi ptr [ %31, %21 ], [ %0, %16 ]
  %29 = phi ptr [ %32, %21 ], [ %13, %16 ]
  %30 = phi i32 [ %33, %21 ], [ %14, %16 ]
  %31 = getelementptr i8, ptr %28, i32 1
  store i8 %27, ptr %28, align 1
  %32 = getelementptr i8, ptr %29, i32 1
  %33 = add i32 %30, -1
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %21, label %35

35:                                               ; preds = %26, %21, %16, %12
  %36 = phi ptr [ %0, %12 ], [ %0, %16 ], [ %31, %21 ], [ %31, %26 ]
  %37 = phi ptr [ %5, %12 ], [ %5, %16 ], [ %29, %21 ], [ %29, %26 ]
  %38 = phi ptr [ %13, %12 ], [ %13, %16 ], [ %32, %21 ], [ %32, %26 ]
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, %6
  %41 = getelementptr i8, ptr %37, i32 2
  %42 = select i1 %40, ptr %41, ptr %38
  br label %55

43:                                               ; preds = %53, %7
  %44 = phi i8 [ %54, %53 ], [ %6, %7 ]
  %45 = phi i32 [ %51, %53 ], [ %8, %7 ]
  %46 = phi ptr [ %49, %53 ], [ %5, %7 ]
  %47 = phi ptr [ %50, %53 ], [ %0, %7 ]
  switch i8 %44, label %48 [
    i8 0, label %55
    i8 32, label %55
    i8 9, label %55
  ]

48:                                               ; preds = %43
  %49 = getelementptr i8, ptr %46, i32 1
  %50 = getelementptr i8, ptr %47, i32 1
  store i8 %44, ptr %47, align 1
  %51 = add i32 %45, -1
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i8, ptr %49, align 1
  br label %43

55:                                               ; preds = %48, %43, %43, %43, %35, %7
  %56 = phi ptr [ %36, %35 ], [ %0, %7 ], [ %50, %48 ], [ %47, %43 ], [ %47, %43 ], [ %47, %43 ]
  %57 = phi ptr [ %42, %35 ], [ %5, %7 ], [ %49, %48 ], [ %46, %43 ], [ %46, %43 ], [ %46, %43 ]
  store i8 0, ptr %56, align 1
  br label %58

58:                                               ; preds = %61, %55
  %59 = phi ptr [ %57, %55 ], [ %62, %61 ]
  %60 = load i8, ptr %59, align 1
  switch i8 %60, label %63 [
    i8 32, label %61
    i8 9, label %61
  ]

61:                                               ; preds = %58, %58
  %62 = getelementptr i8, ptr %59, i32 1
  br label %58

63:                                               ; preds = %58
  ret ptr %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @snd_info_create_module_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = icmp eq ptr %2, null
  %5 = load ptr, ptr @snd_proc_root, align 4
  %6 = select i1 %4, ptr %5, ptr %2
  %7 = tail call fastcc ptr @snd_info_create_entry(ptr noundef %1, ptr noundef %6, ptr noundef %0)
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @snd_info_create_card_entry(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 20
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi ptr [ %2, %3 ], [ %7, %5 ]
  %10 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call fastcc ptr @snd_info_create_entry(ptr noundef %1, ptr noundef %9, ptr noundef %11)
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_card_rw_proc_new(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #4 {
  %6 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 20
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = tail call fastcc ptr @snd_info_create_entry(ptr noundef %1, ptr noundef %7, ptr noundef %9) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.snd_info_entry, ptr %10, i32 0, i32 7
  store ptr %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.snd_info_entry, ptr %10, i32 0, i32 4
  store ptr %3, ptr %14, align 4
  %15 = icmp eq ptr %4, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.snd_info_entry, ptr %10, i32 0, i32 1
  %18 = load i16, ptr %17, align 4
  %19 = or i16 %18, 128
  store i16 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.snd_info_entry, ptr %10, i32 0, i32 4, i32 0, i32 1
  store ptr %4, ptr %20, align 4
  br label %21

21:                                               ; preds = %16, %12, %5
  %22 = phi i32 [ -12, %5 ], [ 0, %16 ], [ 0, %12 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir_mode(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_set_size(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_info_entry_open(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #4 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  tail call void @mutex_lock(ptr noundef nonnull @info_mutex) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %55, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_info_entry, ptr %4, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %55, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.snd_info_entry, ptr %4, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = tail call zeroext i1 @try_module_get(ptr noundef %12) #13
  br i1 %13, label %14, label %55

14:                                               ; preds = %10
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 16) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %52, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.snd_info_private_data, ptr %16, i32 0, i32 2
  store ptr %4, ptr %19, align 8
  %20 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 3
  %23 = and i32 %21, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.snd_info_entry, ptr %4, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.snd_info_entry_ops, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %50, label %31

31:                                               ; preds = %25, %18
  %32 = add nsw i32 %22, -1
  %33 = icmp ult i32 %32, 2
  %34 = getelementptr inbounds %struct.snd_info_entry, ptr %4, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  br i1 %33, label %36, label %40

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.snd_info_entry_ops, ptr %35, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %36, %31
  %41 = load ptr, ptr %35, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = trunc i32 %22 to i16
  %45 = getelementptr inbounds %struct.snd_info_private_data, ptr %16, i32 0, i32 3
  %46 = tail call i32 %41(ptr noundef nonnull %4, i16 noundef zeroext %44, ptr noundef %45) #13
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43, %40
  %49 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %16, ptr %49, align 8
  br label %55

50:                                               ; preds = %43, %36, %25
  %51 = phi i32 [ %46, %43 ], [ -19, %36 ], [ -19, %25 ]
  tail call void @kfree(ptr noundef nonnull %16) #13
  br label %52

52:                                               ; preds = %50, %14
  %53 = phi i32 [ %51, %50 ], [ -12, %14 ]
  %54 = load ptr, ptr %11, align 4
  tail call void @module_put(ptr noundef %54) #13
  br label %55

55:                                               ; preds = %52, %48, %10, %6, %2
  %56 = phi i32 [ 0, %48 ], [ -14, %10 ], [ -19, %2 ], [ -19, %6 ], [ %53, %52 ]
  tail call void @mutex_unlock(ptr noundef nonnull @info_mutex) #13
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_info_entry_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #4 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_info_private_data, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load i64, ptr %3, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %4
  %12 = trunc i64 %9 to i32
  %13 = sext i32 %12 to i64
  %14 = icmp eq i64 %9, %13
  %15 = icmp sgt i32 %2, -1
  %16 = and i1 %15, %14
  %17 = xor i32 %12, -1
  %18 = icmp uge i32 %17, %2
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %39

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.snd_info_entry, ptr %8, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %9, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = sub i32 %22, %12
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %2)
  %28 = getelementptr inbounds %struct.snd_info_entry, ptr %8, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.snd_info_entry_ops, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.snd_info_private_data, ptr %6, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %31(ptr noundef %8, ptr noundef %33, ptr noundef %0, ptr noundef %1, i32 noundef %27, i64 noundef %9) #13
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = zext i32 %34 to i64
  %38 = add nuw i64 %9, %37
  store i64 %38, ptr %3, align 8
  br label %39

39:                                               ; preds = %36, %25, %20, %11, %4
  %40 = phi i32 [ 0, %20 ], [ %34, %36 ], [ %34, %25 ], [ -5, %11 ], [ -5, %4 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_info_entry_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #4 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_info_private_data, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load i64, ptr %3, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %4
  %12 = trunc i64 %9 to i32
  %13 = sext i32 %12 to i64
  %14 = icmp eq i64 %9, %13
  %15 = icmp sgt i32 %2, -1
  %16 = and i1 %15, %14
  %17 = xor i32 %12, -1
  %18 = icmp uge i32 %17, %2
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %38

20:                                               ; preds = %11
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.snd_info_entry, ptr %8, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %24, %12
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 %2)
  %27 = getelementptr inbounds %struct.snd_info_entry, ptr %8, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.snd_info_entry_ops, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.snd_info_private_data, ptr %6, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %30(ptr noundef %8, ptr noundef %32, ptr noundef %0, ptr noundef %1, i32 noundef %26, i64 noundef %9) #13
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = zext i32 %33 to i64
  %37 = add nuw i64 %9, %36
  store i64 %37, ptr %3, align 8
  br label %38

38:                                               ; preds = %35, %22, %20, %11, %4
  %39 = phi i32 [ %33, %35 ], [ %33, %22 ], [ -5, %11 ], [ -5, %4 ], [ 0, %20 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @snd_info_entry_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_info_private_data, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_info_entry, ptr %7, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %8) #13
  %9 = getelementptr inbounds %struct.snd_info_entry, ptr %7, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_info_entry_ops, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.snd_info_private_data, ptr %5, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i64 %12(ptr noundef %7, ptr noundef %16, ptr noundef %0, i64 noundef %1, i32 noundef %2) #13
  br label %39

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.snd_info_entry, ptr %7, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  switch i32 %2, label %39 [
    i32 0, label %30
    i32 1, label %22
    i32 2, label %26
  ]

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %24 = load i64, ptr %23, align 8
  %25 = add i64 %24, %1
  br label %30

26:                                               ; preds = %18
  %27 = icmp eq i32 %20, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %26
  %29 = add i64 %21, %1
  br label %30

30:                                               ; preds = %28, %22, %18
  %31 = phi i64 [ %29, %28 ], [ %25, %22 ], [ %1, %18 ]
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = icmp ne i32 %20, 0
  %35 = icmp sgt i64 %31, %21
  %36 = select i1 %34, i1 %35, i1 false
  %37 = select i1 %36, i64 %21, i64 %31
  %38 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  store i64 %37, ptr %38, align 8
  br label %39

39:                                               ; preds = %33, %30, %26, %18, %14
  %40 = phi i64 [ -22, %14 ], [ -22, %18 ], [ -22, %30 ], [ %37, %33 ], [ -22, %26 ]
  tail call void @mutex_unlock(ptr noundef %8) #13
  ret i64 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_info_entry_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.snd_info_private_data, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_info_entry, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_info_entry_ops, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i16
  %16 = and i16 %15, 3
  %17 = getelementptr inbounds %struct.snd_info_private_data, ptr %4, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %10(ptr noundef %6, i16 noundef zeroext %16, ptr noundef %18) #13
  br label %20

20:                                               ; preds = %12, %2
  %21 = getelementptr inbounds %struct.snd_info_entry, ptr %6, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  tail call void @module_put(ptr noundef %22) #13
  tail call void @kfree(ptr noundef %4) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_info_entry_poll(ptr noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.snd_info_private_data, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_info_entry, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_info_entry_ops, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.snd_info_private_data, ptr %4, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %10(ptr noundef %6, ptr noundef %14, ptr noundef %0, ptr noundef %1) #13
  br label %26

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.snd_info_entry_ops, ptr %8, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, i32 0, i32 65
  %21 = getelementptr inbounds %struct.snd_info_entry_ops, ptr %8, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = or i32 %20, 260
  %25 = select i1 %23, i32 %20, i32 %24
  br label %26

26:                                               ; preds = %16, %12
  %27 = phi i32 [ %15, %12 ], [ %25, %16 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_info_entry_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_info_private_data, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_info_entry, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_info_entry_ops, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.snd_info_private_data, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %11(ptr noundef %7, ptr noundef %15, ptr noundef %0, i32 noundef %1, i32 noundef %2) #13
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i32 [ %16, %13 ], [ -25, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_info_entry_mmap(ptr noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.snd_info_private_data, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_info_entry, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_info_entry_ops, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.snd_info_private_data, ptr %6, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %14(ptr noundef %10, ptr noundef %18, ptr noundef %4, ptr noundef %0, ptr noundef %1) #13
  br label %20

20:                                               ; preds = %16, %8, %2
  %21 = phi i32 [ %19, %16 ], [ 0, %2 ], [ -6, %8 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_info_text_entry_open(ptr nocapture noundef readonly %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  tail call void @mutex_lock(ptr noundef nonnull @info_mutex) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %42, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_info_entry, ptr %4, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %42, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.snd_info_entry, ptr %4, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = tail call zeroext i1 @try_module_get(ptr noundef %12) #13
  br i1 %13, label %14, label %42

14:                                               ; preds = %10
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 16) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.snd_info_private_data, ptr %16, i32 0, i32 2
  store ptr %4, ptr %19, align 8
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 24) #14
  store ptr %21, ptr %16, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.snd_info_entry, ptr %4, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @single_open_size(ptr noundef %1, ptr noundef nonnull @snd_info_seq_show, ptr noundef nonnull %16, i32 noundef %25) #13
  br label %31

29:                                               ; preds = %23
  %30 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @snd_info_seq_show, ptr noundef nonnull %16) #13
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load ptr, ptr %16, align 8
  br label %36

36:                                               ; preds = %34, %18
  %37 = phi ptr [ %35, %34 ], [ null, %18 ]
  %38 = phi i32 [ %32, %34 ], [ -12, %18 ]
  tail call void @kfree(ptr noundef %37) #13
  tail call void @kfree(ptr noundef nonnull %16) #13
  br label %39

39:                                               ; preds = %36, %14
  %40 = phi i32 [ %38, %36 ], [ -12, %14 ]
  %41 = load ptr, ptr %11, align 4
  tail call void @module_put(ptr noundef %41) #13
  br label %42

42:                                               ; preds = %39, %31, %10, %6, %2
  %43 = phi i32 [ 0, %31 ], [ -14, %10 ], [ -19, %2 ], [ -19, %6 ], [ %40, %39 ]
  tail call void @mutex_unlock(ptr noundef nonnull @info_mutex) #13
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_info_text_entry_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #4 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.seq_file, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_info_private_data, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_info_entry, ptr %10, i32 0, i32 4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %76, label %14

14:                                               ; preds = %4
  %15 = load i64, ptr %3, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %76, label %17

17:                                               ; preds = %14
  %18 = trunc i64 %15 to i32
  %19 = sext i32 %18 to i64
  %20 = icmp eq i64 %15, %19
  %21 = icmp sgt i32 %2, -1
  %22 = and i1 %21, %20
  %23 = xor i32 %18, -1
  %24 = icmp uge i32 %23, %2
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %76

26:                                               ; preds = %17
  %27 = add i32 %18, %2
  %28 = icmp ugt i32 %27, 16384
  br i1 %28, label %76, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.snd_info_entry, ptr %10, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %30) #13
  %31 = getelementptr inbounds %struct.snd_info_private_data, ptr %8, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %36 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 24) #14
  store ptr %36, ptr %31, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %71, label %38

38:                                               ; preds = %34, %29
  %39 = phi ptr [ %32, %29 ], [ %36, %34 ]
  %40 = getelementptr inbounds %struct.snd_info_buffer, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %27, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %39, align 4
  br label %52

45:                                               ; preds = %38
  %46 = add nuw nsw i32 %27, 4095
  %47 = and i32 %46, -4096
  %48 = tail call noalias ptr @kvmalloc_node(i32 noundef %47, i32 noundef 3520, i32 noundef -1) #15
  %49 = icmp eq ptr %48, null
  br i1 %49, label %71, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %39, align 4
  tail call void @kvfree(ptr noundef %51) #13
  store ptr %48, ptr %39, align 4
  store i32 %47, ptr %40, align 4
  br label %52

52:                                               ; preds = %50, %43
  %53 = phi ptr [ %44, %43 ], [ %48, %50 ]
  %54 = getelementptr i8, ptr %53, i32 %18
  %55 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #16, !srcloc !9
  %56 = extractvalue { i32, i32 } %55, 0
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65, !prof !10

58:                                               ; preds = %52
  %59 = tail call ptr @llvm.thread.pointer() #13
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 3
  %61 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %60) #17, !srcloc !11
  %62 = and i32 %61, -13
  %63 = or i32 %62, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #13, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !13
  %64 = tail call i32 @arm_copy_from_user(ptr noundef %54, ptr noundef %1, i32 noundef %2) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #13, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !13
  br label %65

65:                                               ; preds = %58, %52
  %66 = phi i32 [ %64, %58 ], [ %2, %52 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68, !prof !10

68:                                               ; preds = %65
  %69 = sub i32 %2, %66
  %70 = getelementptr i8, ptr %54, i32 %69
  tail call void @llvm.memset.p0.i32(ptr align 1 %70, i8 0, i32 %66, i1 false) #13
  br label %71

71:                                               ; preds = %68, %45, %34
  %72 = phi i32 [ -12, %45 ], [ -12, %34 ], [ -14, %68 ]
  tail call void @mutex_unlock(ptr noundef %30) #13
  br label %76

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.snd_info_buffer, ptr %39, i32 0, i32 2
  store i32 %27, ptr %74, align 4
  tail call void @mutex_unlock(ptr noundef %30) #13
  %75 = zext i32 %27 to i64
  store i64 %75, ptr %3, align 8
  br label %76

76:                                               ; preds = %73, %71, %26, %17, %14, %4
  %77 = phi i32 [ %2, %73 ], [ -5, %4 ], [ -5, %26 ], [ %72, %71 ], [ -5, %17 ], [ -5, %14 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_info_text_entry_release(ptr noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.seq_file, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_info_private_data, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_info_private_data, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.snd_info_entry, ptr %8, i32 0, i32 4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void %14(ptr noundef %8, ptr noundef nonnull %10) #13
  br label %17

17:                                               ; preds = %16, %12, %2
  %18 = tail call i32 @single_release(ptr noundef %0, ptr noundef %1) #13
  %19 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %19) #13
  %20 = load ptr, ptr %9, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %20, align 4
  tail call void @kvfree(ptr noundef %23) #13
  %24 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %24) #13
  br label %25

25:                                               ; preds = %22, %17
  %26 = getelementptr inbounds %struct.snd_info_entry, ptr %8, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  tail call void @module_put(ptr noundef %27) #13
  tail call void @kfree(ptr noundef %6) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open_size(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_info_seq_show(ptr noundef %0, ptr nocapture noundef readnone %1) #4 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.snd_info_private_data, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_info_entry, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 4
  store ptr %0, ptr %11, align 4
  %12 = load ptr, ptr %7, align 4
  %13 = load ptr, ptr %4, align 4
  tail call void %12(ptr noundef %6, ptr noundef %13) #13
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i32 [ 0, %10 ], [ -5, %2 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_info_version_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.19, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2)) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind readonly }

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
!8 = !{!"auto-init"}
!9 = !{i64 2151519961, i64 2151519986}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 4016073}
!12 = !{i64 4016270}
!13 = !{i64 2151501549}
