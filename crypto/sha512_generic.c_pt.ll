; ModuleID = '/llk/IR/crypto/sha512_generic.c_pt.bc'
source_filename = "../crypto/sha512_generic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha384_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22sha384_zero_message_hash\22\09\09\09\09\09"
module asm "__kstrtabns_sha384_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha512_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22sha512_zero_message_hash\22\09\09\09\09\09"
module asm "__kstrtabns_sha512_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sha512_update:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sha512_update\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sha512_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sha512_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sha512_finup\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sha512_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [20 x i8], i32, i32, [56 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.sha512_state = type { [8 x i64], [2 x i64], [128 x i8] }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }

@sha384_zero_message_hash = dso_local constant [48 x i8] c"8\B0`\A7Q\AC\968L\D92~\B1\B1\E3j!\FD\B7\11\14\BE\07CL\0C\C7\BFc\F6\E1\DA'N\DE\BF\E7oe\FB\D5\1A\D2\F1H\98\B9[", align 1
@__kstrtab_sha384_zero_message_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha384_zero_message_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_sha384_zero_message_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha384_zero_message_hash to i32), ptr @__kstrtab_sha384_zero_message_hash, ptr @__kstrtabns_sha384_zero_message_hash }, section "___ksymtab_gpl+sha384_zero_message_hash", align 4
@sha512_zero_message_hash = dso_local constant [64 x i8] c"\CF\83\E15~\EF\B8\BD\F1T(P\D6m\80\07\D6 \E4\05\0BW\15\DC\83\F4\A9!\D3l\E9\CEG\D0\D1<]\85\F2\B0\FF\83\18\D2\87~\EC/c\B91\BDGAz\81\A582z\F9'\DA>", align 1
@__kstrtab_sha512_zero_message_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha512_zero_message_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_sha512_zero_message_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha512_zero_message_hash to i32), ptr @__kstrtab_sha512_zero_message_hash, ptr @__kstrtabns_sha512_zero_message_hash }, section "___ksymtab_gpl+sha512_zero_message_hash", align 4
@__kstrtab_crypto_sha512_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sha512_update = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sha512_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sha512_update to i32), ptr @__kstrtab_crypto_sha512_update, ptr @__kstrtabns_crypto_sha512_update }, section "___ksymtab+crypto_sha512_update", align 4
@__kstrtab_crypto_sha512_finup = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sha512_finup = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sha512_finup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sha512_finup to i32), ptr @__kstrtab_crypto_sha512_finup, ptr @__kstrtabns_crypto_sha512_finup }, section "___ksymtab+crypto_sha512_finup", align 4
@__UNIQUE_ID_license220 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description221 = internal constant [55 x i8] c"description=SHA-512 and SHA-384 Secure Hash Algorithms\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace222 = internal constant [13 x i8] c"alias=sha384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto223 = internal constant [20 x i8] c"alias=crypto-sha384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace224 = internal constant [21 x i8] c"alias=sha384-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto225 = internal constant [28 x i8] c"alias=crypto-sha384-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace226 = internal constant [13 x i8] c"alias=sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto227 = internal constant [20 x i8] c"alias=crypto-sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace228 = internal constant [21 x i8] c"alias=sha512-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto229 = internal constant [28 x i8] c"alias=crypto-sha512-generic\00", section ".modinfo", align 1
@sha512_K = internal unnamed_addr constant [80 x i64] [i64 4794697086780616226, i64 8158064640168781261, i64 -5349999486874862801, i64 -1606136188198331460, i64 4131703408338449720, i64 6480981068601479193, i64 -7908458776815382629, i64 -6116909921290321640, i64 -2880145864133508542, i64 1334009975649890238, i64 2608012711638119052, i64 6128411473006802146, i64 8268148722764581231, i64 -9160688886553864527, i64 -7215885187991268811, i64 -4495734319001033068, i64 -1973867731355612462, i64 -1171420211273849373, i64 1135362057144423861, i64 2597628984639134821, i64 3308224258029322869, i64 5365058923640841347, i64 6679025012923562964, i64 8573033837759648693, i64 -7476448914759557205, i64 -6327057829258317296, i64 -5763719355590565569, i64 -4658551843659510044, i64 -4116276920077217854, i64 -3051310485924567259, i64 489312712824947311, i64 1452737877330783856, i64 2861767655752347644, i64 3322285676063803686, i64 5560940570517711597, i64 5996557281743188959, i64 7280758554555802590, i64 8532644243296465576, i64 -9096487096722542874, i64 -7894198246740708037, i64 -6719396339535248540, i64 -6333637450476146687, i64 -4446306890439682159, i64 -4076793802049405392, i64 -3345356375505022440, i64 -2983346525034927856, i64 -860691631967231958, i64 1182934255886127544, i64 1847814050463011016, i64 2177327727835720531, i64 2830643537854262169, i64 3796741975233480872, i64 4115178125766777443, i64 5681478168544905931, i64 6601373596472566643, i64 7507060721942968483, i64 8399075790359081724, i64 8693463985226723168, i64 -8878714635349349518, i64 -8302665154208450068, i64 -8016688836872298968, i64 -6606660893046293015, i64 -4685533653050689259, i64 -4147400797238176981, i64 -3880063495543823972, i64 -3348786107499101689, i64 -1523767162380948706, i64 -757361751448694408, i64 500013540394364858, i64 748580250866718886, i64 1242879168328830382, i64 1977374033974150939, i64 2944078676154940804, i64 3659926193048069267, i64 4368137639120453308, i64 4836135668995329356, i64 5532061633213252278, i64 6448918945643986474, i64 6902733635092675308, i64 7801388544844847127], align 8
@sha512_algs = internal global [2 x %struct.shash_alg] [%struct.shash_alg { ptr @sha512_base_init, ptr @crypto_sha512_update, ptr @sha512_final, ptr @crypto_sha512_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 208, [20 x i8] undef, i32 64, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha512-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.shash_alg { ptr @sha384_base_init, ptr @crypto_sha512_update, ptr @sha512_final, ptr @crypto_sha512_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 208, [20 x i8] undef, i32 48, i32 0, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha384-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }], align 64
@__this_module = external dso_local global %struct.module, align 64
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias_crypto223, ptr @__UNIQUE_ID_alias_crypto225, ptr @__UNIQUE_ID_alias_crypto227, ptr @__UNIQUE_ID_alias_crypto229, ptr @__UNIQUE_ID_alias_userspace222, ptr @__UNIQUE_ID_alias_userspace224, ptr @__UNIQUE_ID_alias_userspace226, ptr @__UNIQUE_ID_alias_userspace228, ptr @__UNIQUE_ID_description221, ptr @__UNIQUE_ID_license220, ptr @__ksymtab_crypto_sha512_finup, ptr @__ksymtab_crypto_sha512_update, ptr @__ksymtab_sha384_zero_message_hash, ptr @__ksymtab_sha512_zero_message_hash], section "llvm.metadata"

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_sha512_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 9
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 127
  %9 = zext i32 %2 to i64
  %10 = add i64 %6, %9
  store i64 %10, ptr %5, align 8
  %11 = icmp ult i64 %10, %9
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = getelementptr %struct.shash_desc, ptr %0, i32 10
  %14 = load i64, ptr %13, align 8
  %15 = add i64 %14, 1
  store i64 %15, ptr %13, align 8
  br label %16

