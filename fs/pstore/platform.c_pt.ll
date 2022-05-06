; ModuleID = '/llk/IR/fs/pstore/platform.c_pt.bc'
source_filename = "../fs/pstore/platform.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pstore_type_to_name:\09\09\09\09\09"
module asm "\09.asciz \09\22pstore_type_to_name\22\09\09\09\09\09"
module asm "__kstrtabns_pstore_type_to_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pstore_name_to_type:\09\09\09\09\09"
module asm "\09.asciz \09\22pstore_name_to_type\22\09\09\09\09\09"
module asm "__kstrtabns_pstore_name_to_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pstore_register:\09\09\09\09\09"
module asm "\09.asciz \09\22pstore_register\22\09\09\09\09\09"
module asm "__kstrtabns_pstore_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pstore_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22pstore_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_pstore_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.kmsg_dumper = type { %struct.list_head, ptr, i32, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.pstore_zbackend = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.pstore_record = type { ptr, i32, i64, %struct.timespec64, ptr, i32, i32, i32, i32, i32, i8 }
%struct.pstore_info = type { ptr, ptr, %struct.semaphore, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.kmsg_dump_iter = type { i64, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_update_ms = internal constant [17 x i8] c"pstore.update_ms\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@pstore_update_ms = internal global i32 -1, align 4
@__param_update_ms = internal constant %struct.kernel_param { ptr @__param_str_update_ms, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.4 { ptr @pstore_update_ms } }, section "__param", align 4
@__UNIQUE_ID_update_mstype162 = internal constant [30 x i8] c"pstore.parmtype=update_ms:int\00", section ".modinfo", align 1
@__UNIQUE_ID_update_ms163 = internal constant [210 x i8] c"pstore.parm=update_ms:milliseconds before pstore updates its content (default is -1, which means runtime updates are disabled; enabling this option may not be safe; it may lead to further corruption on Oopses)\00", section ".modinfo", align 1
@__param_str_backend = internal constant [15 x i8] c"pstore.backend\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@backend = internal global ptr null, align 4
@__param_backend = internal constant %struct.kernel_param { ptr @__param_str_backend, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.4 { ptr @backend } }, section "__param", align 4
@__UNIQUE_ID_backendtype164 = internal constant [30 x i8] c"pstore.parmtype=backend:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_backend165 = internal constant [44 x i8] c"pstore.parm=backend:specific backend to use\00", section ".modinfo", align 1
@__param_str_compress = internal constant [16 x i8] c"pstore.compress\00", align 1
@compress = internal global ptr @.str.11, align 4
@__param_compress = internal constant %struct.kernel_param { ptr @__param_str_compress, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.4 { ptr @compress } }, section "__param", align 4
@__UNIQUE_ID_compresstype166 = internal constant [31 x i8] c"pstore.parmtype=compress:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_compress167 = internal constant [40 x i8] c"pstore.parm=compress:compression to use\00", section ".modinfo", align 1
@kmsg_bytes = dso_local local_unnamed_addr global i32 10240, align 4
@pstore_type_to_name.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [21 x i8] c"fs/pstore/platform.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@pstore_type_names = internal unnamed_addr constant [9 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], align 4
@__kstrtab_pstore_type_to_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_pstore_type_to_name = external dso_local constant [0 x i8], align 1
@__ksymtab_pstore_type_to_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pstore_type_to_name to i32), ptr @__kstrtab_pstore_type_to_name, ptr @__kstrtabns_pstore_type_to_name }, section "___ksymtab_gpl+pstore_type_to_name", align 4
@__kstrtab_pstore_name_to_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_pstore_name_to_type = external dso_local constant [0 x i8], align 1
@__ksymtab_pstore_name_to_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pstore_name_to_type to i32), ptr @__kstrtab_pstore_name_to_type, ptr @__kstrtabns_pstore_name_to_type }, section "___ksymtab_gpl+pstore_name_to_type", align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"\014pstore: ignoring unexpected backend '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"\014pstore: backend '%s' must support at least one frontend\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"\014pstore: backend '%s' must implement read() and write()\0A\00", align 1
@psinfo_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @psinfo_lock, i64 12), ptr getelementptr (i8, ptr @psinfo_lock, i64 12) } }, align 4
@psinfo = dso_local local_unnamed_addr global ptr null, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"\014pstore: backend '%s' already loaded: ignoring '%s'\0A\00", align 1
@pstore_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"&psinfo->read_mutex\00", align 1
@pstore_dumper = internal global %struct.kmsg_dumper { %struct.list_head zeroinitializer, ptr @pstore_dump, i32 0, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"\016pstore: Registered %s as persistent store backend\0A\00", align 1
@__kstrtab_pstore_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_pstore_register = external dso_local constant [0 x i8], align 1
@__ksymtab_pstore_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pstore_register to i32), ptr @__kstrtab_pstore_register, ptr @__kstrtabns_pstore_register }, section "___ksymtab_gpl+pstore_register", align 4
@pstore_timer = internal global %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @pstore_timefunc, i32 0 }, align 4
@pstore_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @pstore_work, i64 4), ptr getelementptr (i8, ptr @pstore_work, i64 4) }, ptr @pstore_dowork }, align 4
@__kstrtab_pstore_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_pstore_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_pstore_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pstore_unregister to i32), ptr @__kstrtab_pstore_unregister, ptr @__kstrtabns_pstore_unregister }, section "___ksymtab_gpl+pstore_unregister", align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"\013pstore: out of memory creating record\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"\014pstore: failed to create %d record(s) from '%s'\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"\013pstore: looping? Too many records seen from '%s'\0A\00", align 1
@__initcall__kmod_pstore__169_841_pstore_init7 = internal global ptr @pstore_init, section ".initcall7.init", align 4
@__exitcall_pstore_exit = internal global ptr @pstore_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author170 = internal constant [46 x i8] c"pstore.author=Tony Luck <tony.luck@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file171 = internal constant [29 x i8] c"pstore.file=fs/pstore/pstore\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [19 x i8] c"pstore.license=GPL\00", section ".modinfo", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"deflate\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"dmesg\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"mce\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"ftrace\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"rtas\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"powerpc-ofw\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"powerpc-common\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"pmsg\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"powerpc-opal\00", align 1
@zbackend = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@tfm = internal unnamed_addr global ptr null, align 4
@.str.22 = private unnamed_addr constant [35 x i8] c"\013pstore: Unknown compression: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"\013pstore: Invalid compression size for %s: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [64 x i8] c"\013pstore: Failed %d byte compression buffer allocation for: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c"\013pstore: crypto_alloc_comp('%s') failed: %ld\0A\00", align 1
@big_oops_buf_sz = internal unnamed_addr global i32 0, align 4
@big_oops_buf = internal unnamed_addr global ptr null, align 4
@.str.26 = private unnamed_addr constant [44 x i8] c"\016pstore: Using crash dump compression: %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.27 = private unnamed_addr constant [61 x i8] c"\013pstore: dump skipped in %s path: may corrupt error record\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"NMI\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"\013pstore: could not grab semaphore?!\0A\00", align 1
@oopscount = internal unnamed_addr global i32 0, align 4
@.str.30 = private unnamed_addr constant [14 x i8] c"%s#%d Part%u\0A\00", align 1
@pstore_new_entry = internal unnamed_addr global i1 false, align 4
@.str.31 = private unnamed_addr constant [50 x i8] c"\013pstore: crypto_comp_compress failed, ret = %d!\0A\00", align 1
@pstore_console = internal global %struct.console { [16 x i8] zeroinitializer, ptr @pstore_console_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i16 0, i16 -1, i32 0, i32 0, i32 0, ptr null, ptr null }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.32 = private unnamed_addr constant [45 x i8] c"\014pstore: ignored compressed record type %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"\014pstore: no decompression method initialized!\0A\00", align 1
@.str.34 = private unnamed_addr constant [52 x i8] c"\013pstore: crypto_comp_decompress failed, ret = %d!\0A\00", align 1
@zbackends = internal constant [2 x %struct.pstore_zbackend] [%struct.pstore_zbackend { ptr @zbufsize_deflate, ptr @.str.11 }, %struct.pstore_zbackend zeroinitializer], align 4
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author170, ptr @__UNIQUE_ID_backend165, ptr @__UNIQUE_ID_backendtype164, ptr @__UNIQUE_ID_compress167, ptr @__UNIQUE_ID_compresstype166, ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__UNIQUE_ID_update_ms163, ptr @__UNIQUE_ID_update_mstype162, ptr @__exitcall_pstore_exit, ptr @__initcall__kmod_pstore__169_841_pstore_init7, ptr @__ksymtab_pstore_name_to_type, ptr @__ksymtab_pstore_register, ptr @__ksymtab_pstore_type_to_name, ptr @__ksymtab_pstore_unregister, ptr @__param_backend, ptr @__param_compress, ptr @__param_update_ms, ptr @pstore_exit], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pstore_set_kmsg_bytes(i32 noundef %0) local_unnamed_addr #0 {
  store i32 %0, ptr @kmsg_bytes, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pstore_type_to_name(i32 noundef %0) #1 {
  %2 = icmp ugt i32 %0, 8
  %3 = load i1, ptr @pstore_type_to_name.__already_done, align 1
  %4 = xor i1 %3, true
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %1
  store i1 true, ptr @pstore_type_to_name.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef null) #15
  br label %7

