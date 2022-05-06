; ModuleID = '/llk/IR/crypto/asymmetric_keys/asymmetric_type.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/asymmetric_type.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_being_used_for:\09\09\09\09\09"
module asm "\09.asciz \09\22key_being_used_for\22\09\09\09\09\09"
module asm "__kstrtabns_key_being_used_for:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_asymmetric_key:\09\09\09\09\09"
module asm "\09.asciz \09\22find_asymmetric_key\22\09\09\09\09\09"
module asm "__kstrtabns_find_asymmetric_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_asymmetric_key_generate_id:\09\09\09\09\09"
module asm "\09.asciz \09\22asymmetric_key_generate_id\22\09\09\09\09\09"
module asm "__kstrtabns_asymmetric_key_generate_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_asymmetric_key_id_same:\09\09\09\09\09"
module asm "\09.asciz \09\22asymmetric_key_id_same\22\09\09\09\09\09"
module asm "__kstrtabns_asymmetric_key_id_same:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_asymmetric_key_id_partial:\09\09\09\09\09"
module asm "\09.asciz \09\22asymmetric_key_id_partial\22\09\09\09\09\09"
module asm "__kstrtabns_asymmetric_key_id_partial:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_type_asymmetric:\09\09\09\09\09"
module asm "\09.asciz \09\22key_type_asymmetric\22\09\09\09\09\09"
module asm "__kstrtabns_key_type_asymmetric:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_asymmetric_key_parser:\09\09\09\09\09"
module asm "\09.asciz \09\22register_asymmetric_key_parser\22\09\09\09\09\09"
module asm "__kstrtabns_register_asymmetric_key_parser:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_asymmetric_key_parser:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_asymmetric_key_parser\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_asymmetric_key_parser:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.asymmetric_key_id = type { i16, [0 x i8] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, %struct.rw_semaphore, ptr, ptr, %union.anon.1, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.2, %union.anon.61, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.1 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.2 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.3, ptr, ptr, ptr }
%union.anon.3 = type { i32 }
%union.anon.61 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.asymmetric_key_subtype = type { ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%struct.asymmetric_key_parser = type { %struct.list_head, ptr, ptr, ptr }
%struct.key_match_data = type { ptr, ptr, ptr, i32 }
%struct.key_restriction = type { ptr, ptr, ptr }
%struct.public_key_signature = type { [3 x ptr], ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.kernel_pkey_params = type { ptr, ptr, ptr, ptr, i32, %union.anon.59, i8 }
%union.anon.59 = type { i32 }

@__UNIQUE_ID_file200 = internal constant [60 x i8] c"asymmetric_keys.file=crypto/asymmetric_keys/asymmetric_keys\00", section ".modinfo", align 1
@__UNIQUE_ID_license201 = internal constant [28 x i8] c"asymmetric_keys.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"mod sig\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"firmware sig\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"kexec PE sig\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"key sig\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"key self sig\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"unspec sig\00", align 1
@key_being_used_for = dso_local constant [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], align 4
@__kstrtab_key_being_used_for = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_being_used_for = external dso_local constant [0 x i8], align 1
@__ksymtab_key_being_used_for = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_being_used_for to i32), ptr @__kstrtab_key_being_used_for, ptr @__kstrtabns_key_being_used_for }, section "___ksymtab_gpl+key_being_used_for", align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"crypto/asymmetric_keys/asymmetric_type.c\00", align 1
@key_type_asymmetric = dso_local global %struct.key_type { ptr @.str.7, i32 0, i32 0, ptr null, ptr @asymmetric_key_preparse, ptr @asymmetric_key_free_preparse, ptr @generic_key_instantiate, ptr null, ptr @asymmetric_key_match_preparse, ptr @asymmetric_key_match_free, ptr null, ptr @asymmetric_key_destroy, ptr @asymmetric_key_describe, ptr null, ptr null, ptr @asymmetric_lookup_restriction, ptr @query_asymmetric_key, ptr @asymmetric_key_eds_op, ptr @asymmetric_key_verify_signature, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@__kstrtab_find_asymmetric_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_asymmetric_key = external dso_local constant [0 x i8], align 1
@__ksymtab_find_asymmetric_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_asymmetric_key to i32), ptr @__kstrtab_find_asymmetric_key, ptr @__kstrtabns_find_asymmetric_key }, section "___ksymtab_gpl+find_asymmetric_key", align 4
@__kstrtab_asymmetric_key_generate_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_asymmetric_key_generate_id = external dso_local constant [0 x i8], align 1
@__ksymtab_asymmetric_key_generate_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @asymmetric_key_generate_id to i32), ptr @__kstrtab_asymmetric_key_generate_id, ptr @__kstrtabns_asymmetric_key_generate_id }, section "___ksymtab_gpl+asymmetric_key_generate_id", align 4
@__kstrtab_asymmetric_key_id_same = external dso_local constant [0 x i8], align 1
@__kstrtabns_asymmetric_key_id_same = external dso_local constant [0 x i8], align 1
@__ksymtab_asymmetric_key_id_same = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @asymmetric_key_id_same to i32), ptr @__kstrtab_asymmetric_key_id_same, ptr @__kstrtabns_asymmetric_key_id_same }, section "___ksymtab_gpl+asymmetric_key_id_same", align 4
@__kstrtab_asymmetric_key_id_partial = external dso_local constant [0 x i8], align 1
@__kstrtabns_asymmetric_key_id_partial = external dso_local constant [0 x i8], align 1
@__ksymtab_asymmetric_key_id_partial = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @asymmetric_key_id_partial to i32), ptr @__kstrtab_asymmetric_key_id_partial, ptr @__kstrtabns_asymmetric_key_id_partial }, section "___ksymtab_gpl+asymmetric_key_id_partial", align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"asymmetric\00", align 1
@__kstrtab_key_type_asymmetric = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_type_asymmetric = external dso_local constant [0 x i8], align 1
@__ksymtab_key_type_asymmetric = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_type_asymmetric to i32), ptr @__kstrtab_key_type_asymmetric, ptr @__kstrtabns_key_type_asymmetric }, section "___ksymtab_gpl+key_type_asymmetric", align 4
@asymmetric_key_parsers_sem = internal global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @asymmetric_key_parsers_sem, i64 16), ptr getelementptr (i8, ptr @asymmetric_key_parsers_sem, i64 16) } }, align 4
@asymmetric_key_parsers = internal global %struct.list_head { ptr @asymmetric_key_parsers, ptr @asymmetric_key_parsers }, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"\013Asymmetric key parser '%s' already registered\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"\015Asymmetric key parser '%s' registered\0A\00", align 1
@__kstrtab_register_asymmetric_key_parser = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_asymmetric_key_parser = external dso_local constant [0 x i8], align 1
@__ksymtab_register_asymmetric_key_parser = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_asymmetric_key_parser to i32), ptr @__kstrtab_register_asymmetric_key_parser, ptr @__kstrtabns_register_asymmetric_key_parser }, section "___ksymtab_gpl+register_asymmetric_key_parser", align 4
@.str.10 = private unnamed_addr constant [43 x i8] c"\015Asymmetric key parser '%s' unregistered\0A\00", align 1
@__kstrtab_unregister_asymmetric_key_parser = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_asymmetric_key_parser = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_asymmetric_key_parser = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_asymmetric_key_parser to i32), ptr @__kstrtab_unregister_asymmetric_key_parser, ptr @__kstrtabns_unregister_asymmetric_key_parser }, section "___ksymtab_gpl+unregister_asymmetric_key_parser", align 4
@__initcall__kmod_asymmetric_keys__202_684_asymmetric_key_init6 = internal global ptr @asymmetric_key_init, section ".initcall6.init", align 4
@__exitcall_asymmetric_key_cleanup = internal global ptr @asymmetric_key_cleanup, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.11 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%*phN\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"builtin_trusted\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"builtin_and_secondary_trusted\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"key_or_keyring\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"chain\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_file200, ptr @__UNIQUE_ID_license201, ptr @__exitcall_asymmetric_key_cleanup, ptr @__initcall__kmod_asymmetric_keys__202_684_asymmetric_key_init6, ptr @__ksymtab_asymmetric_key_generate_id, ptr @__ksymtab_asymmetric_key_id_partial, ptr @__ksymtab_asymmetric_key_id_same, ptr @__ksymtab_find_asymmetric_key, ptr @__ksymtab_key_being_used_for, ptr @__ksymtab_key_type_asymmetric, ptr @__ksymtab_register_asymmetric_key_parser, ptr @__ksymtab_unregister_asymmetric_key_parser, ptr @asymmetric_key_cleanup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_asymmetric_key(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) #0 {
  %6 = icmp ne ptr %1, null
  %7 = icmp ne ptr %2, null
  %8 = or i1 %6, %7
  %9 = icmp ne ptr %3, null
  %10 = or i1 %8, %9
  br i1 %10, label %12, label %11, !prof !8

11:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 64, i32 noundef 9, ptr noundef null) #15
  br label %12

12:                                               ; preds = %11, %5
  %13 = select i1 %7, ptr %2, ptr %3
  %14 = select i1 %6, ptr %1, ptr %13
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = shl nuw nsw i32 %16, 1
  %18 = add nuw nsw i32 %17, 4
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %18, i32 noundef 3264) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %60, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.asymmetric_key_id, ptr %14, i32 0, i32 1
  %23 = getelementptr i8, ptr %19, i32 1
  %24 = select i1 %4, i8 105, i8 101
  %25 = select i1 %4, i8 100, i8 120
  %26 = select i1 %8, i8 %24, i8 100
  %27 = select i1 %8, i8 %25, i8 110
  store i8 %26, ptr %19, align 64
  store i8 %27, ptr %23, align 1
  %28 = getelementptr i8, ptr %19, i32 2
  %29 = getelementptr i8, ptr %19, i32 3
  store i8 58, ptr %28, align 2
  %30 = tail call ptr @bin2hex(ptr noundef %29, ptr noundef %22, i32 noundef %16) #15
  store i8 0, ptr %30, align 1
  %31 = ptrtoint ptr %0 to i32
  %32 = or i32 %31, 1
  %33 = inttoptr i32 %32 to ptr
  %34 = tail call ptr @keyring_search(ptr noundef nonnull %33, ptr noundef nonnull @key_type_asymmetric, ptr noundef nonnull %19, i1 noundef zeroext true) #15
  tail call void @kfree(ptr noundef nonnull %19) #15
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %36 = ptrtoint ptr %34 to i32
  br i1 %35, label %37, label %39