16:                                               ; preds = %12, %3
  %17 = add i32 %8, %2
  %18 = icmp ugt i32 %17, 127
  br i1 %18, label %19, label %36, !prof !8

19:                                               ; preds = %16
  %20 = icmp eq i32 %8, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = sub nuw nsw i32 128, %8
  %23 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 11
  %24 = getelementptr i8, ptr %23, i32 %8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %24, ptr align 1 %1, i32 %22, i1 false) #9
  %25 = getelementptr i8, ptr %1, i32 %22
  %26 = sub i32 %2, %22
  tail call fastcc void @sha512_generic_block_fn(ptr noundef %4, ptr noundef %23, i32 noundef 1) #9
  br label %27

27:                                               ; preds = %21, %19
  %28 = phi i32 [ %26, %21 ], [ %2, %19 ]
  %29 = phi ptr [ %25, %21 ], [ %1, %19 ]
  %30 = and i32 %28, 127
  %31 = icmp ult i32 %28, 128
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = lshr i32 %28, 7
  tail call fastcc void @sha512_generic_block_fn(ptr noundef %4, ptr noundef %29, i32 noundef %33) #9
  %34 = and i32 %28, -128
  %35 = getelementptr i8, ptr %29, i32 %34
  br label %36

36:                                               ; preds = %32, %27, %16
  %37 = phi i32 [ %2, %16 ], [ %30, %32 ], [ %30, %27 ]
  %38 = phi i32 [ %8, %16 ], [ 0, %32 ], [ 0, %27 ]
  %39 = phi ptr [ %1, %16 ], [ %35, %32 ], [ %29, %27 ]
  %40 = icmp eq i32 %37, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 11
  %43 = getelementptr i8, ptr %42, i32 %38
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %43, ptr align 1 %39, i32 %37, i1 false) #9
  br label %44

