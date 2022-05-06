; ModuleID = '/llk/IR/crypto/asymmetric_keys/public_key.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/public_key.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_public_key_free:\09\09\09\09\09"
module asm "\09.asciz \09\22public_key_free\22\09\09\09\09\09"
module asm "__kstrtabns_public_key_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_public_key_verify_signature:\09\09\09\09\09"
module asm "\09.asciz \09\22public_key_verify_signature\22\09\09\09\09\09"
module asm "__kstrtabns_public_key_verify_signature:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_public_key_subtype:\09\09\09\09\09"
module asm "\09.asciz \09\22public_key_subtype\22\09\09\09\09\09"
module asm "__kstrtabns_public_key_subtype:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.asymmetric_key_subtype = type { ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.public_key = type { ptr, i32, i32, ptr, i32, i8, ptr, ptr }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.public_key_signature = type { [3 x ptr], ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.page = type { i32, %union.anon.3, %union.anon.18, %struct.atomic_t }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.18 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.akcipher_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [24 x i8], [0 x ptr] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.28, %struct.rw_semaphore, ptr, ptr, %union.anon.29, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.30, %union.anon.35, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.28 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.29 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.30 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.31, ptr, ptr, ptr }
%union.anon.31 = type { i32 }
%union.anon.35 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.kernel_pkey_params = type { ptr, ptr, ptr, ptr, i32, %union.anon.33, i8 }
%union.anon.33 = type { i32 }
%struct.kernel_pkey_query = type { i32, i32, i16, i16, i16, i16 }

@__UNIQUE_ID_description220 = internal constant [65 x i8] c"public_key.description=In-software asymmetric public-key subtype\00", section ".modinfo", align 1
@__UNIQUE_ID_author221 = internal constant [32 x i8] c"public_key.author=Red Hat, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file222 = internal constant [50 x i8] c"public_key.file=crypto/asymmetric_keys/public_key\00", section ".modinfo", align 1
@__UNIQUE_ID_license223 = internal constant [23 x i8] c"public_key.license=GPL\00", section ".modinfo", align 1
@__kstrtab_public_key_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_public_key_free = external dso_local constant [0 x i8], align 1
@__ksymtab_public_key_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @public_key_free to i32), ptr @__kstrtab_public_key_free, ptr @__kstrtabns_public_key_free }, section "___ksymtab_gpl+public_key_free", align 4
@.str = private unnamed_addr constant [4 x i8] c"sm2\00", align 1
@public_key_verify_signature.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"crypto/asymmetric_keys/public_key.c\00", align 1
@__kstrtab_public_key_verify_signature = external dso_local constant [0 x i8], align 1
@__kstrtabns_public_key_verify_signature = external dso_local constant [0 x i8], align 1
@__ksymtab_public_key_verify_signature = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @public_key_verify_signature to i32), ptr @__kstrtab_public_key_verify_signature, ptr @__kstrtabns_public_key_verify_signature }, section "___ksymtab_gpl+public_key_verify_signature", align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"public_key\00", align 1
@public_key_subtype = dso_local global %struct.asymmetric_key_subtype { ptr null, ptr @.str.2, i16 10, ptr @public_key_describe, ptr @public_key_destroy, ptr @software_key_query, ptr @software_key_eds_op, ptr @public_key_verify_signature_2 }, align 4
@__kstrtab_public_key_subtype = external dso_local constant [0 x i8], align 1
@__kstrtabns_public_key_subtype = external dso_local constant [0 x i8], align 1
@__ksymtab_public_key_subtype = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @public_key_subtype to i32), ptr @__kstrtab_public_key_subtype, ptr @__kstrtabns_public_key_subtype }, section "___ksymtab_gpl+public_key_subtype", align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"pkcs1\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"pkcs1pad(%s)\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"pkcs1pad(%s,%s)\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"x962\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author221, ptr @__UNIQUE_ID_description220, ptr @__UNIQUE_ID_file222, ptr @__UNIQUE_ID_license223, ptr @__ksymtab_public_key_free, ptr @__ksymtab_public_key_subtype, ptr @__ksymtab_public_key_verify_signature], section "llvm.metadata"
@switch.table.software_key_eds_op = private unnamed_addr constant [3 x i32] [i32 -56, i32 -52, i32 -64], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @public_key_free(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.public_key, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %6) #10
  tail call void @kfree(ptr noundef nonnull %0) #10
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @public_key_verify_signature(ptr noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.crypto_wait, align 4
  %4 = alloca [2 x %struct.scatterlist], align 4
  %5 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %5, i8 0, i32 128, i1 false), !annotation !8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/asymmetric_keys/public_key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 324, 0\0A.popsection", ""() #10, !srcloc !10
  unreachable

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/asymmetric_keys/public_key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.public_key_signature, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/asymmetric_keys/public_key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 326, 0\0A.popsection", ""() #10, !srcloc !12
  unreachable

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.public_key_signature, ptr %1, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.public_key_signature, ptr %1, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = call fastcc i32 @software_key_determine_akcipher(ptr noundef %18, ptr noundef %20, ptr noundef nonnull %0, ptr noundef nonnull %5)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %148, label %23