7:                                                ; preds = %6, %1
  br i1 %2, label %11, label %8

8:                                                ; preds = %7
  %9 = getelementptr [9 x ptr], ptr @pstore_type_names, i32 0, i32 %0
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %7
  %12 = phi ptr [ %10, %8 ], [ @.str.1, %7 ]
  ret ptr %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @pstore_name_to_type(ptr nocapture noundef readonly %0) #4 {
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.12, ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %29, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.13, ptr noundef %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.14, ptr noundef %0)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.15, ptr noundef %0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.16, ptr noundef %0)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.17, ptr noundef %0)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(15) @.str.18, ptr noundef %0)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.19, ptr noundef %0)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(13) @.str.20, ptr noundef %0)
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 8, i32 9
  br label %29

29:                                               ; preds = %25, %22, %19, %16, %13, %10, %7, %4, %1
  %30 = phi i32 [ 0, %1 ], [ 1, %4 ], [ 2, %7 ], [ 3, %10 ], [ 4, %13 ], [ 5, %16 ], [ 6, %19 ], [ 7, %22 ], [ %28, %25 ]
  ret i32 %30
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pstore_record_init(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.timespec64, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(64) %0, i8 0, i32 64, i1 false)
  store ptr %1, ptr %0, align 8
  %4 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %5 = tail call i64 @ktime_get_real_fast_ns() #15
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %5) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_fast_ns() local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pstore_register(ptr noundef %0) #1 {
  %2 = load ptr, ptr @backend, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @strcmp(ptr noundef nonnull %2, ptr noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %6) #16
  br label %95