44:                                               ; preds = %41, %36
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sha512_generic_block_fn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [16 x i64], align 8
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %342, label %6

6:                                                ; preds = %3
  %7 = getelementptr i64, ptr %0, i32 1
  %8 = getelementptr i64, ptr %0, i32 2
  %9 = getelementptr i64, ptr %0, i32 3
  %10 = getelementptr i64, ptr %0, i32 4
  %11 = getelementptr i64, ptr %0, i32 5
  %12 = getelementptr i64, ptr %0, i32 6
  %13 = getelementptr i64, ptr %0, i32 7
  %14 = load i64, ptr %0, align 8
  %15 = load i64, ptr %7, align 8
  %16 = load i64, ptr %8, align 8
  %17 = load i64, ptr %9, align 8
  %18 = load i64, ptr %10, align 8
  %19 = load i64, ptr %11, align 8
  %20 = load i64, ptr %12, align 8
  %21 = load i64, ptr %13, align 8
  br label %22

22:                                               ; preds = %330, %6
  %23 = phi i64 [ %21, %6 ], [ %339, %330 ]
  %24 = phi i64 [ %20, %6 ], [ %338, %330 ]
  %25 = phi i64 [ %19, %6 ], [ %337, %330 ]
  %26 = phi i64 [ %18, %6 ], [ %336, %330 ]
  %27 = phi i64 [ %17, %6 ], [ %335, %330 ]
  %28 = phi i64 [ %16, %6 ], [ %334, %330 ]
  %29 = phi i64 [ %15, %6 ], [ %333, %330 ]
  %30 = phi i64 [ %14, %6 ], [ %332, %330 ]
  %31 = phi i32 [ %2, %6 ], [ %331, %330 ]
  %32 = phi ptr [ %1, %6 ], [ %340, %330 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i32 128, i1 false) #9, !annotation !9
  br label %33

33:                                               ; preds = %89, %22
  %34 = phi i32 [ 0, %22 ], [ %328, %89 ]
  %35 = phi i64 [ %23, %22 ], [ %236, %89 ]
  %36 = phi i64 [ %24, %22 ], [ %266, %89 ]
  %37 = phi i64 [ %25, %22 ], [ %296, %89 ]
  %38 = phi i64 [ %26, %22 ], [ %326, %89 ]
  %39 = phi i64 [ %27, %22 ], [ %237, %89 ]
  %40 = phi i64 [ %28, %22 ], [ %267, %89 ]
  %41 = phi i64 [ %29, %22 ], [ %297, %89 ]
  %42 = phi i64 [ %30, %22 ], [ %327, %89 ]
  %43 = and i32 %34, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %89

45:                                               ; preds = %33
  %46 = icmp ult i32 %34, 16
  br i1 %46, label %47, label %56

47:                                               ; preds = %47, %45
  %48 = phi i32 [ %54, %47 ], [ 0, %45 ]
  %49 = add nuw nsw i32 %48, %34
  %50 = getelementptr i64, ptr %32, i32 %49
  %51 = load i64, ptr %50, align 1
  %52 = tail call i64 @llvm.bswap.i64(i64 %51) #9
  %53 = getelementptr i64, ptr %4, i32 %49
  store i64 %52, ptr %53, align 8
  %54 = add nuw nsw i32 %48, 1
  %55 = icmp eq i32 %54, 16
  br i1 %55, label %89, label %47

