; ModuleID = '/llk/IR/crypto/crypto_engine.c_pt.bc'
source_filename = "../crypto/crypto_engine.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_transfer_aead_request_to_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_transfer_aead_request_to_engine\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_transfer_aead_request_to_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_transfer_akcipher_request_to_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_transfer_akcipher_request_to_engine\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_transfer_akcipher_request_to_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_transfer_hash_request_to_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_transfer_hash_request_to_engine\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_transfer_hash_request_to_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_transfer_kpp_request_to_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_transfer_kpp_request_to_engine\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_transfer_kpp_request_to_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_transfer_skcipher_request_to_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_transfer_skcipher_request_to_engine\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_transfer_skcipher_request_to_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_finalize_aead_request:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_finalize_aead_request\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_finalize_aead_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_finalize_akcipher_request:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_finalize_akcipher_request\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_finalize_akcipher_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_finalize_hash_request:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_finalize_hash_request\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_finalize_hash_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_finalize_kpp_request:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_finalize_kpp_request\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_finalize_kpp_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_finalize_skcipher_request:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_finalize_skcipher_request\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_finalize_skcipher_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_engine_start:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_engine_start\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_engine_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_engine_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_engine_stop\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_engine_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_engine_alloc_init_and_set:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_engine_alloc_init_and_set\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_engine_alloc_init_and_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_engine_alloc_init:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_engine_alloc_init\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_engine_alloc_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_engine_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_engine_exit\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_engine_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.crypto_engine = type { [30 x i8], i8, i8, i8, i8, %struct.list_head, %struct.spinlock, %struct.crypto_queue, ptr, i8, ptr, ptr, ptr, ptr, %struct.kthread_work, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }

@__kstrtab_crypto_transfer_aead_request_to_engine = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_transfer_aead_request_to_engine = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_transfer_aead_request_to_engine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_transfer_aead_request_to_engine to i32), ptr @__kstrtab_crypto_transfer_aead_request_to_engine, ptr @__kstrtabns_crypto_transfer_aead_request_to_engine }, section "___ksymtab_gpl+crypto_transfer_aead_request_to_engine", align 4
@__kstrtab_crypto_transfer_akcipher_request_to_engine = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_transfer_akcipher_request_to_engine = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_transfer_akcipher_request_to_engine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_transfer_akcipher_request_to_engine to i32), ptr @__kstrtab_crypto_transfer_akcipher_request_to_engine, ptr @__kstrtabns_crypto_transfer_akcipher_request_to_engine }, section "___ksymtab_gpl+crypto_transfer_akcipher_request_to_engine", align 4
@__kstrtab_crypto_transfer_hash_request_to_engine = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_transfer_hash_request_to_engine = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_transfer_hash_request_to_engine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_transfer_hash_request_to_engine to i32), ptr @__kstrtab_crypto_transfer_hash_request_to_engine, ptr @__kstrtabns_crypto_transfer_hash_request_to_engine }, section "___ksymtab_gpl+crypto_transfer_hash_request_to_engine", align 4
@__kstrtab_crypto_transfer_kpp_request_to_engine = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_transfer_kpp_request_to_engine = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_transfer_kpp_request_to_engine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_transfer_kpp_request_to_engine to i32), ptr @__kstrtab_crypto_transfer_kpp_request_to_engine, ptr @__kstrtabns_crypto_transfer_kpp_request_to_engine }, section "___ksymtab_gpl+crypto_transfer_kpp_request_to_engine", align 4
@__kstrtab_crypto_transfer_skcipher_request_to_engine = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_transfer_skcipher_request_to_engine = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_transfer_skcipher_request_to_engine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_transfer_skcipher_request_to_engine to i32), ptr @__kstrtab_crypto_transfer_skcipher_request_to_engine, ptr @__kstrtabns_crypto_transfer_skcipher_request_to_engine }, section "___ksymtab_gpl+crypto_transfer_skcipher_request_to_engine", align 4
@__kstrtab_crypto_finalize_aead_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_finalize_aead_request = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_finalize_aead_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_finalize_aead_request to i32), ptr @__kstrtab_crypto_finalize_aead_request, ptr @__kstrtabns_crypto_finalize_aead_request }, section "___ksymtab_gpl+crypto_finalize_aead_request", align 4
@__kstrtab_crypto_finalize_akcipher_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_finalize_akcipher_request = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_finalize_akcipher_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_finalize_akcipher_request to i32), ptr @__kstrtab_crypto_finalize_akcipher_request, ptr @__kstrtabns_crypto_finalize_akcipher_request }, section "___ksymtab_gpl+crypto_finalize_akcipher_request", align 4
@__kstrtab_crypto_finalize_hash_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_finalize_hash_request = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_finalize_hash_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_finalize_hash_request to i32), ptr @__kstrtab_crypto_finalize_hash_request, ptr @__kstrtabns_crypto_finalize_hash_request }, section "___ksymtab_gpl+crypto_finalize_hash_request", align 4
@__kstrtab_crypto_finalize_kpp_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_finalize_kpp_request = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_finalize_kpp_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_finalize_kpp_request to i32), ptr @__kstrtab_crypto_finalize_kpp_request, ptr @__kstrtabns_crypto_finalize_kpp_request }, section "___ksymtab_gpl+crypto_finalize_kpp_request", align 4
@__kstrtab_crypto_finalize_skcipher_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_finalize_skcipher_request = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_finalize_skcipher_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_finalize_skcipher_request to i32), ptr @__kstrtab_crypto_finalize_skcipher_request, ptr @__kstrtabns_crypto_finalize_skcipher_request }, section "___ksymtab_gpl+crypto_finalize_skcipher_request", align 4
@__kstrtab_crypto_engine_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_engine_start = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_engine_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_engine_start to i32), ptr @__kstrtab_crypto_engine_start, ptr @__kstrtabns_crypto_engine_start }, section "___ksymtab_gpl+crypto_engine_start", align 4
@.str = private unnamed_addr constant [23 x i8] c"could not stop engine\0A\00", align 1
@__kstrtab_crypto_engine_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_engine_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_engine_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_engine_stop to i32), ptr @__kstrtab_crypto_engine_stop, ptr @__kstrtabns_crypto_engine_stop }, section "___ksymtab_gpl+crypto_engine_stop", align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s-engine\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"failed to create crypto request pump task\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"will run requests pump with realtime priority\0A\00", align 1
@__kstrtab_crypto_engine_alloc_init_and_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_engine_alloc_init_and_set = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_engine_alloc_init_and_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_engine_alloc_init_and_set to i32), ptr @__kstrtab_crypto_engine_alloc_init_and_set, ptr @__kstrtabns_crypto_engine_alloc_init_and_set }, section "___ksymtab_gpl+crypto_engine_alloc_init_and_set", align 4
@__kstrtab_crypto_engine_alloc_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_engine_alloc_init = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_engine_alloc_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_engine_alloc_init to i32), ptr @__kstrtab_crypto_engine_alloc_init, ptr @__kstrtabns_crypto_engine_alloc_init }, section "___ksymtab_gpl+crypto_engine_alloc_init", align 4
@__kstrtab_crypto_engine_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_engine_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_engine_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_engine_exit to i32), ptr @__kstrtab_crypto_engine_exit, ptr @__kstrtabns_crypto_engine_exit }, section "___ksymtab_gpl+crypto_engine_exit", align 4
@__UNIQUE_ID_license166 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description167 = internal constant [45 x i8] c"description=Crypto hardware engine framework\00", section ".modinfo", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to unprepare request\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"failed to unprepare crypt hardware\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to prepare crypt hardware\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to prepare request: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"failed to do request\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Failed to do one request from queue: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"failed to do batch requests: %d\0A\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_description167, ptr @__UNIQUE_ID_license166, ptr @__ksymtab_crypto_engine_alloc_init, ptr @__ksymtab_crypto_engine_alloc_init_and_set, ptr @__ksymtab_crypto_engine_exit, ptr @__ksymtab_crypto_engine_start, ptr @__ksymtab_crypto_engine_stop, ptr @__ksymtab_crypto_finalize_aead_request, ptr @__ksymtab_crypto_finalize_akcipher_request, ptr @__ksymtab_crypto_finalize_hash_request, ptr @__ksymtab_crypto_finalize_kpp_request, ptr @__ksymtab_crypto_finalize_skcipher_request, ptr @__ksymtab_crypto_transfer_aead_request_to_engine, ptr @__ksymtab_crypto_transfer_akcipher_request_to_engine, ptr @__ksymtab_crypto_transfer_hash_request_to_engine, ptr @__ksymtab_crypto_transfer_kpp_request_to_engine, ptr @__ksymtab_crypto_transfer_skcipher_request_to_engine], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_transfer_aead_request_to_engine(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 6
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #4
  %5 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 7
  %10 = tail call i32 @crypto_enqueue_request(ptr noundef %9, ptr noundef %1) #4
  %11 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 14
  %18 = tail call zeroext i1 @kthread_queue_work(ptr noundef %16, ptr noundef %17) #4
  br label %19