11:                                               ; preds = %4, %1
  %12 = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %17) #16
  br label %95

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 12
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %29) #16
  br label %95

31:                                               ; preds = %23
  tail call void @mutex_lock(ptr noundef nonnull @psinfo_lock) #15
  %32 = load ptr, ptr @psinfo, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.pstore_info, ptr %32, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %36, ptr noundef %38) #16
  tail call void @mutex_unlock(ptr noundef nonnull @psinfo_lock) #15
  br label %95

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 13
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store ptr @pstore_write_user_compat, ptr %41, align 4
  br label %45

45:                                               ; preds = %44, %40
  store ptr %0, ptr @psinfo, align 4
  %46 = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %46, ptr noundef nonnull @.str.6, ptr noundef nonnull @pstore_register.__key) #15
  %47 = load ptr, ptr @psinfo, align 4
  %48 = getelementptr inbounds %struct.pstore_info, ptr %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.pstore_info, ptr %47, i32 0, i32 2, i32 2
  store i32 0, ptr %48, align 4
  %50 = getelementptr inbounds %struct.pstore_info, ptr %47, i32 0, i32 2, i32 1
  store i32 1, ptr %50, align 4
  store ptr %49, ptr %49, align 4
  %51 = getelementptr inbounds %struct.pstore_info, ptr %47, i32 0, i32 2, i32 2, i32 1
  store ptr %49, ptr %51, align 4
  %52 = load i32, ptr %12, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  tail call fastcc void @allocate_buf_for_compression()
  br label %56

56:                                               ; preds = %55, %45
  tail call void @pstore_get_records(i32 noundef 0) #15
  %57 = load i32, ptr %12, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr @psinfo, align 4
  %62 = getelementptr inbounds %struct.pstore_info, ptr %61, i32 0, i32 7
  %63 = load i32, ptr %62, align 4
  store i32 %63, ptr getelementptr inbounds (%struct.kmsg_dumper, ptr @pstore_dumper, i32 0, i32 2), align 4
  %64 = tail call i32 @kmsg_dump_register(ptr noundef nonnull @pstore_dumper) #15
  %65 = load i32, ptr %12, align 4
  br label %66

66:                                               ; preds = %60, %56
  %67 = phi i32 [ %65, %60 ], [ %57, %56 ]
  %68 = and i32 %67, 2
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr @psinfo, align 4
  %72 = getelementptr inbounds %struct.pstore_info, ptr %71, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 @strscpy(ptr noundef nonnull @pstore_console, ptr noundef %73, i32 noundef 16) #15
  store i16 21, ptr getelementptr inbounds (%struct.console, ptr @pstore_console, i32 0, i32 8), align 4
  tail call void @register_console(ptr noundef nonnull @pstore_console) #15
  %75 = load i32, ptr %12, align 4
  br label %76

76:                                               ; preds = %70, %66
  %77 = phi i32 [ %75, %70 ], [ %67, %66 ]
  %78 = and i32 %77, 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  tail call void @pstore_register_pmsg() #15
  br label %81