23:                                               ; preds = %16
  %24 = call ptr @crypto_alloc_akcipher(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0) #10
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = ptrtoint ptr %24 to i32
  br label %148

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.crypto_tfm, ptr %24, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 -28
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 64
  %34 = call noalias align 64 ptr @__kmalloc(i32 noundef %33, i32 noundef 3264) #11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %139, label %36, !prof !9

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.crypto_async_request, ptr %34, i32 0, i32 3
  store ptr %24, ptr %37, align 16
  %38 = getelementptr inbounds %struct.public_key, ptr %0, i32 0, i32 1
  %39 = getelementptr inbounds %struct.public_key, ptr %0, i32 0, i32 4
  %40 = load i32, ptr %38, align 4
  %41 = add i32 %40, 8
  %42 = load i32, ptr %39, align 4
  %43 = add i32 %41, %42
  %44 = call noalias align 64 ptr @__kmalloc(i32 noundef %43, i32 noundef 3264) #11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %137, label %46

46:                                               ; preds = %36
  %47 = load i32, ptr %38, align 4
  %48 = load ptr, ptr %0, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %44, ptr align 1 %48, i32 %47, i1 false)
  %49 = getelementptr i8, ptr %44, i32 %47
  %50 = getelementptr inbounds %struct.public_key, ptr %0, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  store i32 %51, ptr %49, align 1
  %52 = getelementptr i8, ptr %49, i32 4
  %53 = load i32, ptr %39, align 4
  store i32 %53, ptr %52, align 1
  %54 = getelementptr i8, ptr %52, i32 4
  %55 = getelementptr inbounds %struct.public_key, ptr %0, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %54, ptr align 1 %56, i32 %53, i1 false)
  %57 = getelementptr inbounds %struct.public_key, ptr %0, i32 0, i32 5
  %58 = load i8, ptr %57, align 4, !range !13
  %59 = icmp eq i8 %58, 0
  %60 = load i32, ptr %38, align 4
  %61 = load ptr, ptr %29, align 4
  %62 = select i1 %59, i32 -48, i32 -44
  %63 = getelementptr i8, ptr %61, i32 %62
  %64 = load ptr, ptr %63, align 4
  %65 = call i32 %64(ptr noundef %24, ptr noundef nonnull %44, i32 noundef %60) #10
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %135

67:                                               ; preds = %46
  %68 = getelementptr inbounds %struct.public_key_signature, ptr %1, i32 0, i32 5
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = call i32 @strcmp(ptr noundef nonnull %69, ptr noundef nonnull dereferenceable(4) @.str)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.public_key_signature, ptr %1, i32 0, i32 9
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %135