56:                                               ; preds = %56, %45
  %57 = phi i32 [ %87, %56 ], [ 0, %45 ]
  %58 = add nuw nsw i32 %57, %34
  %59 = add nuw nsw i32 %58, 14
  %60 = and i32 %59, 15
  %61 = getelementptr i64, ptr %4, i32 %60
  %62 = load i64, ptr %61, align 8
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 45) #9
  %64 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 3) #9
  %65 = xor i64 %63, %64
  %66 = lshr i64 %62, 6
  %67 = xor i64 %65, %66
  %68 = add nuw nsw i32 %58, 9
  %69 = and i32 %68, 15
  %70 = getelementptr i64, ptr %4, i32 %69
  %71 = load i64, ptr %70, align 8
  %72 = add i64 %67, %71
  %73 = add nuw nsw i32 %58, 1
  %74 = and i32 %73, 15
  %75 = getelementptr i64, ptr %4, i32 %74
  %76 = load i64, ptr %75, align 8
  %77 = tail call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 63) #9
  %78 = tail call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 56) #9
  %79 = xor i64 %77, %78
  %80 = lshr i64 %76, 7
  %81 = xor i64 %79, %80
  %82 = and i32 %58, 15
  %83 = getelementptr i64, ptr %4, i32 %82
  %84 = load i64, ptr %83, align 8
  %85 = add i64 %72, %84
  %86 = add i64 %85, %81
  store i64 %86, ptr %83, align 8
  %87 = add nuw nsw i32 %57, 1
  %88 = icmp eq i32 %87, 16
  br i1 %88, label %89, label %56