81:                                               ; preds = %80, %76
  %82 = load i32, ptr @pstore_update_ms, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load volatile i32, ptr @jiffies, align 64
  %86 = tail call i32 @__msecs_to_jiffies(i32 noundef %82) #15
  %87 = add i32 %86, %85
  %88 = tail call i32 @mod_timer(ptr noundef nonnull @pstore_timer, i32 noundef %87) #15
  br label %89

89:                                               ; preds = %84, %81
  %90 = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = tail call noalias ptr @kstrdup(ptr noundef %91, i32 noundef 3264) #15
  store ptr %92, ptr @backend, align 4
  %93 = load ptr, ptr %90, align 4
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %93) #16
  tail call void @mutex_unlock(ptr noundef nonnull @psinfo_lock) #15
  br label %95

95:                                               ; preds = %89, %34, %27, %15, %9
  %96 = phi i32 [ -1, %9 ], [ -16, %34 ], [ 0, %89 ], [ -22, %27 ], [ -22, %15 ]
  ret i32 %96
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pstore_write_user_compat(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pstore_record, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @memdup_user(ptr noundef %1, i32 noundef %8) #15
  store ptr %9, ptr %3, align 8
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = ptrtoint ptr %9 to i32
  br label %19

13:                                               ; preds = %6
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.pstore_info, ptr %14, i32 0, i32 12
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %0) #15
  %18 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %18) #15
  br label %19

19:                                               ; preds = %13, %11
  %20 = phi i32 [ %12, %11 ], [ %17, %13 ]
  store ptr null, ptr %3, align 8
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %24, label %22, !prof !8

22:                                               ; preds = %19
  %23 = load i32, ptr %7, align 4
  br label %24

24:                                               ; preds = %22, %19, %2
  %25 = phi i32 [ -22, %2 ], [ %23, %22 ], [ %20, %19 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @allocate_buf_for_compression() unnamed_addr #1 {
  %1 = load ptr, ptr @zbackend, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %55, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @psinfo, align 4
  %5 = icmp eq ptr %4, null
  %6 = load ptr, ptr @tfm, align 4
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %55, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.pstore_zbackend, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @crypto_has_alg(ptr noundef %11, i32 noundef 2, i32 noundef 15) #15
  %13 = icmp eq i32 %12, 0
  %14 = load ptr, ptr @zbackend, align 4
  br i1 %13, label %15, label %19

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.pstore_zbackend, ptr %14, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %17) #16
  br label %55

19:                                               ; preds = %9
  %20 = load ptr, ptr %14, align 4
  %21 = load ptr, ptr @psinfo, align 4
  %22 = getelementptr inbounds %struct.pstore_info, ptr %21, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 %20(i32 noundef %23) #15
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load ptr, ptr @zbackend, align 4
  %28 = getelementptr inbounds %struct.pstore_zbackend, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %29, i32 noundef %24) #16
  br label %55

31:                                               ; preds = %19
  %32 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %24, i32 noundef 3264) #17
  %33 = icmp eq ptr %32, null
  %34 = load ptr, ptr @zbackend, align 4
  %35 = getelementptr inbounds %struct.pstore_zbackend, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  br i1 %33, label %37, label %39

37:                                               ; preds = %31
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %24, ptr noundef %36) #16
  br label %55

39:                                               ; preds = %31
  %40 = tail call ptr @crypto_alloc_base(ptr noundef %36, i32 noundef 2, i32 noundef 15) #15
  %41 = icmp eq ptr %40, null
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  %43 = or i1 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  tail call void @kfree(ptr noundef nonnull %32) #15
  %45 = load ptr, ptr @zbackend, align 4
  %46 = getelementptr inbounds %struct.pstore_zbackend, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = ptrtoint ptr %40 to i32
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %47, i32 noundef %48) #16
  br label %55

50:                                               ; preds = %39
  store ptr %40, ptr @tfm, align 4
  store i32 %24, ptr @big_oops_buf_sz, align 4
  store ptr %32, ptr @big_oops_buf, align 4
  %51 = load ptr, ptr @zbackend, align 4
  %52 = getelementptr inbounds %struct.pstore_zbackend, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %53) #16
  br label %55

55:                                               ; preds = %50, %44, %37, %26, %15, %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pstore_get_records(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pstore_register_pmsg() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pstore_unregister(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @psinfo_lock) #15
  %4 = load ptr, ptr @psinfo, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 640, i32 noundef 9, ptr noundef null) #15
  br label %37

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  tail call void @pstore_unregister_pmsg() #15
  %13 = load i32, ptr %8, align 4
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi i32 [ %13, %12 ], [ %9, %7 ]
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @unregister_console(ptr noundef nonnull @pstore_console) #15
  %20 = load i32, ptr %8, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi i32 [ %20, %18 ], [ %15, %14 ]
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @kmsg_dump_unregister(ptr noundef nonnull @pstore_dumper) #15
  br label %27