78:                                               ; preds = %74, %71, %67
  call void @sg_init_table(ptr noundef nonnull %4, i32 noundef 2) #10
  %79 = load ptr, ptr %12, align 4
  %80 = getelementptr inbounds %struct.public_key_signature, ptr %1, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = load ptr, ptr @mem_map, align 4
  %83 = ptrtoint ptr %79 to i32
  %84 = add i32 %83, 1073741824
  %85 = lshr i32 %84, 12
  %86 = getelementptr %struct.page, ptr %82, i32 %85
  %87 = ptrtoint ptr %86 to i32
  %88 = and i32 %87, 3
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90, !prof !14

90:                                               ; preds = %78
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !15
  unreachable

91:                                               ; preds = %78
  %92 = and i32 %83, 4095
  %93 = load i32, ptr %4, align 4
  %94 = and i32 %93, 3
  %95 = or i32 %94, %87
  store i32 %95, ptr %4, align 4
  %96 = getelementptr inbounds %struct.scatterlist, ptr %4, i32 0, i32 1
  store i32 %92, ptr %96, align 4
  %97 = getelementptr inbounds %struct.scatterlist, ptr %4, i32 0, i32 2
  store i32 %81, ptr %97, align 4
  %98 = getelementptr inbounds %struct.public_key_signature, ptr %1, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = ptrtoint ptr %99 to i32
  %101 = add i32 %100, 1073741824
  %102 = lshr i32 %101, 12
  %103 = getelementptr %struct.page, ptr %82, i32 %102
  %104 = ptrtoint ptr %103 to i32
  %105 = and i32 %104, 3
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107, !prof !14

107:                                              ; preds = %91
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !15
  unreachable

108:                                              ; preds = %91
  %109 = getelementptr inbounds %struct.public_key_signature, ptr %1, i32 0, i32 4
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds [2 x %struct.scatterlist], ptr %4, i32 0, i32 1
  %112 = and i32 %100, 4095
  %113 = load i32, ptr %111, align 4
  %114 = and i32 %113, 3
  %115 = or i32 %114, %104
  store i32 %115, ptr %111, align 4
  %116 = getelementptr inbounds [2 x %struct.scatterlist], ptr %4, i32 0, i32 1, i32 1
  store i32 %112, ptr %116, align 4
  %117 = getelementptr inbounds [2 x %struct.scatterlist], ptr %4, i32 0, i32 1, i32 2
  store i32 %110, ptr %117, align 4
  %118 = getelementptr inbounds %struct.akcipher_request, ptr %34, i32 0, i32 1
  store ptr %4, ptr %118, align 8
  %119 = getelementptr inbounds %struct.akcipher_request, ptr %34, i32 0, i32 2
  store ptr null, ptr %119, align 4
  %120 = getelementptr inbounds %struct.akcipher_request, ptr %34, i32 0, i32 3
  store i32 %81, ptr %120, align 32
  %121 = getelementptr inbounds %struct.akcipher_request, ptr %34, i32 0, i32 4
  store i32 %110, ptr %121, align 4
  store i32 0, ptr %3, align 4
  %122 = getelementptr inbounds %struct.completion, ptr %3, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %122, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #10
  %123 = getelementptr inbounds %struct.crypto_async_request, ptr %34, i32 0, i32 1
  store ptr @crypto_req_done, ptr %123, align 8
  %124 = getelementptr inbounds %struct.crypto_async_request, ptr %34, i32 0, i32 2
  store ptr %3, ptr %124, align 4
  %125 = getelementptr inbounds %struct.crypto_async_request, ptr %34, i32 0, i32 4
  store i32 1536, ptr %125, align 4
  %126 = load ptr, ptr %37, align 16
  %127 = getelementptr inbounds %struct.crypto_tfm, ptr %126, i32 0, i32 3
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr i8, ptr %128, i32 -60
  %130 = load ptr, ptr %129, align 4
  %131 = call i32 %130(ptr noundef nonnull %34) #10
  switch i32 %131, label %135 [
    i32 -115, label %132
    i32 -16, label %132
  ]

