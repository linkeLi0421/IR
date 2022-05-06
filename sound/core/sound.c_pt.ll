; ModuleID = '/llk/IR/sound/core/sound.c_pt.bc'
source_filename = "../sound/core/sound.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_major:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_major\22\09\09\09\09\09"
module asm "__kstrtabns_snd_major:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ecards_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ecards_limit\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ecards_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_request_card:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_request_card\22\09\09\09\09\09"
module asm "__kstrtabns_snd_request_card:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_lookup_minor_data:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_lookup_minor_data\22\09\09\09\09\09"
module asm "__kstrtabns_snd_lookup_minor_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_snd_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_snd_unregister_device:\09\09\09\09\09"
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.57 }
%union.anon.57 = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_minor = type { i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.62, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.62 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@snd_major = dso_local global i32 0, align 4
@__kstrtab_snd_major = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_major = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_major = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_major to i32), ptr @__kstrtab_snd_major, ptr @__kstrtabns_snd_major }, section "___ksymtab+snd_major", align 4
@__UNIQUE_ID_author212 = internal constant [40 x i8] c"author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description213 = internal constant [69 x i8] c"description=Advanced Linux Sound Architecture driver for soundcards.\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__param_str_major = internal constant [6 x i8] c"major\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@major = internal global i32 116, align 4
@__param_major = internal constant %struct.kernel_param { ptr @__param_str_major, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.57 { ptr @major } }, section "__param", align 4
@__UNIQUE_ID_majortype215 = internal constant [19 x i8] c"parmtype=major:int\00", section ".modinfo", align 1
@__UNIQUE_ID_major216 = internal constant [37 x i8] c"parm=major:Major # for sound driver.\00", section ".modinfo", align 1
@__param_str_cards_limit = internal constant [12 x i8] c"cards_limit\00", align 1
@cards_limit = internal global i32 1, align 4
@__param_cards_limit = internal constant %struct.kernel_param { ptr @__param_str_cards_limit, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.57 { ptr @cards_limit } }, section "__param", align 4
@__UNIQUE_ID_cards_limittype217 = internal constant [25 x i8] c"parmtype=cards_limit:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cards_limit218 = internal constant [52 x i8] c"parm=cards_limit:Count of auto-loadable soundcards.\00", section ".modinfo", align 1
@__UNIQUE_ID_alias219 = internal constant [23 x i8] c"alias=char-major-116-*\00", section ".modinfo", align 1
@snd_ecards_limit = dso_local global i32 0, align 4
@__kstrtab_snd_ecards_limit = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ecards_limit = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ecards_limit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ecards_limit to i32), ptr @__kstrtab_snd_ecards_limit, ptr @__kstrtabns_snd_ecards_limit }, section "___ksymtab+snd_ecards_limit", align 4
@.str = private unnamed_addr constant [12 x i8] c"snd-card-%i\00", align 1
@__kstrtab_snd_request_card = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_request_card = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_request_card = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_request_card to i32), ptr @__kstrtab_snd_request_card, ptr @__kstrtabns_snd_request_card }, section "___ksymtab+snd_request_card", align 4
@sound_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sound_mutex, i64 12), ptr getelementptr (i8, ptr @sound_mutex, i64 12) } }, align 4
@snd_minors = internal unnamed_addr global [256 x ptr] zeroinitializer, align 4
@__kstrtab_snd_lookup_minor_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_lookup_minor_data = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_lookup_minor_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_lookup_minor_data to i32), ptr @__kstrtab_snd_lookup_minor_data, ptr @__kstrtabns_snd_lookup_minor_data }, section "___ksymtab+snd_lookup_minor_data", align 4
@__kstrtab_snd_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_register_device to i32), ptr @__kstrtab_snd_register_device, ptr @__kstrtabns_snd_register_device }, section "___ksymtab+snd_register_device", align 4
@__kstrtab_snd_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_unregister_device to i32), ptr @__kstrtab_snd_unregister_device, ptr @__kstrtabns_snd_unregister_device }, section "___ksymtab+snd_unregister_device", align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"%3i: [%2i-%2i]: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%3i: [%2i]   : %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%3i:        : %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"hardware dependent\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"raw midi\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"digital audio playback\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"digital audio capture\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"sequencer\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"alsa\00", align 1
@snd_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @snd_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [63 x i8] c"\013ALSA core: unable to register native major device number %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"snd-seq\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"snd-timer\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_alias219, ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_cards_limit218, ptr @__UNIQUE_ID_cards_limittype217, ptr @__UNIQUE_ID_description213, ptr @__UNIQUE_ID_license214, ptr @__UNIQUE_ID_major216, ptr @__UNIQUE_ID_majortype215, ptr @__ksymtab_snd_ecards_limit, ptr @__ksymtab_snd_lookup_minor_data, ptr @__ksymtab_snd_major, ptr @__ksymtab_snd_register_device, ptr @__ksymtab_snd_request_card, ptr @__ksymtab_snd_unregister_device, ptr @__param_cards_limit, ptr @__param_major], section "llvm.metadata"
@switch.table.snd_minor_info_read.19 = private unnamed_addr constant [8 x ptr] [ptr @.str.5, ptr @.str.10, ptr @.str.11, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.12], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_request_card(i32 noundef %0) #0 {
  %2 = tail call i32 @snd_card_locked(i32 noundef %0) #5
  %3 = icmp eq i32 %2, 0
  %4 = icmp sgt i32 %0, -1
  %5 = and i1 %4, %3
  %6 = load i32, ptr @cards_limit, align 4
  %7 = icmp sgt i32 %6, %0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, i32 noundef %0) #5
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_locked(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @snd_lookup_minor_data(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp ugt i32 %0, 255
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @sound_mutex) #5
  %5 = getelementptr [256 x ptr], ptr @snd_minors, i32 0, i32 %0
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 4
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.snd_minor, ptr %6, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.snd_minor, ptr %6, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 28
  %21 = tail call ptr @get_device(ptr noundef %20) #5
  br label %22

22:                                               ; preds = %19, %15, %11, %8, %4
  %23 = phi ptr [ %13, %19 ], [ %13, %15 ], [ null, %11 ], [ null, %8 ], [ null, %4 ]
  tail call void @mutex_unlock(ptr noundef nonnull @sound_mutex) #5
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi ptr [ %23, %22 ], [ null, %2 ]
  ret ptr %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_register_device(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = icmp eq ptr %5, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 28) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %51, label %12

12:                                               ; preds = %8
  store i32 %0, ptr %10, align 8
  %13 = icmp eq ptr %1, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = load i32, ptr %1, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %15, %14 ], [ -1, %12 ]
  %18 = getelementptr inbounds %struct.snd_minor, ptr %10, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.snd_minor, ptr %10, i32 0, i32 2
  store i32 %2, ptr %19, align 8
  %20 = getelementptr inbounds %struct.snd_minor, ptr %10, i32 0, i32 3
  store ptr %3, ptr %20, align 4
  %21 = getelementptr inbounds %struct.snd_minor, ptr %10, i32 0, i32 4
  store ptr %4, ptr %21, align 8
  %22 = getelementptr inbounds %struct.snd_minor, ptr %10, i32 0, i32 6
  store ptr %1, ptr %22, align 8
  tail call void @mutex_lock(ptr noundef nonnull @sound_mutex) #5
  switch i32 %0, label %24 [
    i32 1, label %38
    i32 2, label %23
  ]