27:                                               ; preds = %25, %21
  %28 = tail call i32 @del_timer_sync(ptr noundef nonnull @pstore_timer) #15
  %29 = tail call zeroext i1 @flush_work(ptr noundef nonnull @pstore_work) #15
  %30 = tail call i32 @pstore_put_backend_records(ptr noundef nonnull %0) #15
  %31 = load ptr, ptr @tfm, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %31, ptr noundef nonnull %31) #15
  store ptr null, ptr @tfm, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load ptr, ptr @big_oops_buf, align 4
  tail call void @kfree(ptr noundef %35) #15
  store ptr null, ptr @big_oops_buf, align 4
  store i32 0, ptr @big_oops_buf_sz, align 4
  store ptr null, ptr @psinfo, align 4
  %36 = load ptr, ptr @backend, align 4
  tail call void @kfree(ptr noundef %36) #15
  store ptr null, ptr @backend, align 4
  br label %37

37:                                               ; preds = %34, %6
  tail call void @mutex_unlock(ptr noundef nonnull @psinfo_lock) #15
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pstore_unregister_pmsg() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pstore_put_backend_records(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pstore_get_backend_records(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec64, align 8
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %115

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = tail call i32 %12(ptr noundef nonnull %0) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @mutex_unlock(ptr noundef %10) #15
  br label %115

18:                                               ; preds = %14, %9
  %19 = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 11
  %20 = icmp eq i32 %2, 0
  br label %21

21:                                               ; preds = %91, %18
  %22 = phi i32 [ 0, %18 ], [ %92, %91 ]
  %23 = phi i32 [ 65536, %18 ], [ %93, %91 ]
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 64) #18
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #16
  br label %95

29:                                               ; preds = %21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %25, i8 0, i32 64, i1 false) #15
  store ptr %0, ptr %25, align 8
  %30 = getelementptr inbounds %struct.pstore_record, ptr %25, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %31 = call i64 @ktime_get_real_fast_ns() #15
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %5, i64 noundef %31) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  %32 = load ptr, ptr %19, align 4
  %33 = call i32 %32(ptr noundef nonnull %25) #15
  %34 = getelementptr inbounds %struct.pstore_record, ptr %25, i32 0, i32 5
  store i32 %33, ptr %34, align 4
  %35 = icmp slt i32 %33, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  call void @kfree(ptr noundef nonnull %25) #15
  br label %95

37:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %38 = getelementptr inbounds %struct.pstore_record, ptr %25, i32 0, i32 10
  %39 = load i8, ptr %38, align 8, !range !10
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %81, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.pstore_record, ptr %25, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %43) #16
  br label %81

47:                                               ; preds = %41
  %48 = load ptr, ptr @big_oops_buf, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #16
  br label %81

52:                                               ; preds = %47
  %53 = load i32, ptr @big_oops_buf_sz, align 4
  store i32 %53, ptr %4, align 4
  %54 = getelementptr inbounds %struct.pstore_record, ptr %25, i32 0, i32 6
  %55 = load i32, ptr %54, align 8
  %56 = add i32 %55, %53
  %57 = call noalias align 64 ptr @__kmalloc(i32 noundef %56, i32 noundef 3264) #17
  %58 = icmp eq ptr %57, null
  br i1 %58, label %81, label %59

59:                                               ; preds = %52
  %60 = load i32, ptr %34, align 4
  %61 = load ptr, ptr @tfm, align 4
  %62 = getelementptr inbounds %struct.pstore_record, ptr %25, i32 0, i32 4
  %63 = load ptr, ptr %62, align 8
  %64 = call i32 @crypto_comp_decompress(ptr noundef %61, ptr noundef %63, i32 noundef %60, ptr noundef nonnull %57, ptr noundef nonnull %4) #15
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %64) #16
  call void @kfree(ptr noundef nonnull %57) #15
  br label %81

68:                                               ; preds = %59
  %69 = load i32, ptr %4, align 4
  %70 = getelementptr i8, ptr %57, i32 %69
  %71 = load ptr, ptr %62, align 8
  %72 = load i32, ptr %34, align 4
  %73 = getelementptr i8, ptr %71, i32 %72
  %74 = load i32, ptr %54, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %70, ptr align 1 %73, i32 %74, i1 false) #15
  %75 = add i32 %74, %69
  %76 = call ptr @kmemdup(ptr noundef nonnull %57, i32 noundef %75, i32 noundef 3264) #15
  call void @kfree(ptr noundef nonnull %57) #15
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %68
  %79 = load ptr, ptr %62, align 8
  call void @kfree(ptr noundef %79) #15
  store ptr %76, ptr %62, align 8
  %80 = load i32, ptr %4, align 4
  store i32 %80, ptr %34, align 4
  store i8 0, ptr %38, align 8
  br label %81