132:                                              ; preds = %108, %108
  call void @wait_for_completion(ptr noundef nonnull %3) #10
  store i32 0, ptr %3, align 4
  %133 = getelementptr inbounds %struct.crypto_wait, ptr %3, i32 0, i32 1
  %134 = load i32, ptr %133, align 4
  br label %135

135:                                              ; preds = %132, %108, %74, %46
  %136 = phi i32 [ %65, %46 ], [ -524, %74 ], [ %131, %108 ], [ %134, %132 ]
  call void @kfree(ptr noundef nonnull %44) #10
  br label %137

137:                                              ; preds = %135, %36
  %138 = phi i32 [ %136, %135 ], [ -12, %36 ]
  call void @kfree_sensitive(ptr noundef nonnull %34) #10
  br label %139

139:                                              ; preds = %137, %28
  %140 = phi i32 [ %138, %137 ], [ -12, %28 ]
  call void @crypto_destroy_tfm(ptr noundef %24, ptr noundef %24) #10
  %141 = icmp sgt i32 %140, 0
  %142 = load i1, ptr @public_key_verify_signature.__already_done, align 1
  %143 = xor i1 %142, true
  %144 = select i1 %141, i1 %143, i1 false
  br i1 %144, label %145, label %146, !prof !9

145:                                              ; preds = %139
  store i1 true, ptr @public_key_verify_signature.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 386, i32 noundef 9, ptr noundef null) #10
  br label %146

146:                                              ; preds = %145, %139
  %147 = select i1 %141, i32 -22, i32 %140
  br label %148

148:                                              ; preds = %146, %26, %16
  %149 = phi i32 [ %27, %26 ], [ %147, %146 ], [ %21, %16 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #10
  ret i32 %149
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @software_key_determine_akcipher(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #4 {
  %5 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(6) @.str.3)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds %struct.public_key, ptr %2, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  br i1 %8, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %3, i32 noundef 128, ptr noundef nonnull @.str.4, ptr noundef %10)
  br label %15

13:                                               ; preds = %7
  %14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %3, i32 noundef 128, ptr noundef nonnull @.str.5, ptr noundef %10, ptr noundef nonnull %1)
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %14, %13 ], [ %12, %11 ]
  %17 = icmp sgt i32 %16, 127
  %18 = select i1 %17, i32 -22, i32 0
  br label %29

19:                                               ; preds = %4
  %20 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(4) @.str.6)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(5) @.str.7)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %19
  %26 = getelementptr inbounds %struct.public_key, ptr %2, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = tail call ptr @strcpy(ptr noundef %3, ptr noundef %27)
  br label %29