89:                                               ; preds = %56, %47, %33
  %90 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 50) #9
  %91 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 46) #9
  %92 = xor i64 %90, %91
  %93 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 23) #9
  %94 = xor i64 %92, %93
  %95 = xor i64 %37, %36
  %96 = and i64 %95, %38
  %97 = xor i64 %96, %36
  %98 = getelementptr [80 x i64], ptr @sha512_K, i32 0, i32 %34
  %99 = load i64, ptr %98, align 8
  %100 = getelementptr [16 x i64], ptr %4, i32 0, i32 %43
  %101 = load i64, ptr %100, align 8
  %102 = add i64 %97, %35
  %103 = add i64 %102, %94
  %104 = add i64 %103, %99
  %105 = add i64 %104, %101
  %106 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 36) #9
  %107 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 30) #9
  %108 = xor i64 %106, %107
  %109 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 25) #9
  %110 = xor i64 %108, %109
  %111 = and i64 %42, %41
  %112 = or i64 %42, %41
  %113 = and i64 %112, %40
  %114 = or i64 %113, %111
  %115 = add i64 %114, %110
  %116 = add i64 %105, %39
  %117 = add i64 %115, %105
  %118 = tail call i64 @llvm.fshl.i64(i64 %116, i64 %116, i64 50) #9
  %119 = tail call i64 @llvm.fshl.i64(i64 %116, i64 %116, i64 46) #9
  %120 = xor i64 %118, %119
  %121 = tail call i64 @llvm.fshl.i64(i64 %116, i64 %116, i64 23) #9
  %122 = xor i64 %120, %121
  %123 = xor i64 %38, %37
  %124 = and i64 %116, %123
  %125 = xor i64 %124, %37
  %126 = or i32 %34, 1
  %127 = getelementptr [80 x i64], ptr @sha512_K, i32 0, i32 %126
  %128 = load i64, ptr %127, align 8
  %129 = or i32 %43, 1
  %130 = getelementptr [16 x i64], ptr %4, i32 0, i32 %129
  %131 = load i64, ptr %130, align 8
  %132 = add i64 %128, %36
  %133 = add i64 %132, %131
  %134 = add i64 %133, %125
  %135 = add i64 %134, %122
  %136 = tail call i64 @llvm.fshl.i64(i64 %117, i64 %117, i64 36) #9
  %137 = tail call i64 @llvm.fshl.i64(i64 %117, i64 %117, i64 30) #9
  %138 = xor i64 %136, %137
  %139 = tail call i64 @llvm.fshl.i64(i64 %117, i64 %117, i64 25) #9
  %140 = xor i64 %138, %139
  %141 = and i64 %117, %42
  %142 = or i64 %117, %42
  %143 = and i64 %142, %41
  %144 = or i64 %143, %141
  %145 = add i64 %140, %144
  %146 = add i64 %135, %40
  %147 = add i64 %145, %135
  %148 = tail call i64 @llvm.fshl.i64(i64 %146, i64 %146, i64 50) #9
  %149 = tail call i64 @llvm.fshl.i64(i64 %146, i64 %146, i64 46) #9
  %150 = xor i64 %148, %149
  %151 = tail call i64 @llvm.fshl.i64(i64 %146, i64 %146, i64 23) #9
  %152 = xor i64 %150, %151
  %153 = xor i64 %116, %38
  %154 = and i64 %146, %153
  %155 = xor i64 %154, %38
  %156 = or i32 %34, 2
  %157 = getelementptr [80 x i64], ptr @sha512_K, i32 0, i32 %156
  %158 = load i64, ptr %157, align 8
  %159 = or i32 %43, 2
  %160 = getelementptr [16 x i64], ptr %4, i32 0, i32 %159
  %161 = load i64, ptr %160, align 8
  %162 = add i64 %158, %37
  %163 = add i64 %162, %161
  %164 = add i64 %163, %155
  %165 = add i64 %164, %152
  %166 = tail call i64 @llvm.fshl.i64(i64 %147, i64 %147, i64 36) #9
  %167 = tail call i64 @llvm.fshl.i64(i64 %147, i64 %147, i64 30) #9
  %168 = xor i64 %166, %167
  %169 = tail call i64 @llvm.fshl.i64(i64 %147, i64 %147, i64 25) #9
  %170 = xor i64 %168, %169
  %171 = and i64 %147, %117
  %172 = or i64 %147, %117
  %173 = and i64 %172, %42
  %174 = or i64 %173, %171
  %175 = add i64 %170, %174
  %176 = add i64 %165, %41
  %177 = add i64 %175, %165
  %178 = tail call i64 @llvm.fshl.i64(i64 %176, i64 %176, i64 50) #9
  %179 = tail call i64 @llvm.fshl.i64(i64 %176, i64 %176, i64 46) #9
  %180 = xor i64 %178, %179
  %181 = tail call i64 @llvm.fshl.i64(i64 %176, i64 %176, i64 23) #9
  %182 = xor i64 %180, %181
  %183 = xor i64 %146, %116
  %184 = and i64 %176, %183
  %185 = xor i64 %184, %116
  %186 = or i32 %34, 3
  %187 = getelementptr [80 x i64], ptr @sha512_K, i32 0, i32 %186
  %188 = load i64, ptr %187, align 8
  %189 = or i32 %43, 3
  %190 = getelementptr [16 x i64], ptr %4, i32 0, i32 %189
  %191 = load i64, ptr %190, align 8
  %192 = add i64 %188, %38
  %193 = add i64 %192, %191
  %194 = add i64 %193, %185
  %195 = add i64 %194, %182
  %196 = tail call i64 @llvm.fshl.i64(i64 %177, i64 %177, i64 36) #9
  %197 = tail call i64 @llvm.fshl.i64(i64 %177, i64 %177, i64 30) #9
  %198 = xor i64 %196, %197
  %199 = tail call i64 @llvm.fshl.i64(i64 %177, i64 %177, i64 25) #9
  %200 = xor i64 %198, %199
  %201 = and i64 %177, %147
  %202 = or i64 %177, %147
  %203 = and i64 %202, %117
  %204 = or i64 %203, %201
  %205 = add i64 %200, %204
  %206 = add i64 %195, %42
  %207 = add i64 %205, %195
  %208 = tail call i64 @llvm.fshl.i64(i64 %206, i64 %206, i64 50) #9
  %209 = tail call i64 @llvm.fshl.i64(i64 %206, i64 %206, i64 46) #9
  %210 = xor i64 %208, %209
  %211 = tail call i64 @llvm.fshl.i64(i64 %206, i64 %206, i64 23) #9
  %212 = xor i64 %210, %211
  %213 = xor i64 %176, %146
  %214 = and i64 %206, %213
  %215 = xor i64 %214, %146
  %216 = or i32 %34, 4
  %217 = getelementptr [80 x i64], ptr @sha512_K, i32 0, i32 %216
  %218 = load i64, ptr %217, align 8
  %219 = or i32 %43, 4
  %220 = getelementptr [16 x i64], ptr %4, i32 0, i32 %219
  %221 = load i64, ptr %220, align 8
  %222 = add i64 %218, %116
  %223 = add i64 %222, %221
  %224 = add i64 %223, %215
  %225 = add i64 %224, %212
  %226 = tail call i64 @llvm.fshl.i64(i64 %207, i64 %207, i64 36) #9
  %227 = tail call i64 @llvm.fshl.i64(i64 %207, i64 %207, i64 30) #9
  %228 = xor i64 %226, %227
  %229 = tail call i64 @llvm.fshl.i64(i64 %207, i64 %207, i64 25) #9
  %230 = xor i64 %228, %229
  %231 = and i64 %207, %177
  %232 = or i64 %207, %177
  %233 = and i64 %232, %147
  %234 = or i64 %233, %231
  %235 = add i64 %230, %234
  %236 = add i64 %225, %117
  %237 = add i64 %235, %225
  %238 = tail call i64 @llvm.fshl.i64(i64 %236, i64 %236, i64 50) #9
  %239 = tail call i64 @llvm.fshl.i64(i64 %236, i64 %236, i64 46) #9
  %240 = xor i64 %238, %239
  %241 = tail call i64 @llvm.fshl.i64(i64 %236, i64 %236, i64 23) #9
  %242 = xor i64 %240, %241
  %243 = xor i64 %206, %176
  %244 = and i64 %236, %243
  %245 = xor i64 %244, %176
  %246 = or i32 %34, 5
  %247 = getelementptr [80 x i64], ptr @sha512_K, i32 0, i32 %246
  %248 = load i64, ptr %247, align 8
  %249 = or i32 %43, 5
  %250 = getelementptr [16 x i64], ptr %4, i32 0, i32 %249
  %251 = load i64, ptr %250, align 8
  %252 = add i64 %248, %146
  %253 = add i64 %252, %251
  %254 = add i64 %253, %245
  %255 = add i64 %254, %242
  %256 = tail call i64 @llvm.fshl.i64(i64 %237, i64 %237, i64 36) #9
  %257 = tail call i64 @llvm.fshl.i64(i64 %237, i64 %237, i64 30) #9
  %258 = xor i64 %256, %257
  %259 = tail call i64 @llvm.fshl.i64(i64 %237, i64 %237, i64 25) #9
  %260 = xor i64 %258, %259
  %261 = and i64 %237, %207
  %262 = or i64 %237, %207
  %263 = and i64 %262, %177
  %264 = or i64 %263, %261
  %265 = add i64 %260, %264
  %266 = add i64 %255, %147
  %267 = add i64 %265, %255
  %268 = tail call i64 @llvm.fshl.i64(i64 %266, i64 %266, i64 50) #9
  %269 = tail call i64 @llvm.fshl.i64(i64 %266, i64 %266, i64 46) #9
  %270 = xor i64 %268, %269
  %271 = tail call i64 @llvm.fshl.i64(i64 %266, i64 %266, i64 23) #9
  %272 = xor i64 %270, %271
  %273 = xor i64 %236, %206
  %274 = and i64 %266, %273
  %275 = xor i64 %274, %206
  %276 = or i32 %34, 6
  %277 = getelementptr [80 x i64], ptr @sha512_K, i32 0, i32 %276
  %278 = load i64, ptr %277, align 8
  %279 = or i32 %43, 6
  %280 = getelementptr [16 x i64], ptr %4, i32 0, i32 %279
  %281 = load i64, ptr %280, align 8
  %282 = add i64 %281, %278
  %283 = add i64 %282, %176
  %284 = add i64 %283, %275
  %285 = add i64 %284, %272
  %286 = tail call i64 @llvm.fshl.i64(i64 %267, i64 %267, i64 36) #9
  %287 = tail call i64 @llvm.fshl.i64(i64 %267, i64 %267, i64 30) #9
  %288 = xor i64 %286, %287
  %289 = tail call i64 @llvm.fshl.i64(i64 %267, i64 %267, i64 25) #9
  %290 = xor i64 %288, %289
  %291 = and i64 %267, %237
  %292 = or i64 %267, %237
  %293 = and i64 %292, %207
  %294 = or i64 %293, %291
  %295 = add i64 %290, %294
  %296 = add i64 %285, %177
  %297 = add i64 %295, %285
  %298 = tail call i64 @llvm.fshl.i64(i64 %296, i64 %296, i64 50) #9
  %299 = tail call i64 @llvm.fshl.i64(i64 %296, i64 %296, i64 46) #9
  %300 = xor i64 %298, %299
  %301 = tail call i64 @llvm.fshl.i64(i64 %296, i64 %296, i64 23) #9
  %302 = xor i64 %300, %301
  %303 = xor i64 %266, %236
  %304 = and i64 %296, %303
  %305 = xor i64 %304, %236
  %306 = or i32 %34, 7
  %307 = getelementptr [80 x i64], ptr @sha512_K, i32 0, i32 %306
  %308 = load i64, ptr %307, align 8
  %309 = or i32 %43, 7
  %310 = getelementptr [16 x i64], ptr %4, i32 0, i32 %309
  %311 = load i64, ptr %310, align 8
  %312 = add i64 %311, %308
  %313 = add i64 %312, %206
  %314 = add i64 %313, %305
  %315 = add i64 %314, %302
  %316 = tail call i64 @llvm.fshl.i64(i64 %297, i64 %297, i64 36) #9
  %317 = tail call i64 @llvm.fshl.i64(i64 %297, i64 %297, i64 30) #9
  %318 = xor i64 %316, %317
  %319 = tail call i64 @llvm.fshl.i64(i64 %297, i64 %297, i64 25) #9
  %320 = xor i64 %318, %319
  %321 = and i64 %297, %267
  %322 = or i64 %297, %267
  %323 = and i64 %322, %237
  %324 = or i64 %323, %321
  %325 = add i64 %320, %324
  %326 = add i64 %315, %207
  %327 = add i64 %325, %315
  %328 = add nuw nsw i32 %34, 8
  %329 = icmp ult i32 %34, 72
  br i1 %329, label %33, label %330