81:                                               ; preds = %78, %68, %66, %52, %50, %45, %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  %82 = call i32 @pstore_mkfile(ptr noundef nonnull %1, ptr noundef nonnull %25) #15
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.pstore_record, ptr %25, i32 0, i32 4
  %86 = load ptr, ptr %85, align 8
  call void @kfree(ptr noundef %86) #15
  call void @kfree(ptr noundef nonnull %25) #15
  %87 = icmp ne i32 %82, -17
  %88 = or i1 %20, %87
  %89 = zext i1 %88 to i32
  %90 = add i32 %22, %89
  br label %91

91:                                               ; preds = %84, %81
  %92 = phi i32 [ %90, %84 ], [ %22, %81 ]
  %93 = add nsw i32 %23, -1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %21

95:                                               ; preds = %91, %36, %27
  %96 = phi i32 [ %23, %27 ], [ %23, %36 ], [ 0, %91 ]
  %97 = phi i32 [ %22, %27 ], [ %22, %36 ], [ %92, %91 ]
  %98 = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 10
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %95
  %102 = call i32 %99(ptr noundef nonnull %0) #15
  br label %103

103:                                              ; preds = %101, %95
  call void @mutex_unlock(ptr noundef %10) #15
  %104 = icmp eq i32 %97, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %97, ptr noundef %107) #16
  br label %109

109:                                              ; preds = %105, %103
  %110 = icmp eq i32 %96, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.pstore_info, ptr %0, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %113) #16
  br label %115

115:                                              ; preds = %111, %109, %17, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pstore_mkfile(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pstore_init() #9 section ".init.text" {
  %1 = load ptr, ptr @compress, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(8) @.str.11) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store ptr @zbackends, ptr @zbackend, align 4
  br label %7

7:                                                ; preds = %6, %3, %0
  tail call fastcc void @allocate_buf_for_compression()
  %8 = tail call i32 @pstore_init_fs() #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @tfm, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %11, ptr noundef nonnull %11) #15
  store ptr null, ptr @tfm, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = load ptr, ptr @big_oops_buf, align 4
  tail call void @kfree(ptr noundef %15) #15
  store ptr null, ptr @big_oops_buf, align 4
  store i32 0, ptr @big_oops_buf_sz, align 4
  br label %16

16:                                               ; preds = %14, %7
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pstore_exit() #9 section ".exit.text" {
  tail call void @pstore_exit_fs() #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @pstore_exit_fs() local_unnamed_addr #8 section ".exit.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_has_alg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_base(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pstore_dump(ptr nocapture noundef readnone %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.kmsg_dump_iter, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pstore_record, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !11
  %8 = tail call ptr @kmsg_dump_reason_str(i32 noundef %1) #15
  %9 = load ptr, ptr @psinfo, align 4
  %10 = getelementptr inbounds %struct.pstore_info, ptr %9, i32 0, i32 2
  %11 = tail call i32 @down_trylock(ptr noundef %10) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %2
  %14 = tail call ptr @llvm.thread.pointer() #15
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 15728640
  %18 = icmp ne i32 %17, 0
  %19 = add i32 %1, -1
  %20 = and i32 %19, -3
  %21 = icmp eq i32 %20, 0
  %22 = or i1 %21, %18
  br i1 %22, label %23, label %29

23:                                               ; preds = %13
  %24 = load volatile i32, ptr %15, align 4
  %25 = and i32 %24, 15728640
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr %8, ptr @.str.28
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %27) #16
  br label %152

29:                                               ; preds = %13
  %30 = load ptr, ptr @psinfo, align 4
  %31 = getelementptr inbounds %struct.pstore_info, ptr %30, i32 0, i32 2
  %32 = tail call i32 @down_interruptible(ptr noundef %31) #15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #16
  br label %152

36:                                               ; preds = %29, %2
  call void @kmsg_dump_rewind(ptr noundef nonnull %5) #15
  %37 = load i32, ptr @oopscount, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr @oopscount, align 4
  %39 = load i32, ptr @kmsg_bytes, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %149, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.pstore_record, ptr %7, i32 0, i32 3
  %43 = getelementptr inbounds %struct.pstore_record, ptr %7, i32 0, i32 1
  %44 = getelementptr inbounds %struct.pstore_record, ptr %7, i32 0, i32 7
  %45 = getelementptr inbounds %struct.pstore_record, ptr %7, i32 0, i32 8
  %46 = getelementptr inbounds %struct.pstore_record, ptr %7, i32 0, i32 9
  %47 = getelementptr inbounds %struct.pstore_record, ptr %7, i32 0, i32 4
  %48 = getelementptr inbounds %struct.pstore_record, ptr %7, i32 0, i32 5
  %49 = getelementptr inbounds %struct.pstore_record, ptr %7, i32 0, i32 10
  %50 = icmp eq i32 %1, 2
  br label %51