23:                                               ; preds = %16
  br label %38

24:                                               ; preds = %35, %16
  %25 = phi i32 [ %36, %35 ], [ 0, %16 ]
  %26 = and i32 %25, 31
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %25, 2147483615
  %29 = icmp eq i32 %28, 1
  %30 = or i1 %27, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = getelementptr [256 x ptr], ptr @snd_minors, i32 0, i32 %25
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31, %24
  %36 = add nuw nsw i32 %25, 1
  %37 = icmp eq i32 %36, 256
  br i1 %37, label %49, label %24

38:                                               ; preds = %31, %23, %16
  %39 = phi i32 [ %0, %16 ], [ 33, %23 ], [ %25, %31 ]
  %40 = getelementptr inbounds %struct.snd_minor, ptr %10, i32 0, i32 5
  store ptr %5, ptr %40, align 4
  %41 = load i32, ptr @major, align 4
  %42 = shl i32 %41, 20
  %43 = or i32 %42, %39
  %44 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  store i32 %43, ptr %44, align 8
  %45 = tail call i32 @device_add(ptr noundef nonnull %5) #5
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %38
  %48 = getelementptr [256 x ptr], ptr @snd_minors, i32 0, i32 %39
  store ptr %10, ptr %48, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @sound_mutex) #5
  br label %51