330:                                              ; preds = %89
  %331 = add i32 %31, -1
  %332 = add i64 %327, %30
  store i64 %332, ptr %0, align 8
  %333 = add i64 %297, %29
  store i64 %333, ptr %7, align 8
  %334 = add i64 %267, %28
  store i64 %334, ptr %8, align 8
  %335 = add i64 %237, %27
  store i64 %335, ptr %9, align 8
  %336 = add i64 %326, %26
  store i64 %336, ptr %10, align 8
  %337 = add i64 %296, %25
  store i64 %337, ptr %11, align 8
  %338 = add i64 %266, %24
  store i64 %338, ptr %12, align 8
  %339 = add i64 %236, %23
  store i64 %339, ptr %13, align 8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #9
  %340 = getelementptr i8, ptr %32, i32 128
  %341 = icmp eq i32 %331, 0
  br i1 %341, label %342, label %22

342:                                              ; preds = %330, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_sha512_finup(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #1 {
  %5 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 9
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 127
  %10 = zext i32 %2 to i64
  %11 = add i64 %7, %10
  store i64 %11, ptr %6, align 8
  %12 = icmp ult i64 %11, %10
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = getelementptr %struct.shash_desc, ptr %0, i32 10
  %15 = load i64, ptr %14, align 8
  %16 = add i64 %15, 1
  store i64 %16, ptr %14, align 8
  br label %17

17:                                               ; preds = %13, %4
  %18 = add i32 %9, %2
  %19 = icmp ugt i32 %18, 127
  br i1 %19, label %20, label %37, !prof !8

20:                                               ; preds = %17
  %21 = icmp eq i32 %9, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %20
  %23 = sub nuw nsw i32 128, %9
  %24 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 11
  %25 = getelementptr i8, ptr %24, i32 %9
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %25, ptr align 1 %1, i32 %23, i1 false) #9
  %26 = getelementptr i8, ptr %1, i32 %23
  %27 = sub i32 %2, %23
  tail call fastcc void @sha512_generic_block_fn(ptr noundef %5, ptr noundef %24, i32 noundef 1) #9
  br label %28