51:                                               ; preds = %143, %41
  %52 = phi i32 [ 0, %41 ], [ %145, %143 ]
  %53 = phi i32 [ 1, %41 ], [ %146, %143 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  %54 = load ptr, ptr @psinfo, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i32 64, i1 false) #15
  store ptr %54, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %55 = call i64 @ktime_get_real_fast_ns() #15
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %55) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  store i32 0, ptr %43, align 4
  %56 = load i32, ptr @oopscount, align 4
  store i32 %56, ptr %44, align 4
  store i32 %1, ptr %45, align 8
  store i32 %53, ptr %46, align 4
  %57 = load ptr, ptr @psinfo, align 4
  %58 = getelementptr inbounds %struct.pstore_info, ptr %57, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  store ptr %59, ptr %47, align 8
  %60 = load ptr, ptr @big_oops_buf, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load ptr, ptr %58, align 4
  %64 = getelementptr inbounds %struct.pstore_info, ptr %57, i32 0, i32 4
  br label %65

65:                                               ; preds = %62, %51
  %66 = phi ptr [ %63, %62 ], [ %60, %51 ]
  %67 = phi ptr [ %64, %62 ], [ @big_oops_buf_sz, %51 ]
  %68 = load i32, ptr %67, align 4
  %69 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %66, i32 noundef %68, ptr noundef nonnull @.str.30, ptr noundef %8, i32 noundef %56, i32 noundef %53)
  %70 = sub i32 %68, %69
  %71 = getelementptr i8, ptr %66, i32 %69
  %72 = call zeroext i1 @kmsg_dump_get_buffer(ptr noundef nonnull %5, i1 noundef zeroext true, ptr noundef %71, i32 noundef %70, ptr noundef nonnull %6) #15
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  br label %149

74:                                               ; preds = %65
  %75 = load ptr, ptr @big_oops_buf, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %124, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr @psinfo, align 4
  %79 = getelementptr inbounds %struct.pstore_info, ptr %78, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = load i32, ptr %6, align 4
  %82 = add i32 %81, %69
  %83 = getelementptr inbounds %struct.pstore_info, ptr %78, i32 0, i32 4
  %84 = load i32, ptr %83, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 %84, ptr %3, align 4
  %85 = load ptr, ptr @tfm, align 4
  %86 = call i32 @crypto_comp_compress(ptr noundef %85, ptr noundef %66, i32 noundef %82, ptr noundef %80, ptr noundef nonnull %3) #15
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %77
  %89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %86) #16
  br label %92

90:                                               ; preds = %77
  %91 = load i32, ptr %3, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %86, %88 ], [ %91, %90 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i8 1, ptr %49, align 8
  br label %127

96:                                               ; preds = %92
  %97 = load i32, ptr %6, align 4
  %98 = add i32 %97, %69
  %99 = load ptr, ptr @psinfo, align 4
  %100 = getelementptr inbounds %struct.pstore_info, ptr %99, i32 0, i32 4
  %101 = load i32, ptr %100, align 4
  %102 = icmp ugt i32 %98, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %96
  %104 = add i32 %98, %69
  %105 = sub i32 %104, %101
  %106 = getelementptr inbounds %struct.pstore_info, ptr %99, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = load ptr, ptr @big_oops_buf, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %107, ptr align 1 %108, i32 %69, i1 false) #15
  %109 = load ptr, ptr @psinfo, align 4
  %110 = getelementptr inbounds %struct.pstore_info, ptr %109, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr i8, ptr %111, i32 %69
  %113 = getelementptr i8, ptr %108, i32 %105
  %114 = getelementptr inbounds %struct.pstore_info, ptr %109, i32 0, i32 4
  %115 = load i32, ptr %114, align 4
  %116 = sub i32 %115, %69
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %112, ptr align 1 %113, i32 %116, i1 false) #15
  %117 = load ptr, ptr @psinfo, align 4
  %118 = getelementptr inbounds %struct.pstore_info, ptr %117, i32 0, i32 4
  %119 = load i32, ptr %118, align 4
  br label %127

120:                                              ; preds = %96
  %121 = getelementptr inbounds %struct.pstore_info, ptr %99, i32 0, i32 3
  %122 = load ptr, ptr %121, align 4
  %123 = load ptr, ptr @big_oops_buf, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %122, ptr align 1 %123, i32 %98, i1 false) #15
  br label %127

124:                                              ; preds = %74
  %125 = load i32, ptr %6, align 4
  %126 = add i32 %125, %69
  br label %127