49:                                               ; preds = %38, %35
  %50 = phi i32 [ %45, %38 ], [ -16, %35 ]
  tail call void @mutex_unlock(ptr noundef nonnull @sound_mutex) #5
  tail call void @kfree(ptr noundef nonnull %10) #5
  br label %51

51:                                               ; preds = %49, %47, %8, %6
  %52 = phi i32 [ -22, %6 ], [ -12, %8 ], [ %50, %49 ], [ %45, %47 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_unregister_device(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @sound_mutex) #5
  br label %2

2:                                                ; preds = %11, %1
  %3 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %4 = getelementptr [256 x ptr], ptr @snd_minors, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.snd_minor, ptr %5, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7, %2
  %12 = add nuw nsw i32 %3, 1
  %13 = icmp eq i32 %12, 256
  br i1 %13, label %14, label %2

14:                                               ; preds = %11
  tail call void @mutex_unlock(ptr noundef nonnull @sound_mutex) #5
  br label %17

15:                                               ; preds = %7
  store ptr null, ptr %4, align 4
  tail call void @device_del(ptr noundef %0) #5
  tail call void @kfree(ptr noundef nonnull %5) #5
  tail call void @mutex_unlock(ptr noundef nonnull @sound_mutex) #5
  %16 = icmp ugt i32 %3, 255
  br i1 %16, label %17, label %18

17:                                               ; preds = %15, %14
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ -2, %17 ], [ 0, %15 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @snd_minor_info_init() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call ptr @snd_info_create_module_entry(ptr noundef nonnull @__this_module, ptr noundef nonnull @.str.1, ptr noundef null) #5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.snd_info_entry, ptr %1, i32 0, i32 4
  store ptr @snd_minor_info_read, ptr %4, align 4
  %5 = tail call i32 @snd_info_register(ptr noundef nonnull %1) #5
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ -12, %0 ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_module_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_minor_info_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @sound_mutex) #5
  br label %3

3:                                                ; preds = %40, %2
  %4 = phi i32 [ 0, %2 ], [ %41, %40 ]
  %5 = getelementptr [256 x ptr], ptr @snd_minors, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %40, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.snd_minor, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_minor, ptr %6, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, -1
  %16 = load ptr, ptr %1, align 4
  %17 = load i32, ptr %6, align 4
  %18 = icmp ult i32 %17, 8
  br i1 %15, label %19, label %25

19:                                               ; preds = %12
  br i1 %18, label %20, label %23

20:                                               ; preds = %19
  %21 = getelementptr inbounds [8 x ptr], ptr @switch.table.snd_minor_info_read.19, i32 0, i32 %17
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %19
  %24 = phi ptr [ %22, %20 ], [ @.str.13, %19 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.2, i32 noundef %4, i32 noundef %10, i32 noundef %14, ptr noundef nonnull %24) #5
  br label %40

25:                                               ; preds = %12
  br i1 %18, label %26, label %29

26:                                               ; preds = %25
  %27 = getelementptr inbounds [8 x ptr], ptr @switch.table.snd_minor_info_read.19, i32 0, i32 %17
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %25
  %30 = phi ptr [ %28, %26 ], [ @.str.13, %25 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.3, i32 noundef %4, i32 noundef %10, ptr noundef nonnull %30) #5
  br label %40

31:                                               ; preds = %8
  %32 = load ptr, ptr %1, align 4
  %33 = load i32, ptr %6, align 4
  %34 = icmp ult i32 %33, 8
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds [8 x ptr], ptr @switch.table.snd_minor_info_read.19, i32 0, i32 %33
  %37 = load ptr, ptr %36, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi ptr [ %37, %35 ], [ @.str.13, %31 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %32, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef nonnull %39) #5
  br label %40