29:                                               ; preds = %25, %22, %15
  %30 = phi i32 [ %18, %15 ], [ 0, %25 ], [ -65, %22 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_akcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @public_key_describe(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.public_key, ptr %4, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.public_key, ptr %4, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef %8, ptr noundef %10) #10
  br label %11

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @public_key_destroy(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.public_key, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #10
  tail call void @kfree(ptr noundef nonnull %0) #10
  br label %8

8:                                                ; preds = %4, %2
  tail call void @public_key_signature_free(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @software_key_query(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [128 x i8], align 1
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.key, ptr %4, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %3, i8 0, i32 128, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.kernel_pkey_params, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.kernel_pkey_params, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = call fastcc i32 @software_key_determine_akcipher(ptr noundef %8, ptr noundef %10, ptr noundef %6, ptr noundef nonnull %3)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %71, label %13

13:                                               ; preds = %2
  %14 = call ptr @crypto_alloc_akcipher(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0) #10
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = ptrtoint ptr %14 to i32
  br label %71

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.public_key, ptr %6, i32 0, i32 1
  %20 = getelementptr inbounds %struct.public_key, ptr %6, i32 0, i32 4
  %21 = load i32, ptr %19, align 4
  %22 = add i32 %21, 8
  %23 = load i32, ptr %20, align 4
  %24 = add i32 %22, %23
  %25 = call noalias align 64 ptr @__kmalloc(i32 noundef %24, i32 noundef 3264) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %69, label %27

27:                                               ; preds = %18
  %28 = load i32, ptr %19, align 4
  %29 = load ptr, ptr %6, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %25, ptr align 1 %29, i32 %28, i1 false)
  %30 = load i32, ptr %19, align 4
  %31 = getelementptr i8, ptr %25, i32 %30
  %32 = getelementptr inbounds %struct.public_key, ptr %6, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %31, align 1
  %34 = getelementptr i8, ptr %31, i32 4
  %35 = load i32, ptr %20, align 4
  store i32 %35, ptr %34, align 1
  %36 = getelementptr i8, ptr %34, i32 4
  %37 = getelementptr inbounds %struct.public_key, ptr %6, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %20, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %36, ptr align 1 %38, i32 %39, i1 false)
  %40 = getelementptr inbounds %struct.public_key, ptr %6, i32 0, i32 5
  %41 = load i8, ptr %40, align 4, !range !13
  %42 = icmp eq i8 %41, 0
  %43 = load i32, ptr %19, align 4
  %44 = getelementptr inbounds %struct.crypto_tfm, ptr %14, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = select i1 %42, i32 -48, i32 -44
  %47 = getelementptr i8, ptr %45, i32 %46
  %48 = load ptr, ptr %47, align 4
  %49 = call i32 %48(ptr noundef %14, ptr noundef nonnull %25, i32 noundef %43) #10
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %27
  %52 = getelementptr inbounds %struct.crypto_tfm, ptr %14, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 -40
  %55 = load ptr, ptr %54, align 8
  %56 = call i32 %55(ptr noundef %14) #10
  %57 = shl i32 %56, 3
  %58 = getelementptr inbounds %struct.kernel_pkey_query, ptr %1, i32 0, i32 1
  store i32 %57, ptr %58, align 4
  %59 = trunc i32 %56 to i16
  %60 = getelementptr inbounds %struct.kernel_pkey_query, ptr %1, i32 0, i32 2
  store i16 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.kernel_pkey_query, ptr %1, i32 0, i32 3
  store i16 %59, ptr %61, align 2
  %62 = getelementptr inbounds %struct.kernel_pkey_query, ptr %1, i32 0, i32 4
  store i16 %59, ptr %62, align 4
  %63 = getelementptr inbounds %struct.kernel_pkey_query, ptr %1, i32 0, i32 5
  store i16 %59, ptr %63, align 2
  store i32 9, ptr %1, align 4
  %64 = load i8, ptr %40, align 4, !range !13
  %65 = icmp eq i8 %64, 0
  %66 = select i1 %65, i32 9, i32 15
  store i32 %66, ptr %1, align 4
  br label %67

67:                                               ; preds = %51, %27
  %68 = phi i32 [ %49, %27 ], [ 0, %51 ]
  call void @kfree(ptr noundef nonnull %25) #10
  br label %69

69:                                               ; preds = %67, %18
  %70 = phi i32 [ %68, %67 ], [ -12, %18 ]
  call void @crypto_destroy_tfm(ptr noundef %14, ptr noundef %14) #10
  br label %71

71:                                               ; preds = %69, %16, %2
  %72 = phi i32 [ %17, %16 ], [ %70, %69 ], [ %11, %2 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #10
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @software_key_eds_op(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.crypto_wait, align 4
  %5 = alloca %struct.scatterlist, align 4
  %6 = alloca %struct.scatterlist, align 4
  %7 = alloca [128 x i8], align 1
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.key, ptr %8, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %7, i8 0, i32 128, i1 false), !annotation !8
  %11 = getelementptr inbounds %struct.kernel_pkey_params, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.kernel_pkey_params, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = call fastcc i32 @software_key_determine_akcipher(ptr noundef %12, ptr noundef %14, ptr noundef %10, ptr noundef nonnull %7)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %106, label %17

17:                                               ; preds = %3
  %18 = call ptr @crypto_alloc_akcipher(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0) #10
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = ptrtoint ptr %18 to i32
  br label %106

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.crypto_tfm, ptr %18, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 -28
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 64
  %28 = call noalias align 64 ptr @__kmalloc(i32 noundef %27, i32 noundef 3264) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %104, label %30, !prof !9

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.crypto_async_request, ptr %28, i32 0, i32 3
  store ptr %18, ptr %31, align 16
  %32 = getelementptr inbounds %struct.public_key, ptr %10, i32 0, i32 1
  %33 = getelementptr inbounds %struct.public_key, ptr %10, i32 0, i32 4
  %34 = load i32, ptr %32, align 4
  %35 = add i32 %34, 8
  %36 = load i32, ptr %33, align 4
  %37 = add i32 %35, %36
  %38 = call noalias align 64 ptr @__kmalloc(i32 noundef %37, i32 noundef 3264) #11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %102, label %40

40:                                               ; preds = %30
  %41 = load i32, ptr %32, align 4
  %42 = load ptr, ptr %10, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %38, ptr align 1 %42, i32 %41, i1 false)
  %43 = load i32, ptr %32, align 4
  %44 = getelementptr i8, ptr %38, i32 %43
  %45 = getelementptr inbounds %struct.public_key, ptr %10, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr %44, align 1
  %47 = getelementptr i8, ptr %44, i32 4
  %48 = load i32, ptr %33, align 4
  store i32 %48, ptr %47, align 1
  %49 = getelementptr i8, ptr %47, i32 4
  %50 = getelementptr inbounds %struct.public_key, ptr %10, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr %33, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %49, ptr align 1 %51, i32 %52, i1 false)
  %53 = getelementptr inbounds %struct.public_key, ptr %10, i32 0, i32 5
  %54 = load i8, ptr %53, align 4, !range !13
  %55 = icmp eq i8 %54, 0
  %56 = load i32, ptr %32, align 4
  %57 = load ptr, ptr %23, align 4
  %58 = select i1 %55, i32 -48, i32 -44
  %59 = getelementptr i8, ptr %57, i32 %58
  %60 = load ptr, ptr %59, align 4
  %61 = call i32 %60(ptr noundef %18, ptr noundef nonnull %38, i32 noundef %56) #10
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %100

63:                                               ; preds = %40
  %64 = getelementptr inbounds %struct.kernel_pkey_params, ptr %0, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  call void @sg_init_one(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %65) #10
  %66 = getelementptr inbounds %struct.kernel_pkey_params, ptr %0, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  call void @sg_init_one(ptr noundef nonnull %6, ptr noundef %2, i32 noundef %67) #10
  %68 = load i32, ptr %64, align 4
  %69 = load i32, ptr %66, align 4
  %70 = getelementptr inbounds %struct.akcipher_request, ptr %28, i32 0, i32 1
  store ptr %5, ptr %70, align 8
  %71 = getelementptr inbounds %struct.akcipher_request, ptr %28, i32 0, i32 2
  store ptr %6, ptr %71, align 4
  %72 = getelementptr inbounds %struct.akcipher_request, ptr %28, i32 0, i32 3
  store i32 %68, ptr %72, align 32
  %73 = getelementptr inbounds %struct.akcipher_request, ptr %28, i32 0, i32 4
  store i32 %69, ptr %73, align 4
  store i32 0, ptr %4, align 4
  %74 = getelementptr inbounds %struct.completion, ptr %4, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %74, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #10
  %75 = getelementptr inbounds %struct.crypto_async_request, ptr %28, i32 0, i32 1
  store ptr @crypto_req_done, ptr %75, align 8
  %76 = getelementptr inbounds %struct.crypto_async_request, ptr %28, i32 0, i32 2
  store ptr %4, ptr %76, align 4
  %77 = getelementptr inbounds %struct.crypto_async_request, ptr %28, i32 0, i32 4
  store i32 1536, ptr %77, align 4
  %78 = getelementptr inbounds %struct.kernel_pkey_params, ptr %0, i32 0, i32 6
  %79 = load i8, ptr %78, align 4
  %80 = icmp ult i8 %79, 3
  br i1 %80, label %82, label %81

81:                                               ; preds = %63
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/asymmetric_keys/public_key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 236, 0\0A.popsection", ""() #10, !srcloc !16
  unreachable

82:                                               ; preds = %63
  %83 = sext i8 %79 to i32
  %84 = getelementptr inbounds [3 x i32], ptr @switch.table.software_key_eds_op, i32 0, i32 %83
  %85 = load i32, ptr %84, align 4
  %86 = load ptr, ptr %31, align 16
  %87 = getelementptr inbounds %struct.crypto_tfm, ptr %86, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr i8, ptr %88, i32 %85
  %90 = load ptr, ptr %89, align 4
  %91 = call i32 %90(ptr noundef nonnull %28) #10
  switch i32 %91, label %95 [
    i32 -115, label %92
    i32 -16, label %92
  ]

92:                                               ; preds = %82, %82
  call void @wait_for_completion(ptr noundef nonnull %4) #10
  store i32 0, ptr %4, align 4
  %93 = getelementptr inbounds %struct.crypto_wait, ptr %4, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  br label %95

95:                                               ; preds = %92, %82
  %96 = phi i32 [ %91, %82 ], [ %94, %92 ]
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, ptr %73, align 4
  br label %100

100:                                              ; preds = %98, %95, %40
  %101 = phi i32 [ %61, %40 ], [ %99, %98 ], [ %96, %95 ]
  call void @kfree(ptr noundef nonnull %38) #10
  br label %102

102:                                              ; preds = %100, %30
  %103 = phi i32 [ %101, %100 ], [ -12, %30 ]
  call void @kfree_sensitive(ptr noundef nonnull %28) #10
  br label %104

104:                                              ; preds = %102, %22
  %105 = phi i32 [ %103, %102 ], [ -12, %22 ]
  call void @crypto_destroy_tfm(ptr noundef %18, ptr noundef %18) #10
  br label %106

106:                                              ; preds = %104, %20, %3
  %107 = phi i32 [ %21, %20 ], [ %105, %104 ], [ %15, %3 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @public_key_verify_signature_2(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @public_key_verify_signature(ptr noundef %4, ptr noundef %1)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @public_key_signature_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152541416, i64 2152541916, i64 2152541453, i64 2152541509, i64 2152541543, i64 2152541567, i64 2152541608, i64 2152541629, i64 2152541657, i64 2152541691}
!11 = !{i64 2152542464, i64 2152542964, i64 2152542501, i64 2152542557, i64 2152542591, i64 2152542615, i64 2152542656, i64 2152542677, i64 2152542705, i64 2152542739}
!12 = !{i64 2152543518, i64 2152544018, i64 2152543555, i64 2152543611, i64 2152543645, i64 2152543669, i64 2152543710, i64 2152543731, i64 2152543759, i64 2152543793}
!13 = !{i8 0, i8 2}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2152360475, i64 2152360967, i64 2152360512, i64 2152360568, i64 2152360602, i64 2152360626, i64 2152360667, i64 2152360688, i64 2152360716, i64 2152360750}
!16 = !{i64 2152538000, i64 2152538500, i64 2152538037, i64 2152538093, i64 2152538127, i64 2152538151, i64 2152538192, i64 2152538213, i64 2152538241, i64 2152538275}