127:                                              ; preds = %124, %120, %103, %95
  %128 = phi i32 [ %93, %95 ], [ %126, %124 ], [ %119, %103 ], [ %98, %120 ]
  store i32 %128, ptr %48, align 4
  %129 = load ptr, ptr @psinfo, align 4
  %130 = getelementptr inbounds %struct.pstore_info, ptr %129, i32 0, i32 12
  %131 = load ptr, ptr %130, align 4
  %132 = call i32 %131(ptr noundef nonnull %7) #15
  %133 = icmp eq i32 %132, 0
  %134 = and i1 %50, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %127
  store i1 true, ptr @pstore_new_entry, align 4
  %136 = load i32, ptr @pstore_update_ms, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %135
  %139 = load volatile i32, ptr @jiffies, align 64
  %140 = call i32 @__msecs_to_jiffies(i32 noundef %136) #15
  %141 = add i32 %140, %139
  %142 = call i32 @mod_timer(ptr noundef nonnull @pstore_timer, i32 noundef %141) #15
  br label %143

143:                                              ; preds = %138, %135, %127
  %144 = load i32, ptr %48, align 4
  %145 = add i32 %144, %52
  %146 = add i32 %53, 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  %147 = load i32, ptr @kmsg_bytes, align 4
  %148 = icmp ult i32 %145, %147
  br i1 %148, label %51, label %149

149:                                              ; preds = %143, %73, %36
  %150 = load ptr, ptr @psinfo, align 4
  %151 = getelementptr inbounds %struct.pstore_info, ptr %150, i32 0, i32 2
  call void @up(ptr noundef %151) #15
  br label %152

152:                                              ; preds = %149, %34, %23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmsg_dump_reason_str(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmsg_dump_rewind(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kmsg_dump_get_buffer(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_comp_compress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmsg_dump_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pstore_console_write(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.pstore_record, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @psinfo, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i32 64, i1 false) #15
  store ptr %7, ptr %4, align 8
  %8 = getelementptr inbounds %struct.pstore_record, ptr %4, i32 0, i32 3
  %9 = tail call i64 @ktime_get_real_fast_ns() #15
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %8, i64 noundef %9) #15
  %10 = getelementptr inbounds %struct.pstore_record, ptr %4, i32 0, i32 1
  store i32 2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.pstore_record, ptr %4, i32 0, i32 4
  store ptr %1, ptr %11, align 8
  %12 = getelementptr inbounds %struct.pstore_record, ptr %4, i32 0, i32 5
  store i32 %2, ptr %12, align 4
  %13 = load ptr, ptr @psinfo, align 4
  %14 = getelementptr inbounds %struct.pstore_info, ptr %13, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 %15(ptr noundef nonnull %4) #15
  br label %17

17:                                               ; preds = %6, %3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_console(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmsg_dump_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pstore_timefunc(ptr nocapture noundef readnone %0) #1 {
  %2 = load i1, ptr @pstore_new_entry, align 4
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  store i1 false, ptr @pstore_new_entry, align 4
  %4 = load ptr, ptr @system_wq, align 4
  %5 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef nonnull @pstore_work) #15
  br label %6

6:                                                ; preds = %3, %1
  %7 = load i32, ptr @pstore_update_ms, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = tail call i32 @__msecs_to_jiffies(i32 noundef %7) #15
  %12 = add i32 %11, %10
  %13 = tail call i32 @mod_timer(ptr noundef nonnull @pstore_timer, i32 noundef %12) #15
  br label %14

14:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pstore_dowork(ptr nocapture noundef readnone %0) #1 {
  tail call void @pstore_get_records(i32 noundef 1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_comp_decompress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @pstore_init_fs() local_unnamed_addr #8 section ".init.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @zbufsize_deflate(i32 noundef %0) #14 {
  %2 = add i32 %0, -4000
  %3 = icmp ult i32 %2, 6001
  br i1 %3, label %14, label %11

4:                                                ; preds = %8
  %5 = add i32 %0, -1000
  %6 = icmp ult i32 %5, 1001
  %7 = select i1 %6, i32 56, i32 60
  br label %14

8:                                                ; preds = %11
  %9 = add i32 %0, -2001
  %10 = icmp ult i32 %9, 1000
  br i1 %10, label %14, label %4

11:                                               ; preds = %1
  %12 = add i32 %0, -3001
  %13 = icmp ult i32 %12, 999
  br i1 %13, label %14, label %8

14:                                               ; preds = %11, %8, %4, %1
  %15 = phi i32 [ 54, %8 ], [ 52, %11 ], [ 45, %1 ], [ %7, %4 ]
  %16 = mul i32 %0, 100
  %17 = udiv i32 %16, %15
  ret i32 %17
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i8 0, i8 2}
!11 = !{!"auto-init"}