37:                                               ; preds = %21
  switch i32 %36, label %38 [
    i32 -13, label %60
    i32 -20, label %60
    i32 -11, label %60
  ]

38:                                               ; preds = %37
  br label %60

39:                                               ; preds = %21
  %40 = and i32 %36, -2
  %41 = inttoptr i32 %40 to ptr
  %42 = and i1 %6, %7
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = getelementptr %struct.key, ptr %41, i32 0, i32 16, i32 0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr [3 x ptr], ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %43
  %50 = load i16, ptr %2, align 2
  %51 = load i16, ptr %47, align 2
  %52 = icmp eq i16 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = zext i16 %50 to i32
  %55 = getelementptr inbounds %struct.asymmetric_key_id, ptr %2, i32 0, i32 1
  %56 = getelementptr inbounds %struct.asymmetric_key_id, ptr %47, i32 0, i32 1
  %57 = tail call i32 @bcmp(ptr %55, ptr %56, i32 %54) #15
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53, %49, %43
  tail call void @key_put(ptr noundef %41) #15
  br label %60

60:                                               ; preds = %59, %53, %39, %38, %37, %37, %37, %12
  %61 = phi ptr [ %34, %38 ], [ inttoptr (i32 -129 to ptr), %59 ], [ %41, %39 ], [ inttoptr (i32 -12 to ptr), %12 ], [ inttoptr (i32 -126 to ptr), %37 ], [ inttoptr (i32 -126 to ptr), %37 ], [ inttoptr (i32 -126 to ptr), %37 ], [ %41, %53 ]
  ret ptr %61
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bin2hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_search(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @asymmetric_key_id_same(ptr noundef readonly %0, ptr noundef readonly %1) #3 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2
  %8 = load i16, ptr %1, align 2
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = zext i16 %7 to i32
  %12 = getelementptr inbounds %struct.asymmetric_key_id, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.asymmetric_key_id, ptr %1, i32 0, i32 1
  %14 = tail call i32 @bcmp(ptr %12, ptr %13, i32 %11)
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %10, %6, %2
  %17 = phi i1 [ %15, %10 ], [ false, %2 ], [ false, %6 ]
  ret i1 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @asymmetric_key_generate_id(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = add i32 %3, %1
  %6 = add i32 %5, 2
  %7 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = trunc i32 %5 to i16
  store i16 %10, ptr %7, align 64
  %11 = getelementptr inbounds %struct.asymmetric_key_id, ptr %7, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %11, ptr align 1 %0, i32 %1, i1 false)
  %12 = getelementptr i8, ptr %11, i32 %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %12, ptr align 1 %2, i32 %3, i1 false)
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi ptr [ %7, %9 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %14
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @asymmetric_key_id_partial(ptr noundef readonly %0, ptr noundef readonly %1) #3 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2
  %8 = load i16, ptr %1, align 2
  %9 = icmp ult i16 %7, %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = zext i16 %8 to i32
  %12 = zext i16 %7 to i32
  %13 = getelementptr inbounds %struct.asymmetric_key_id, ptr %0, i32 0, i32 1
  %14 = sub nsw i32 %12, %11
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = getelementptr inbounds %struct.asymmetric_key_id, ptr %1, i32 0, i32 1
  %17 = tail call i32 @bcmp(ptr %15, ptr %16, i32 %11)
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %10, %6, %2
  %20 = phi i1 [ %18, %10 ], [ false, %2 ], [ false, %6 ]
  ret i1 %20
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__asymmetric_key_hex_to_key_id(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = trunc i32 %2 to i16
  store i16 %4, ptr %1, align 2
  %5 = getelementptr inbounds %struct.asymmetric_key_id, ptr %1, i32 0, i32 1
  %6 = tail call i32 @hex2bin(ptr noundef %5, ptr noundef %0, i32 noundef %2) #15
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @asymmetric_key_hex_to_key_id(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strlen(ptr noundef %0)
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = lshr i32 %5, 1
  %10 = add nuw i32 %9, 2
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = trunc i32 %9 to i16
  store i16 %14, ptr %11, align 64
  %15 = getelementptr inbounds %struct.asymmetric_key_id, ptr %11, i32 0, i32 1
  %16 = tail call i32 @hex2bin(ptr noundef %15, ptr noundef %0, i32 noundef %9) #15
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @kfree(ptr noundef nonnull %11) #15
  br label %19

19:                                               ; preds = %18, %13, %8, %4, %1
  %20 = phi ptr [ inttoptr (i32 -22 to ptr), %18 ], [ %11, %13 ], [ inttoptr (i32 -22 to ptr), %1 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %8 ]
  ret ptr %20
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @asymmetric_key_eds_op(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.key, ptr %4, i32 0, i32 15, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, @key_type_asymmetric
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr %struct.key, ptr %4, i32 0, i32 16, i32 0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.key, ptr %4, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.asymmetric_key_subtype, ptr %10, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 %18(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  br label %22

22:                                               ; preds = %20, %16, %12, %8, %3
  %23 = phi i32 [ %21, %20 ], [ -22, %3 ], [ -22, %12 ], [ -22, %8 ], [ -524, %16 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asymmetric_key_preparse(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  tail call void @down_read(ptr noundef nonnull @asymmetric_key_parsers_sem) #15
  br label %6

6:                                                ; preds = %10, %5
  %7 = phi ptr [ @asymmetric_key_parsers, %5 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @asymmetric_key_parsers
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.asymmetric_key_parser, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0) #15
  %14 = icmp eq i32 %13, -74
  br i1 %14, label %6, label %15

15:                                               ; preds = %10, %6
  %16 = phi i32 [ -74, %6 ], [ %13, %10 ]
  tail call void @up_read(ptr noundef nonnull @asymmetric_key_parsers_sem) #15
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi i32 [ %16, %15 ], [ -22, %1 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asymmetric_key_free_preparse(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr %struct.key_preparsed_payload, ptr %0, i32 0, i32 2, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.key_preparsed_payload, ptr %0, i32 0, i32 2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.asymmetric_key_subtype, ptr %3, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 8
  %12 = getelementptr %struct.key_preparsed_payload, ptr %0, i32 0, i32 2, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void %10(ptr noundef %11, ptr noundef %13) #15
  %14 = load ptr, ptr %3, align 4
  tail call void @module_put(ptr noundef %14) #15
  br label %15

15:                                               ; preds = %7, %1
  %16 = icmp eq ptr %5, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %18) #15
  %19 = getelementptr [3 x ptr], ptr %5, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #15
  %21 = getelementptr [3 x ptr], ptr %5, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #15
  tail call void @kfree(ptr noundef nonnull %5) #15
  br label %23

23:                                               ; preds = %17, %15
  %24 = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void @kfree(ptr noundef %25) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_key_instantiate(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asymmetric_key_match_preparse(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.key_match_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %60, label %5

5:                                                ; preds = %1
  %6 = load i8, ptr %3, align 1
  switch i8 %6, label %59 [
    i8 0, label %60
    i8 105, label %7
    i8 101, label %15
    i8 100, label %23
  ]

7:                                                ; preds = %5
  %8 = getelementptr i8, ptr %3, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 100
  br i1 %10, label %11, label %60

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %3, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 58
  br i1 %14, label %31, label %60

15:                                               ; preds = %5
  %16 = getelementptr i8, ptr %3, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 120
  br i1 %18, label %19, label %60

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %3, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 58
  br i1 %22, label %31, label %60

23:                                               ; preds = %5
  %24 = getelementptr i8, ptr %3, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 110
  br i1 %26, label %27, label %60

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %3, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 58
  br i1 %30, label %31, label %60

31:                                               ; preds = %27, %19, %11
  %32 = phi ptr [ @asymmetric_key_cmp_partial, %11 ], [ @asymmetric_key_cmp, %19 ], [ @asymmetric_key_cmp_name, %27 ]
  %33 = getelementptr i8, ptr %3, i32 3
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %31
  %37 = tail call i32 @strlen(ptr noundef %33) #15
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = lshr i32 %37, 1
  %42 = add nuw i32 %41, 2
  %43 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %42, i32 noundef 3264) #16
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %40
  %46 = trunc i32 %41 to i16
  store i16 %46, ptr %43, align 64
  %47 = getelementptr inbounds %struct.asymmetric_key_id, ptr %43, i32 0, i32 1
  %48 = tail call i32 @hex2bin(ptr noundef %47, ptr noundef %33, i32 noundef %41) #15
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  tail call void @kfree(ptr noundef nonnull %43) #15
  br label %53

51:                                               ; preds = %45
  %52 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %56

53:                                               ; preds = %51, %50, %40, %36, %31
  %54 = phi ptr [ %43, %51 ], [ inttoptr (i32 -12 to ptr), %40 ], [ inttoptr (i32 -22 to ptr), %36 ], [ inttoptr (i32 -22 to ptr), %31 ], [ inttoptr (i32 -22 to ptr), %50 ]
  %55 = ptrtoint ptr %54 to i32
  br label %60

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.key_match_data, ptr %0, i32 0, i32 2
  store ptr %43, ptr %57, align 4
  store ptr %32, ptr %0, align 4
  %58 = getelementptr inbounds %struct.key_match_data, ptr %0, i32 0, i32 3
  store i32 1, ptr %58, align 4
  br label %60

59:                                               ; preds = %5
  br label %60

60:                                               ; preds = %59, %56, %53, %27, %23, %19, %15, %11, %7, %5, %1
  %61 = phi i32 [ %55, %53 ], [ 0, %56 ], [ -22, %5 ], [ -22, %1 ], [ 0, %23 ], [ 0, %27 ], [ 0, %19 ], [ 0, %15 ], [ 0, %11 ], [ 0, %7 ], [ 0, %59 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asymmetric_key_match_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.key_match_data, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asymmetric_key_destroy(ptr nocapture noundef %0) #0 {
  %2 = getelementptr %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  %5 = getelementptr %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %3, null
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.asymmetric_key_subtype, ptr %3, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %7, ptr noundef %9) #15
  %14 = load ptr, ptr %3, align 4
  tail call void @module_put(ptr noundef %14) #15
  br label %15

15:                                               ; preds = %11, %1
  %16 = icmp eq ptr %6, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %18) #15
  %19 = getelementptr [3 x ptr], ptr %6, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #15
  %21 = getelementptr [3 x ptr], ptr %6, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #15
  tail call void @kfree(ptr noundef nonnull %6) #15
  br label %23

23:                                               ; preds = %17, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asymmetric_key_describe(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  tail call void @seq_puts(ptr noundef %1, ptr noundef %8) #15
  %9 = icmp eq ptr %4, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.11) #15
  %11 = getelementptr inbounds %struct.asymmetric_key_subtype, ptr %4, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %0, ptr noundef %1) #15
  %13 = icmp eq ptr %6, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %10
  %15 = getelementptr [3 x ptr], ptr %6, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  tail call void @seq_putc(ptr noundef %1, i8 noundef zeroext 32) #15
  %19 = load i16, ptr %16, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.asymmetric_key_id, ptr %16, i32 0, i32 1
  %22 = icmp ugt i16 %19, 4
  %23 = add nsw i32 %20, -4
  %24 = select i1 %22, i32 %23, i32 0
  %25 = getelementptr i8, ptr %21, i32 %24
  %26 = tail call i16 @llvm.umin.i16(i16 %19, i16 4)
  %27 = zext i16 %26 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %27, ptr noundef %25) #15
  br label %28

28:                                               ; preds = %18, %14, %10
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.13) #15
  tail call void @seq_putc(ptr noundef %1, i8 noundef zeroext 93) #15
  br label %29

29:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @asymmetric_lookup_restriction(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(16) @.str.14, ptr noundef %0)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 12) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %66, label %10

10:                                               ; preds = %6
  store ptr @restrict_link_by_builtin_trusted, ptr %8, align 8
  %11 = getelementptr inbounds %struct.key_restriction, ptr %8, i32 0, i32 1
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.key_restriction, ptr %8, i32 0, i32 2
  store ptr @key_type_asymmetric, ptr %12, align 8
  br label %66

13:                                               ; preds = %1
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(30) @.str.15, ptr noundef %0)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 12) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %66, label %20

20:                                               ; preds = %16
  store ptr @restrict_link_by_builtin_trusted, ptr %18, align 8
  %21 = getelementptr inbounds %struct.key_restriction, ptr %18, i32 0, i32 1
  store ptr null, ptr %21, align 4
  %22 = getelementptr inbounds %struct.key_restriction, ptr %18, i32 0, i32 2
  store ptr @key_type_asymmetric, ptr %22, align 8
  br label %66

23:                                               ; preds = %13
  %24 = tail call ptr @kstrndup(ptr noundef %0, i32 noundef 4096, i32 noundef 3264) #15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %66, label %26

26:                                               ; preds = %23
  store ptr %24, ptr %2, align 4
  %27 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.16) #15
  %28 = call i32 @strcmp(ptr noundef %27, ptr noundef nonnull dereferenceable(15) @.str.17)
  %29 = icmp eq i32 %28, 0
  %30 = load ptr, ptr %2, align 4
  %31 = icmp ne ptr %30, null
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %64

33:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !9
  %34 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.16) #15
  %35 = load ptr, ptr %2, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = call i32 @strcmp(ptr noundef nonnull %35, ptr noundef nonnull dereferenceable(6) @.str.18)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %37, %33
  %41 = phi ptr [ @restrict_link_by_key_or_keyring, %33 ], [ @restrict_link_by_key_or_keyring_chain, %37 ]
  %42 = call i32 @kstrtoint(ptr noundef %34, i32 noundef 0, ptr noundef nonnull %3) #15
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %3, align 4
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %46, i1 true, i1 %36
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = call ptr @key_lookup(i32 noundef %45) #15
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %62, label %51