19:                                               ; preds = %14, %8, %2
  %20 = phi i32 [ -108, %2 ], [ %10, %14 ], [ %10, %8 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #4
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_transfer_akcipher_request_to_engine(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 6
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #4
  %5 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 7
  %10 = tail call i32 @crypto_enqueue_request(ptr noundef %9, ptr noundef %1) #4
  %11 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 14
  %18 = tail call zeroext i1 @kthread_queue_work(ptr noundef %16, ptr noundef %17) #4
  br label %19

19:                                               ; preds = %14, %8, %2
  %20 = phi i32 [ -108, %2 ], [ %10, %14 ], [ %10, %8 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #4
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_transfer_hash_request_to_engine(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 6
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #4
  %5 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 7
  %10 = tail call i32 @crypto_enqueue_request(ptr noundef %9, ptr noundef %1) #4
  %11 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 14
  %18 = tail call zeroext i1 @kthread_queue_work(ptr noundef %16, ptr noundef %17) #4
  br label %19

19:                                               ; preds = %14, %8, %2
  %20 = phi i32 [ -108, %2 ], [ %10, %14 ], [ %10, %8 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #4
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_transfer_kpp_request_to_engine(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 6
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #4
  %5 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 7
  %10 = tail call i32 @crypto_enqueue_request(ptr noundef %9, ptr noundef %1) #4
  %11 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 14
  %18 = tail call zeroext i1 @kthread_queue_work(ptr noundef %16, ptr noundef %17) #4
  br label %19

19:                                               ; preds = %14, %8, %2
  %20 = phi i32 [ -108, %2 ], [ %10, %14 ], [ %10, %8 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #4
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 6
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #4
  %5 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4
  %10 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 7
  %11 = tail call i32 @crypto_enqueue_request(ptr noundef %10, ptr noundef %9) #4
  %12 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 2
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 14
  %19 = tail call zeroext i1 @kthread_queue_work(ptr noundef %17, ptr noundef %18) #4
  br label %20

20:                                               ; preds = %15, %8, %2
  %21 = phi i32 [ -108, %2 ], [ %11, %15 ], [ %11, %8 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #4
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_finalize_aead_request(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call fastcc void @crypto_finalize_request(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @crypto_finalize_request(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 6
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #4
  %10 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store ptr null, ptr %10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #4
  br label %17

14:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #4
  %15 = load i8, ptr %4, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %14, %13, %3
  %18 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.crypto_tfm, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.crypto_tfm, ptr %19, i32 1, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef %0, ptr noundef %1) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.5) #5
  br label %33

33:                                               ; preds = %30, %27, %23, %17, %14
  %34 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  tail call void %35(ptr noundef %1, i32 noundef %2) #4
  %36 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 13
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 14
  %39 = tail call zeroext i1 @kthread_queue_work(ptr noundef %37, ptr noundef %38) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_finalize_akcipher_request(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call fastcc void @crypto_finalize_request(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_finalize_hash_request(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call fastcc void @crypto_finalize_request(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_finalize_kpp_request(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call fastcc void @crypto_finalize_request(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_finalize_skcipher_request(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %1, i32 0, i32 4
  tail call fastcc void @crypto_finalize_request(ptr noundef %0, ptr noundef %4, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_engine_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 6
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #4
  %4 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 3
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 2
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #4
  br label %17

12:                                               ; preds = %7
  store i8 1, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #4
  %13 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 13
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 14
  %16 = tail call zeroext i1 @kthread_queue_work(ptr noundef %14, ptr noundef %15) #4
  br label %17

17:                                               ; preds = %12, %11
  %18 = phi i32 [ -16, %11 ], [ 0, %12 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_engine_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 6
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #4
  %4 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 7, i32 2
  %5 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 2
  br label %6

6:                                                ; preds = %18, %1
  %7 = phi i32 [ 500, %1 ], [ %19, %18 ]
  %8 = phi i32 [ %3, %1 ], [ %20, %18 ]
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load i8, ptr %5, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  %14 = icmp eq i32 %7, 0
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %21, label %18

16:                                               ; preds = %6
  %17 = icmp eq i32 %7, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16, %11
  %19 = add i32 %7, -1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %8) #4
  tail call void @msleep(i32 noundef 20) #4
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #4
  br label %6

21:                                               ; preds = %11
  br i1 %13, label %22, label %24

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 3
  store i8 0, ptr %23, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %8) #4
  br label %27

24:                                               ; preds = %21, %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %8) #4
  %25 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str) #5
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ -16, %24 ], [ 0, %22 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_engine_alloc_init_and_set(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = zext i1 %1 to i8
  %7 = zext i1 %3 to i8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %47, label %9

9:                                                ; preds = %5
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %0, i32 noundef 120, i32 noundef 3520) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %47, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.crypto_engine, ptr %10, i32 0, i32 8
  store ptr %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.crypto_engine, ptr %10, i32 0, i32 9
  store i8 %7, ptr %14, align 4
  %15 = getelementptr inbounds %struct.crypto_engine, ptr %10, i32 0, i32 3
  store i8 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.crypto_engine, ptr %10, i32 0, i32 2
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds %struct.crypto_engine, ptr %10, i32 0, i32 1
  store i8 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.crypto_engine, ptr %10, i32 0, i32 4
  store i8 %6, ptr %18, align 1
  %19 = getelementptr inbounds %struct.crypto_engine, ptr %10, i32 0, i32 15
  store ptr %0, ptr %19, align 4
  %20 = select i1 %1, ptr %2, ptr null
  %21 = getelementptr inbounds %struct.crypto_engine, ptr %10, i32 0, i32 12
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  %26 = load ptr, ptr %0, align 4
  br label %27

27:                                               ; preds = %25, %12
  %28 = phi ptr [ %26, %25 ], [ %23, %12 ]
  %29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %10, i32 noundef 30, ptr noundef nonnull @.str.1, ptr noundef %28)
  %30 = getelementptr inbounds %struct.crypto_engine, ptr %10, i32 0, i32 7
  tail call void @crypto_init_queue(ptr noundef %30, i32 noundef %4) #4
  %31 = getelementptr inbounds %struct.crypto_engine, ptr %10, i32 0, i32 6
  store i32 0, ptr %31, align 4
  %32 = tail call ptr (i32, ptr, ...) @kthread_create_worker(i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #4
  %33 = getelementptr inbounds %struct.crypto_engine, ptr %10, i32 0, i32 13
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #5
  br label %47

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.crypto_engine, ptr %10, i32 0, i32 14
  %38 = getelementptr inbounds %struct.crypto_engine, ptr %10, i32 0, i32 14, i32 2
  store i64 0, ptr %38, align 4
  store volatile ptr %37, ptr %37, align 4
  %39 = getelementptr inbounds %struct.crypto_engine, ptr %10, i32 0, i32 14, i32 0, i32 1
  store ptr %37, ptr %39, align 4
  %40 = getelementptr inbounds %struct.crypto_engine, ptr %10, i32 0, i32 14, i32 1
  store ptr @crypto_pump_work, ptr %40, align 4
  %41 = load i8, ptr %14, align 4, !range !8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #5
  %44 = load ptr, ptr %33, align 4
  %45 = getelementptr inbounds %struct.kthread_worker, ptr %44, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  tail call void @sched_set_fifo(ptr noundef %46) #4
  br label %47

47:                                               ; preds = %43, %36, %35, %9, %5
  %48 = phi ptr [ null, %35 ], [ null, %5 ], [ null, %9 ], [ %10, %43 ], [ %10, %36 ]
  ret ptr %48
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_init_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_worker(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_pump_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -92
  %3 = getelementptr i8, ptr %0, i32 -48
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #4
  %5 = getelementptr i8, ptr %0, i32 -59
  %6 = load i8, ptr %5, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %151

12:                                               ; preds = %8, %1
  %13 = getelementptr i8, ptr %0, i32 -62
  %14 = load i8, ptr %13, align 2, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 -4
  %18 = load ptr, ptr %17, align 4
  %19 = tail call zeroext i1 @kthread_queue_work(ptr noundef %18, ptr noundef %0) #4
  br label %151

20:                                               ; preds = %12
  %21 = getelementptr i8, ptr %0, i32 -44
  %22 = getelementptr i8, ptr %0, i32 -32
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %0, i32 -60
  %27 = load i8, ptr %26, align 4, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %0, i32 -36
  %31 = load ptr, ptr %30, align 4
  %32 = tail call ptr @crypto_dequeue_request(ptr noundef %21) #4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %151, label %34

34:                                               ; preds = %29
  %35 = icmp eq ptr %31, %21
  %36 = select i1 %35, ptr null, ptr %31
  %37 = getelementptr i8, ptr %0, i32 24
  %38 = getelementptr i8, ptr %0, i32 -61
  %39 = getelementptr i8, ptr %0, i32 -16
  %40 = getelementptr i8, ptr %0, i32 -24
  br label %57

41:                                               ; preds = %25, %20
  %42 = getelementptr i8, ptr %0, i32 -61
  %43 = load i8, ptr %42, align 1, !range !8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %151, label %45

45:                                               ; preds = %41
  store i8 0, ptr %42, align 1
  store i8 1, ptr %13, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #4
  %46 = getelementptr i8, ptr %0, i32 -12
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = tail call i32 %47(ptr noundef %2) #4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = getelementptr i8, ptr %0, i32 -24
  %54 = load ptr, ptr %53, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.6) #5
  br label %55

55:                                               ; preds = %52, %49, %45
  %56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #4
  store i8 0, ptr %13, align 2
  br label %151

57:                                               ; preds = %144, %34
  %58 = phi ptr [ %32, %34 ], [ %149, %144 ]
  %59 = phi ptr [ %36, %34 ], [ %148, %144 ]
  %60 = phi i32 [ %4, %34 ], [ %145, %144 ]
  %61 = phi i1 [ false, %34 ], [ %141, %144 ]
  %62 = load i8, ptr %5, align 1, !range !8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store ptr %58, ptr %37, align 4
  br label %65

65:                                               ; preds = %64, %57
  %66 = icmp eq ptr %59, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.crypto_async_request, ptr %59, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  tail call void %69(ptr noundef nonnull %59, i32 noundef -115) #4
  br label %70

70:                                               ; preds = %67, %65
  %71 = load i8, ptr %38, align 1, !range !8
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %60) #4
  br label %83

74:                                               ; preds = %70
  store i8 1, ptr %38, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %60) #4
  br i1 %61, label %83, label %75

75:                                               ; preds = %74
  %76 = load ptr, ptr %39, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = tail call i32 %76(ptr noundef %2) #4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.7) #5
  br label %135

83:                                               ; preds = %78, %75, %74, %73
  %84 = phi i1 [ true, %73 ], [ false, %78 ], [ false, %75 ], [ true, %74 ]
  %85 = getelementptr inbounds %struct.crypto_async_request, ptr %58, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.crypto_tfm, ptr %86, i32 0, i32 5
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %83
  %91 = tail call i32 %88(ptr noundef %2, ptr noundef nonnull %58) #4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.8, i32 noundef %91) #5
  br label %135

95:                                               ; preds = %90, %83
  %96 = getelementptr inbounds %struct.crypto_tfm, ptr %86, i32 1, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.9) #5
  br label %125

101:                                              ; preds = %95
  %102 = tail call i32 %97(ptr noundef %2, ptr noundef nonnull %58) #4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %140

104:                                              ; preds = %101
  %105 = load i8, ptr %5, align 1, !range !8
  %106 = icmp eq i8 %105, 0
  %107 = icmp ne i32 %102, -28
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.10, i32 noundef %102) #5
  br label %125

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.crypto_tfm, ptr %86, i32 1, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %111
  %116 = tail call i32 %113(ptr noundef %2, ptr noundef nonnull %58) #4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.5) #5
  br label %120

120:                                              ; preds = %118, %115, %111
  %121 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #4
  tail call void @crypto_enqueue_request_head(ptr noundef %21, ptr noundef nonnull %58) #4
  %122 = getelementptr i8, ptr %0, i32 -4
  %123 = load ptr, ptr %122, align 4
  %124 = tail call zeroext i1 @kthread_queue_work(ptr noundef %123, ptr noundef %0) #4
  br label %151

125:                                              ; preds = %109, %99
  %126 = phi i32 [ %102, %109 ], [ -22, %99 ]
  %127 = getelementptr inbounds %struct.crypto_tfm, ptr %86, i32 1, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = tail call i32 %128(ptr noundef %2, ptr noundef nonnull %58) #4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.5) #5
  br label %135

135:                                              ; preds = %133, %130, %125, %93, %81
  %136 = phi i1 [ %84, %93 ], [ %84, %133 ], [ %84, %130 ], [ %84, %125 ], [ false, %81 ]
  %137 = phi i32 [ %91, %93 ], [ %131, %133 ], [ 0, %130 ], [ %126, %125 ], [ %79, %81 ]
  %138 = getelementptr inbounds %struct.crypto_async_request, ptr %58, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  tail call void %139(ptr noundef nonnull %58, i32 noundef %137) #4
  br label %140

140:                                              ; preds = %135, %101
  %141 = phi i1 [ %84, %101 ], [ %136, %135 ]
  %142 = load i8, ptr %5, align 1, !range !8
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %162, label %144

144:                                              ; preds = %140
  %145 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #4
  %146 = load ptr, ptr %30, align 4
  %147 = icmp eq ptr %146, %21
  %148 = select i1 %147, ptr null, ptr %146
  %149 = tail call ptr @crypto_dequeue_request(ptr noundef %21) #4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %57

151:                                              ; preds = %144, %120, %55, %41, %29, %16, %8
  %152 = phi i32 [ %4, %16 ], [ %121, %120 ], [ %56, %55 ], [ %4, %41 ], [ %4, %8 ], [ %4, %29 ], [ %145, %144 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %152) #4
  %153 = getelementptr i8, ptr %0, i32 -8
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %162, label %156

156:                                              ; preds = %151
  %157 = tail call i32 %154(ptr noundef %2) #4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = getelementptr i8, ptr %0, i32 -24
  %161 = load ptr, ptr %160, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.11, i32 noundef %157) #5
  br label %162

162:                                              ; preds = %159, %156, %151, %140
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_engine_alloc_init(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = tail call ptr @crypto_engine_alloc_init_and_set(ptr noundef %0, i1 noundef zeroext false, ptr noundef null, i1 noundef zeroext %1, i32 noundef 10)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_engine_exit(ptr noundef %0) #0 {
  %2 = tail call i32 @crypto_engine_stop(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.crypto_engine, ptr %0, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  tail call void @kthread_destroy_worker(ptr noundef %6) #4
  br label %7

7:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_destroy_worker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_enqueue_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_dequeue_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_enqueue_request_head(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