40:                                               ; preds = %38, %29, %23, %3
  %41 = add nuw nsw i32 %4, 1
  %42 = icmp eq i32 %41, 256
  br i1 %42, label %43, label %3

43:                                               ; preds = %40
  tail call void @mutex_unlock(ptr noundef nonnull @sound_mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #2 section ".init.text" {
  %1 = load i32, ptr @major, align 4
  store i32 %1, ptr @snd_major, align 4
  %2 = load i32, ptr @cards_limit, align 4
  store i32 %2, ptr @snd_ecards_limit, align 4
  %3 = tail call i32 @__register_chrdev(i32 noundef %1, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.14, ptr noundef nonnull @snd_fops) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, ptr @major, align 4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %6) #7
  br label %13

8:                                                ; preds = %0
  %9 = tail call i32 @snd_info_init() #5
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, ptr @major, align 4
  tail call void @__unregister_chrdev(i32 noundef %12, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.14) #5
  br label %13

13:                                               ; preds = %11, %8, %5
  %14 = phi i32 [ -5, %5 ], [ -12, %11 ], [ 0, %8 ]
  ret i32 %14
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #2 section ".exit.text" {
  %1 = tail call i32 @snd_info_done() #5
  %2 = load i32, ptr @major, align 4
  tail call void @__unregister_chrdev(i32 noundef %2, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.14) #5
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1048575
  %6 = icmp ugt i32 %5, 255
  br i1 %6, label %60, label %7

7:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @sound_mutex) #5
  %8 = getelementptr [256 x ptr], ptr @snd_minors, i32 0, i32 %5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %36

11:                                               ; preds = %7
  tail call void @mutex_unlock(ptr noundef nonnull @sound_mutex) #5
  %12 = and i32 %4, 31
  switch i32 %12, label %32 [
    i32 0, label %13
    i32 1, label %27
  ]

13:                                               ; preds = %11
  %14 = lshr i32 %5, 5
  %15 = tail call ptr @snd_card_ref(i32 noundef %14) #5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = tail call i32 @snd_card_locked(i32 noundef %14) #5
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr @cards_limit, align 4
  %21 = icmp sgt i32 %20, %14
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, i32 noundef %14) #5
  br label %32

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 28
  tail call void @put_device(ptr noundef %26) #5
  br label %32

27:                                               ; preds = %11
  switch i32 %5, label %32 [
    i32 1, label %29
    i32 33, label %28
  ]

28:                                               ; preds = %27
  br label %29

29:                                               ; preds = %28, %27
  %30 = phi ptr [ @.str.17, %28 ], [ @.str.16, %27 ]
  %31 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %30) #5
  br label %32

32:                                               ; preds = %29, %27, %25, %23, %17, %11
  tail call void @mutex_lock(ptr noundef nonnull @sound_mutex) #5
  %33 = load ptr, ptr %8, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @mutex_unlock(ptr noundef nonnull @sound_mutex) #5
  br label %60

36:                                               ; preds = %32, %7
  %37 = phi ptr [ %33, %32 ], [ %9, %7 ]
  %38 = getelementptr inbounds %struct.snd_minor, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %39, align 4
  %43 = tail call zeroext i1 @try_module_get(ptr noundef %42) #5
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %36
  tail call void @mutex_unlock(ptr noundef nonnull @sound_mutex) #5
  br label %60

45:                                               ; preds = %41
  %46 = load ptr, ptr %38, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @sound_mutex) #5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %50, align 4
  tail call void @module_put(ptr noundef %53) #5
  br label %54

54:                                               ; preds = %52, %48
  store ptr %46, ptr %49, align 4
  %55 = getelementptr inbounds %struct.file_operations, ptr %46, i32 0, i32 14
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = tail call i32 %56(ptr noundef %0, ptr noundef %1) #5
  br label %60

60:                                               ; preds = %58, %54, %45, %44, %35, %2
  %61 = phi i32 [ -19, %35 ], [ -19, %2 ], [ -19, %45 ], [ %59, %58 ], [ 0, %54 ], [ -19, %44 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_card_ref(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_done() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { cold nounwind }

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