51:                                               ; preds = %48, %44
  %52 = phi ptr [ %49, %48 ], [ null, %44 ]
  %53 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %54 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3520, i32 noundef 12) #17
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  store ptr %41, ptr %54, align 8
  %57 = getelementptr inbounds %struct.key_restriction, ptr %54, i32 0, i32 1
  store ptr %52, ptr %57, align 4
  %58 = getelementptr inbounds %struct.key_restriction, ptr %54, i32 0, i32 2
  store ptr @key_type_asymmetric, ptr %58, align 8
  %59 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %62

60:                                               ; preds = %56, %51
  %61 = phi ptr [ %54, %56 ], [ inttoptr (i32 -12 to ptr), %51 ]
  call void @key_put(ptr noundef %52) #15
  br label %62

62:                                               ; preds = %60, %56, %48, %40, %37
  %63 = phi ptr [ inttoptr (i32 -22 to ptr), %37 ], [ inttoptr (i32 -22 to ptr), %40 ], [ %61, %60 ], [ %54, %56 ], [ %49, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %64

64:                                               ; preds = %62, %26
  %65 = phi ptr [ %63, %62 ], [ inttoptr (i32 -22 to ptr), %26 ]
  call void @kfree(ptr noundef nonnull %24) #15
  br label %66

66:                                               ; preds = %64, %23, %20, %16, %10, %6
  %67 = phi ptr [ %65, %64 ], [ %8, %10 ], [ inttoptr (i32 -12 to ptr), %6 ], [ %18, %20 ], [ inttoptr (i32 -12 to ptr), %16 ], [ inttoptr (i32 -12 to ptr), %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret ptr %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @query_asymmetric_key(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asymmetric_key_verify_signature(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.public_key_signature, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.public_key_signature, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.public_key_signature, ptr %4, i32 0, i32 2
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.public_key_signature, ptr %4, i32 0, i32 3
  %8 = getelementptr inbounds %struct.kernel_pkey_params, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.public_key_signature, ptr %4, i32 0, i32 4
  %11 = getelementptr inbounds %struct.kernel_pkey_params, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.public_key_signature, ptr %4, i32 0, i32 5
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.public_key_signature, ptr %4, i32 0, i32 6
  %15 = getelementptr inbounds %struct.kernel_pkey_params, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  store ptr %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.public_key_signature, ptr %4, i32 0, i32 7
  %18 = getelementptr inbounds %struct.kernel_pkey_params, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  store ptr %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.public_key_signature, ptr %4, i32 0, i32 8
  store ptr null, ptr %20, align 4
  %21 = getelementptr inbounds %struct.public_key_signature, ptr %4, i32 0, i32 9
  store i32 0, ptr %21, align 4
  %22 = load ptr, ptr %0, align 4
  %23 = call i32 @verify_signature(ptr noundef %22, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #15
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_asymmetric_key_parser(ptr noundef %0) #0 {
  tail call void @down_write(ptr noundef nonnull @asymmetric_key_parsers_sem) #15
  %2 = getelementptr inbounds %struct.asymmetric_key_parser, ptr %0, i32 0, i32 2
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ @asymmetric_key_parsers, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @asymmetric_key_parsers
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.asymmetric_key_parser, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %2, align 4
  %11 = tail call i32 @strcmp(ptr noundef %9, ptr noundef %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %3

13:                                               ; preds = %7
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %10) #18
  br label %20

15:                                               ; preds = %3
  %16 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @asymmetric_key_parsers, i32 0, i32 1), align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @asymmetric_key_parsers, i32 0, i32 1), align 4
  store ptr @asymmetric_key_parsers, ptr %0, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %0, ptr %16, align 4
  %18 = load ptr, ptr %2, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %18) #18
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i32 [ -17, %13 ], [ 0, %15 ]
  tail call void @up_write(ptr noundef nonnull @asymmetric_key_parsers_sem) #15
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_asymmetric_key_parser(ptr nocapture noundef %0) #0 {
  tail call void @down_write(ptr noundef nonnull @asymmetric_key_parsers_sem) #15
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  tail call void @up_write(ptr noundef nonnull @asymmetric_key_parsers_sem) #15
  %6 = getelementptr inbounds %struct.asymmetric_key_parser, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %7) #18
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @asymmetric_key_cleanup() #8 section ".exit.text" {
  tail call void @unregister_key_type(ptr noundef nonnull @key_type_asymmetric) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_key_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @asymmetric_key_init() #8 section ".init.text" {
  %1 = tail call i32 @register_key_type(ptr noundef nonnull @key_type_asymmetric) #15
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @asymmetric_key_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.key_match_data, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne ptr %4, null
  %8 = icmp ne ptr %6, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = load i16, ptr %11, align 2
  %15 = load i16, ptr %6, align 2
  %16 = icmp eq i16 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = zext i16 %14 to i32
  %19 = getelementptr inbounds %struct.asymmetric_key_id, ptr %11, i32 0, i32 1
  %20 = getelementptr inbounds %struct.asymmetric_key_id, ptr %6, i32 0, i32 1
  %21 = tail call i32 @bcmp(ptr %19, ptr %20, i32 %18) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %17, %13, %10
  %24 = getelementptr [3 x ptr], ptr %4, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = load i16, ptr %25, align 2
  %29 = load i16, ptr %6, align 2
  %30 = icmp eq i16 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = zext i16 %28 to i32
  %33 = getelementptr inbounds %struct.asymmetric_key_id, ptr %25, i32 0, i32 1
  %34 = getelementptr inbounds %struct.asymmetric_key_id, ptr %6, i32 0, i32 1
  %35 = tail call i32 @bcmp(ptr %33, ptr %34, i32 %32) #15
  %36 = icmp eq i32 %35, 0
  br label %37

37:                                               ; preds = %31, %27, %23, %17, %2
  %38 = phi i1 [ false, %2 ], [ true, %17 ], [ %36, %31 ], [ false, %23 ], [ false, %27 ]
  ret i1 %38
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @asymmetric_key_cmp_partial(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.key_match_data, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne ptr %4, null
  %8 = icmp ne ptr %6, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %43

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %10
  %14 = load i16, ptr %11, align 2
  %15 = load i16, ptr %6, align 2
  %16 = icmp ult i16 %14, %15
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = zext i16 %15 to i32
  %19 = zext i16 %14 to i32
  %20 = getelementptr inbounds %struct.asymmetric_key_id, ptr %11, i32 0, i32 1
  %21 = sub nsw i32 %19, %18
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = getelementptr inbounds %struct.asymmetric_key_id, ptr %6, i32 0, i32 1
  %24 = tail call i32 @bcmp(ptr %22, ptr %23, i32 %18) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %17, %13, %10
  %27 = getelementptr [3 x ptr], ptr %4, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %26
  %31 = load i16, ptr %28, align 2
  %32 = load i16, ptr %6, align 2
  %33 = icmp ult i16 %31, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = zext i16 %32 to i32
  %36 = zext i16 %31 to i32
  %37 = getelementptr inbounds %struct.asymmetric_key_id, ptr %28, i32 0, i32 1
  %38 = sub nsw i32 %36, %35
  %39 = getelementptr i8, ptr %37, i32 %38
  %40 = getelementptr inbounds %struct.asymmetric_key_id, ptr %6, i32 0, i32 1
  %41 = tail call i32 @bcmp(ptr %39, ptr %40, i32 %35) #15
  %42 = icmp eq i32 %41, 0
  br label %43

43:                                               ; preds = %34, %30, %26, %17, %2
  %44 = phi i1 [ false, %2 ], [ true, %17 ], [ %42, %34 ], [ false, %26 ], [ false, %30 ]
  ret i1 %44
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @asymmetric_key_cmp_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr %struct.key, ptr %0, i32 0, i32 16, i32 0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.key_match_data, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr [3 x ptr], ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %8, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %24

14:                                               ; preds = %6
  %15 = load i16, ptr %10, align 2
  %16 = load i16, ptr %8, align 2
  %17 = icmp eq i16 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = zext i16 %15 to i32
  %20 = getelementptr inbounds %struct.asymmetric_key_id, ptr %10, i32 0, i32 1
  %21 = getelementptr inbounds %struct.asymmetric_key_id, ptr %8, i32 0, i32 1
  %22 = tail call i32 @bcmp(ptr %20, ptr %21, i32 %19) #15
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %18, %14, %6, %2
  %25 = phi i1 [ false, %2 ], [ %23, %18 ], [ false, %6 ], [ false, %14 ]
  ret i1 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @restrict_link_by_builtin_trusted(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @restrict_link_by_key_or_keyring(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @restrict_link_by_key_or_keyring_chain(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_lookup(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verify_signature(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_key_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #14

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"auto-init"}