28:                                               ; preds = %22, %20
  %29 = phi i32 [ %27, %22 ], [ %2, %20 ]
  %30 = phi ptr [ %26, %22 ], [ %1, %20 ]
  %31 = and i32 %29, 127
  %32 = icmp ult i32 %29, 128
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = lshr i32 %29, 7
  tail call fastcc void @sha512_generic_block_fn(ptr noundef %5, ptr noundef %30, i32 noundef %34) #9
  %35 = and i32 %29, -128
  %36 = getelementptr i8, ptr %30, i32 %35
  br label %37

37:                                               ; preds = %33, %28, %17
  %38 = phi i32 [ %2, %17 ], [ %31, %33 ], [ %31, %28 ]
  %39 = phi i32 [ %9, %17 ], [ 0, %33 ], [ 0, %28 ]
  %40 = phi ptr [ %1, %17 ], [ %36, %33 ], [ %30, %28 ]
  %41 = icmp eq i32 %38, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 11
  %44 = getelementptr i8, ptr %43, i32 %39
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %44, ptr align 1 %40, i32 %38, i1 false) #9
  br label %45

45:                                               ; preds = %42, %37
  %46 = tail call i32 @sha512_final(ptr noundef %0, ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sha512_final(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 11
  %5 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 9
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 127
  %9 = add nuw nsw i32 %8, 1
  %10 = getelementptr %struct.sha512_state, ptr %3, i32 0, i32 2, i32 %8
  store i8 -128, ptr %10, align 1
  %11 = icmp ugt i32 %8, 111
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %4, i32 %9
  %14 = xor i32 %8, 127
  tail call void @llvm.memset.p0.i32(ptr align 1 %13, i8 0, i32 %14, i1 false) #9
  tail call fastcc void @sha512_generic_block_fn(ptr noundef %3, ptr noundef %4, i32 noundef 1) #9
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i32 [ 0, %12 ], [ %9, %2 ]
  %17 = getelementptr %struct.shash_desc, ptr %0, i32 25
  %18 = getelementptr i8, ptr %4, i32 %16
  %19 = sub nuw nsw i32 112, %16
  tail call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %19, i1 false) #9
  %20 = getelementptr %struct.shash_desc, ptr %0, i32 10
  %21 = load i64, ptr %20, align 8
  %22 = load i64, ptr %5, align 8
  %23 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %22, i64 3) #9
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #9
  store i64 %24, ptr %17, align 8
  %25 = shl i64 %22, 3
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #9
  %27 = getelementptr %struct.shash_desc, ptr %0, i32 26
  store i64 %26, ptr %27, align 8
  tail call fastcc void @sha512_generic_block_fn(ptr noundef %3, ptr noundef %4, i32 noundef 1) #9
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %struct.crypto_shash, ptr %28, i32 0, i32 2, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 -64
  %32 = load i32, ptr %31, align 64
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %34, %15
  %35 = phi i32 [ %42, %34 ], [ 0, %15 ]
  %36 = phi ptr [ %40, %34 ], [ %1, %15 ]
  %37 = phi i32 [ %43, %34 ], [ %32, %15 ]
  %38 = getelementptr [8 x i64], ptr %3, i32 0, i32 %35
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr i64, ptr %36, i32 1
  %41 = tail call i64 @llvm.bswap.i64(i64 %39) #9
  store i64 %41, ptr %36, align 1
  %42 = add i32 %35, 1
  %43 = add i32 %37, -8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %34

45:                                               ; preds = %34, %15
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(208) %3, i8 0, i32 208, i1 false) #9
  tail call void asm sideeffect "", "r,~{memory}"(ptr %3) #9, !srcloc !10
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @crypto_register_shashes(ptr noundef nonnull @sha512_algs, i32 noundef 2) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #2 section ".exit.text" {
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @sha512_algs, i32 noundef 2) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shashes(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha512_base_init(ptr nocapture noundef writeonly %0) #8 {
  %2 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  store i64 7640891576956012808, ptr %2, align 8
  %3 = getelementptr %struct.shash_desc, ptr %0, i32 2
  store i64 -4942790177534073029, ptr %3, align 8
  %4 = getelementptr %struct.shash_desc, ptr %0, i32 3
  store i64 4354685564936845355, ptr %4, align 8
  %5 = getelementptr %struct.shash_desc, ptr %0, i32 4
  store i64 -6534734903238641935, ptr %5, align 8
  %6 = getelementptr %struct.shash_desc, ptr %0, i32 5
  store i64 5840696475078001361, ptr %6, align 8
  %7 = getelementptr %struct.shash_desc, ptr %0, i32 6
  store i64 -7276294671716946913, ptr %7, align 8
  %8 = getelementptr %struct.shash_desc, ptr %0, i32 7
  store i64 2270897969802886507, ptr %8, align 8
  %9 = getelementptr %struct.shash_desc, ptr %0, i32 8
  store i64 6620516959819538809, ptr %9, align 8
  %10 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha384_base_init(ptr nocapture noundef writeonly %0) #8 {
  %2 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  store i64 -3766243637369397544, ptr %2, align 8
  %3 = getelementptr %struct.shash_desc, ptr %0, i32 2
  store i64 7105036623409894663, ptr %3, align 8
  %4 = getelementptr %struct.shash_desc, ptr %0, i32 3
  store i64 -7973340178411365097, ptr %4, align 8
  %5 = getelementptr %struct.shash_desc, ptr %0, i32 4
  store i64 1526699215303891257, ptr %5, align 8
  %6 = getelementptr %struct.shash_desc, ptr %0, i32 5
  store i64 7436329637833083697, ptr %6, align 8
  %7 = getelementptr %struct.shash_desc, ptr %0, i32 6
  store i64 -8163818279084223215, ptr %7, align 8
  %8 = getelementptr %struct.shash_desc, ptr %0, i32 7
  store i64 -2662702644619276377, ptr %8, align 8
  %9 = getelementptr %struct.shash_desc, ptr %0, i32 8
  store i64 5167115440072839076, ptr %9, align 8
  %10 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shashes(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }

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
!9 = !{!"auto-init"}
!10 = !{i64 2148930148}
