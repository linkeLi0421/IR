; ModuleID = '/llk/IR/crypto/md5.c_pt.bc'
source_filename = "../crypto/md5.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_md5_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22md5_zero_message_hash\22\09\09\09\09\09"
module asm "__kstrtabns_md5_zero_message_hash:\09\09\09\09\09"
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

@md5_zero_message_hash = dso_local constant [16 x i8] c"\D4\1D\8C\D9\8F\00\B2\04\E9\80\09\98\EC\F8B~", align 1
@__kstrtab_md5_zero_message_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_md5_zero_message_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_md5_zero_message_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @md5_zero_message_hash to i32), ptr @__kstrtab_md5_zero_message_hash, ptr @__kstrtabns_md5_zero_message_hash }, section "___ksymtab_gpl+md5_zero_message_hash", align 4
@__UNIQUE_ID_license104 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description105 = internal constant [41 x i8] c"description=MD5 Message Digest Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace106 = internal constant [10 x i8] c"alias=md5\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto107 = internal constant [17 x i8] c"alias=crypto-md5\00", section ".modinfo", align 1
@alg = internal global %struct.shash_alg { ptr @md5_init, ptr @md5_update, ptr @md5_final, ptr null, ptr null, ptr @md5_export, ptr @md5_import, ptr null, ptr null, ptr null, i32 88, [20 x i8] undef, i32 16, i32 88, [56 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 64, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"md5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"md5-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, align 64
@__this_module = external dso_local global %struct.module, align 64
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_alias_crypto107, ptr @__UNIQUE_ID_alias_userspace106, ptr @__UNIQUE_ID_description105, ptr @__UNIQUE_ID_license104, ptr @__ksymtab_md5_zero_message_hash], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @crypto_register_shash(ptr noundef nonnull @alg) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @crypto_unregister_shash(ptr noundef nonnull @alg) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @md5_init(ptr nocapture noundef writeonly %0) #2 {
  %2 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  store i32 1732584193, ptr %2, align 8
  %3 = getelementptr %struct.shash_desc, ptr %0, i32 1, i32 1
  store i32 -271733879, ptr %3, align 4
  %4 = getelementptr %struct.shash_desc, ptr %0, i32 2
  store i32 -1732584194, ptr %4, align 8
  %5 = getelementptr %struct.shash_desc, ptr %0, i32 2, i32 1
  store i32 271733878, ptr %5, align 4
  %6 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 11
  store i64 0, ptr %6, align 8
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @md5_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 11
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 63
  %9 = sub nuw nsw i32 64, %8
  %10 = zext i32 %2 to i64
  %11 = add i64 %6, %10
  store i64 %11, ptr %5, align 8
  %12 = icmp ugt i32 %9, %2
  %13 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 3
  %14 = getelementptr i8, ptr %13, i32 %8
  br i1 %12, label %15, label %16

15:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %14, ptr align 1 %1, i32 %2, i1 false)
  br label %29

16:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %14, ptr align 1 %1, i32 %9, i1 false)
  tail call fastcc void @md5_transform(ptr noundef %4, ptr noundef %13) #9
  %17 = getelementptr i8, ptr %1, i32 %9
  %18 = sub i32 %2, %9
  %19 = icmp ugt i32 %18, 63
  br i1 %19, label %20, label %26

20:                                               ; preds = %20, %16
  %21 = phi i32 [ %24, %20 ], [ %18, %16 ]
  %22 = phi ptr [ %23, %20 ], [ %17, %16 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %13, ptr noundef align 1 dereferenceable(64) %22, i32 64, i1 false)
  tail call fastcc void @md5_transform(ptr noundef %4, ptr noundef %13) #9
  %23 = getelementptr i8, ptr %22, i32 64
  %24 = add i32 %21, -64
  %25 = icmp ugt i32 %24, 63
  br i1 %25, label %20, label %26

26:                                               ; preds = %20, %16
  %27 = phi ptr [ %17, %16 ], [ %23, %20 ]
  %28 = phi i32 [ %18, %16 ], [ %24, %20 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %13, ptr align 1 %27, i32 %28, i1 false)
  br label %29

29:                                               ; preds = %26, %15
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @md5_final(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 11
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 63
  %8 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 3
  %9 = getelementptr i8, ptr %8, i32 %7
  %10 = sub nsw i32 55, %7
  %11 = getelementptr i8, ptr %9, i32 1
  store i8 -128, ptr %9, align 1
  %12 = icmp ugt i32 %7, 55
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = xor i32 %7, 63
  tail call void @llvm.memset.p0.i32(ptr align 1 %11, i8 0, i32 %14, i1 false)
  tail call fastcc void @md5_transform(ptr noundef %3, ptr noundef %8) #9
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi ptr [ %8, %13 ], [ %11, %2 ]
  %17 = phi i32 [ 56, %13 ], [ %10, %2 ]
  tail call void @llvm.memset.p0.i32(ptr align 1 %16, i8 0, i32 %17, i1 false)
  %18 = load i64, ptr %4, align 8
  %19 = trunc i64 %18 to i32
  %20 = shl i32 %19, 3
  %21 = getelementptr %struct.shash_desc, ptr %0, i32 10
  store i32 %20, ptr %21, align 8
  %22 = lshr i64 %18, 29
  %23 = trunc i64 %22 to i32
  %24 = getelementptr %struct.shash_desc, ptr %0, i32 10, i32 1
  store i32 %23, ptr %24, align 4
  tail call fastcc void @md5_transform(ptr noundef %3, ptr noundef %8)
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1, ptr noundef align 8 dereferenceable(16) %3, i32 16, i1 false)
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(88) %3, i8 0, i32 88, i1 false)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @md5_export(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(88) %1, ptr noundef align 8 dereferenceable(88) %3, i32 88, i1 false)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @md5_import(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.shash_desc, ptr %0, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(88) %3, ptr noundef align 1 dereferenceable(88) %1, i32 88, i1 false)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @md5_transform(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr i32, ptr %0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i32, ptr %0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i32, ptr %0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %9, %7
  %11 = and i32 %10, %5
  %12 = xor i32 %11, %9
  %13 = load i32, ptr %1, align 4
  %14 = add i32 %3, -680876936
  %15 = add i32 %14, %13
  %16 = add i32 %15, %12
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 7)
  %18 = add i32 %17, %5
  %19 = xor i32 %7, %5
  %20 = and i32 %18, %19
  %21 = xor i32 %20, %7
  %22 = getelementptr i32, ptr %1, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %9, -389564586
  %25 = add i32 %24, %23
  %26 = add i32 %25, %21
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 12)
  %28 = add i32 %27, %18
  %29 = xor i32 %18, %5
  %30 = and i32 %28, %29
  %31 = xor i32 %30, %5
  %32 = getelementptr i32, ptr %1, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %7, 606105819
  %35 = add i32 %34, %33
  %36 = add i32 %35, %31
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 17)
  %38 = add i32 %37, %28
  %39 = xor i32 %28, %18
  %40 = and i32 %38, %39
  %41 = xor i32 %40, %18
  %42 = getelementptr i32, ptr %1, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %5, -1044525330
  %45 = add i32 %44, %43
  %46 = add i32 %45, %41
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 22)
  %48 = add i32 %47, %38
  %49 = xor i32 %38, %28
  %50 = and i32 %48, %49
  %51 = xor i32 %50, %28
  %52 = getelementptr i32, ptr %1, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, -176418897
  %55 = add i32 %54, %18
  %56 = add i32 %55, %51
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 7)
  %58 = add i32 %57, %48
  %59 = xor i32 %48, %38
  %60 = and i32 %58, %59
  %61 = xor i32 %60, %38
  %62 = getelementptr i32, ptr %1, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 1200080426
  %65 = add i32 %64, %28
  %66 = add i32 %65, %61
  %67 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 12)
  %68 = add i32 %67, %58
  %69 = xor i32 %58, %48
  %70 = and i32 %68, %69
  %71 = xor i32 %70, %48
  %72 = getelementptr i32, ptr %1, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, -1473231341
  %75 = add i32 %74, %38
  %76 = add i32 %75, %71
  %77 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 17)
  %78 = add i32 %77, %68
  %79 = xor i32 %68, %58
  %80 = and i32 %78, %79
  %81 = xor i32 %80, %58
  %82 = getelementptr i32, ptr %1, i32 7
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, -45705983
  %85 = add i32 %84, %48
  %86 = add i32 %85, %81
  %87 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 22)
  %88 = add i32 %87, %78
  %89 = xor i32 %78, %68
  %90 = and i32 %88, %89
  %91 = xor i32 %90, %68
  %92 = getelementptr i32, ptr %1, i32 8
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, 1770035416
  %95 = add i32 %94, %58
  %96 = add i32 %95, %91
  %97 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 7)
  %98 = add i32 %97, %88
  %99 = xor i32 %88, %78
  %100 = and i32 %98, %99
  %101 = xor i32 %100, %78
  %102 = getelementptr i32, ptr %1, i32 9
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, -1958414417
  %105 = add i32 %104, %68
  %106 = add i32 %105, %101
  %107 = tail call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 12)
  %108 = add i32 %107, %98
  %109 = xor i32 %98, %88
  %110 = and i32 %108, %109
  %111 = xor i32 %110, %88
  %112 = getelementptr i32, ptr %1, i32 10
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %113, -42063
  %115 = add i32 %114, %78
  %116 = add i32 %115, %111
  %117 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 17)
  %118 = add i32 %117, %108
  %119 = xor i32 %108, %98
  %120 = and i32 %118, %119
  %121 = xor i32 %120, %98
  %122 = getelementptr i32, ptr %1, i32 11
  %123 = load i32, ptr %122, align 4
  %124 = add i32 %123, -1990404162
  %125 = add i32 %124, %88
  %126 = add i32 %125, %121
  %127 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 22)
  %128 = add i32 %127, %118
  %129 = xor i32 %118, %108
  %130 = and i32 %128, %129
  %131 = xor i32 %130, %108
  %132 = getelementptr i32, ptr %1, i32 12
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, 1804603682
  %135 = add i32 %134, %98
  %136 = add i32 %135, %131
  %137 = tail call i32 @llvm.fshl.i32(i32 %136, i32 %136, i32 7)
  %138 = add i32 %137, %128
  %139 = xor i32 %128, %118
  %140 = and i32 %138, %139
  %141 = xor i32 %140, %118
  %142 = getelementptr i32, ptr %1, i32 13
  %143 = load i32, ptr %142, align 4
  %144 = add i32 %143, -40341101
  %145 = add i32 %144, %108
  %146 = add i32 %145, %141
  %147 = tail call i32 @llvm.fshl.i32(i32 %146, i32 %146, i32 12)
  %148 = add i32 %147, %138
  %149 = xor i32 %138, %128
  %150 = and i32 %148, %149
  %151 = xor i32 %150, %128
  %152 = getelementptr i32, ptr %1, i32 14
  %153 = load i32, ptr %152, align 4
  %154 = add i32 %153, -1502002290
  %155 = add i32 %154, %118
  %156 = add i32 %155, %151
  %157 = tail call i32 @llvm.fshl.i32(i32 %156, i32 %156, i32 17)
  %158 = add i32 %157, %148
  %159 = xor i32 %148, %138
  %160 = and i32 %158, %159
  %161 = xor i32 %160, %138
  %162 = getelementptr i32, ptr %1, i32 15
  %163 = load i32, ptr %162, align 4
  %164 = add i32 %163, 1236535329
  %165 = add i32 %164, %128
  %166 = add i32 %165, %161
  %167 = tail call i32 @llvm.fshl.i32(i32 %166, i32 %166, i32 22)
  %168 = add i32 %167, %158
  %169 = xor i32 %168, %158
  %170 = and i32 %169, %148
  %171 = xor i32 %170, %158
  %172 = add i32 %23, -165796510
  %173 = add i32 %172, %138
  %174 = add i32 %173, %171
  %175 = tail call i32 @llvm.fshl.i32(i32 %174, i32 %174, i32 5)
  %176 = add i32 %175, %168
  %177 = xor i32 %176, %168
  %178 = and i32 %177, %158
  %179 = xor i32 %178, %168
  %180 = add i32 %73, -1069501632
  %181 = add i32 %180, %148
  %182 = add i32 %181, %179
  %183 = tail call i32 @llvm.fshl.i32(i32 %182, i32 %182, i32 9)
  %184 = add i32 %183, %176
  %185 = xor i32 %184, %176
  %186 = and i32 %185, %168
  %187 = xor i32 %186, %176
  %188 = add i32 %123, 643717713
  %189 = add i32 %188, %158
  %190 = add i32 %189, %187
  %191 = tail call i32 @llvm.fshl.i32(i32 %190, i32 %190, i32 14)
  %192 = add i32 %191, %184
  %193 = xor i32 %192, %184
  %194 = and i32 %193, %176
  %195 = xor i32 %194, %184
  %196 = add i32 %13, -373897302
  %197 = add i32 %196, %168
  %198 = add i32 %197, %195
  %199 = tail call i32 @llvm.fshl.i32(i32 %198, i32 %198, i32 20)
  %200 = add i32 %199, %192
  %201 = xor i32 %200, %192
  %202 = and i32 %201, %184
  %203 = xor i32 %202, %192
  %204 = add i32 %63, -701558691
  %205 = add i32 %204, %176
  %206 = add i32 %205, %203
  %207 = tail call i32 @llvm.fshl.i32(i32 %206, i32 %206, i32 5)
  %208 = add i32 %207, %200
  %209 = xor i32 %208, %200
  %210 = and i32 %209, %192
  %211 = xor i32 %210, %200
  %212 = add i32 %113, 38016083
  %213 = add i32 %212, %184
  %214 = add i32 %213, %211
  %215 = tail call i32 @llvm.fshl.i32(i32 %214, i32 %214, i32 9)
  %216 = add i32 %215, %208
  %217 = xor i32 %216, %208
  %218 = and i32 %217, %200
  %219 = xor i32 %218, %208
  %220 = add i32 %163, -660478335
  %221 = add i32 %220, %192
  %222 = add i32 %221, %219
  %223 = tail call i32 @llvm.fshl.i32(i32 %222, i32 %222, i32 14)
  %224 = add i32 %223, %216
  %225 = xor i32 %224, %216
  %226 = and i32 %225, %208
  %227 = xor i32 %226, %216
  %228 = add i32 %53, -405537848
  %229 = add i32 %228, %200
  %230 = add i32 %229, %227
  %231 = tail call i32 @llvm.fshl.i32(i32 %230, i32 %230, i32 20)
  %232 = add i32 %231, %224
  %233 = xor i32 %232, %224
  %234 = and i32 %233, %216
  %235 = xor i32 %234, %224
  %236 = add i32 %103, 568446438
  %237 = add i32 %236, %208
  %238 = add i32 %237, %235
  %239 = tail call i32 @llvm.fshl.i32(i32 %238, i32 %238, i32 5)
  %240 = add i32 %239, %232
  %241 = xor i32 %240, %232
  %242 = and i32 %241, %224
  %243 = xor i32 %242, %232
  %244 = add i32 %153, -1019803690
  %245 = add i32 %244, %216
  %246 = add i32 %245, %243
  %247 = tail call i32 @llvm.fshl.i32(i32 %246, i32 %246, i32 9)
  %248 = add i32 %247, %240
  %249 = xor i32 %248, %240
  %250 = and i32 %249, %232
  %251 = xor i32 %250, %240
  %252 = add i32 %43, -187363961
  %253 = add i32 %252, %224
  %254 = add i32 %253, %251
  %255 = tail call i32 @llvm.fshl.i32(i32 %254, i32 %254, i32 14)
  %256 = add i32 %255, %248
  %257 = xor i32 %256, %248
  %258 = and i32 %257, %240
  %259 = xor i32 %258, %248
  %260 = add i32 %93, 1163531501
  %261 = add i32 %260, %232
  %262 = add i32 %261, %259
  %263 = tail call i32 @llvm.fshl.i32(i32 %262, i32 %262, i32 20)
  %264 = add i32 %263, %256
  %265 = xor i32 %264, %256
  %266 = and i32 %265, %248
  %267 = xor i32 %266, %256
  %268 = add i32 %143, -1444681467
  %269 = add i32 %268, %240
  %270 = add i32 %269, %267
  %271 = tail call i32 @llvm.fshl.i32(i32 %270, i32 %270, i32 5)
  %272 = add i32 %271, %264
  %273 = xor i32 %272, %264
  %274 = and i32 %273, %256
  %275 = xor i32 %274, %264
  %276 = add i32 %33, -51403784
  %277 = add i32 %276, %248
  %278 = add i32 %277, %275
  %279 = tail call i32 @llvm.fshl.i32(i32 %278, i32 %278, i32 9)
  %280 = add i32 %279, %272
  %281 = xor i32 %280, %272
  %282 = and i32 %281, %264
  %283 = xor i32 %282, %272
  %284 = add i32 %83, 1735328473
  %285 = add i32 %284, %256
  %286 = add i32 %285, %283
  %287 = tail call i32 @llvm.fshl.i32(i32 %286, i32 %286, i32 14)
  %288 = add i32 %287, %280
  %289 = xor i32 %288, %280
  %290 = and i32 %289, %272
  %291 = xor i32 %290, %280
  %292 = add i32 %133, -1926607734
  %293 = add i32 %292, %264
  %294 = add i32 %293, %291
  %295 = tail call i32 @llvm.fshl.i32(i32 %294, i32 %294, i32 20)
  %296 = add i32 %295, %288
  %297 = xor i32 %289, %296
  %298 = add i32 %63, -378558
  %299 = add i32 %298, %272
  %300 = add i32 %299, %297
  %301 = tail call i32 @llvm.fshl.i32(i32 %300, i32 %300, i32 4)
  %302 = add i32 %301, %296
  %303 = xor i32 %296, %288
  %304 = xor i32 %303, %302
  %305 = add i32 %93, -2022574463
  %306 = add i32 %305, %280
  %307 = add i32 %306, %304
  %308 = tail call i32 @llvm.fshl.i32(i32 %307, i32 %307, i32 11)
  %309 = add i32 %308, %302
  %310 = xor i32 %302, %296
  %311 = xor i32 %310, %309
  %312 = add i32 %123, 1839030562
  %313 = add i32 %312, %288
  %314 = add i32 %313, %311
  %315 = tail call i32 @llvm.fshl.i32(i32 %314, i32 %314, i32 16)
  %316 = add i32 %315, %309
  %317 = xor i32 %309, %302
  %318 = xor i32 %317, %316
  %319 = add i32 %153, -35309556
  %320 = add i32 %319, %296
  %321 = add i32 %320, %318
  %322 = tail call i32 @llvm.fshl.i32(i32 %321, i32 %321, i32 23)
  %323 = add i32 %322, %316
  %324 = xor i32 %316, %309
  %325 = xor i32 %324, %323
  %326 = add i32 %23, -1530992060
  %327 = add i32 %326, %302
  %328 = add i32 %327, %325
  %329 = tail call i32 @llvm.fshl.i32(i32 %328, i32 %328, i32 4)
  %330 = add i32 %329, %323
  %331 = xor i32 %323, %316
  %332 = xor i32 %331, %330
  %333 = add i32 %53, 1272893353
  %334 = add i32 %333, %309
  %335 = add i32 %334, %332
  %336 = tail call i32 @llvm.fshl.i32(i32 %335, i32 %335, i32 11)
  %337 = add i32 %336, %330
  %338 = xor i32 %330, %323
  %339 = xor i32 %338, %337
  %340 = add i32 %83, -155497632
  %341 = add i32 %340, %316
  %342 = add i32 %341, %339
  %343 = tail call i32 @llvm.fshl.i32(i32 %342, i32 %342, i32 16)
  %344 = add i32 %343, %337
  %345 = xor i32 %337, %330
  %346 = xor i32 %345, %344
  %347 = add i32 %113, -1094730640
  %348 = add i32 %347, %323
  %349 = add i32 %348, %346
  %350 = tail call i32 @llvm.fshl.i32(i32 %349, i32 %349, i32 23)
  %351 = add i32 %350, %344
  %352 = xor i32 %344, %337
  %353 = xor i32 %352, %351
  %354 = add i32 %143, 681279174
  %355 = add i32 %354, %330
  %356 = add i32 %355, %353
  %357 = tail call i32 @llvm.fshl.i32(i32 %356, i32 %356, i32 4)
  %358 = add i32 %357, %351
  %359 = xor i32 %351, %344
  %360 = xor i32 %359, %358
  %361 = add i32 %13, -358537222
  %362 = add i32 %361, %337
  %363 = add i32 %362, %360
  %364 = tail call i32 @llvm.fshl.i32(i32 %363, i32 %363, i32 11)
  %365 = add i32 %364, %358
  %366 = xor i32 %358, %351
  %367 = xor i32 %366, %365
  %368 = add i32 %43, -722521979
  %369 = add i32 %368, %344
  %370 = add i32 %369, %367
  %371 = tail call i32 @llvm.fshl.i32(i32 %370, i32 %370, i32 16)
  %372 = add i32 %371, %365
  %373 = xor i32 %365, %358
  %374 = xor i32 %373, %372
  %375 = add i32 %73, 76029189
  %376 = add i32 %375, %351
  %377 = add i32 %376, %374
  %378 = tail call i32 @llvm.fshl.i32(i32 %377, i32 %377, i32 23)
  %379 = add i32 %378, %372
  %380 = xor i32 %372, %365
  %381 = xor i32 %380, %379
  %382 = add i32 %103, -640364487
  %383 = add i32 %382, %358
  %384 = add i32 %383, %381
  %385 = tail call i32 @llvm.fshl.i32(i32 %384, i32 %384, i32 4)
  %386 = add i32 %385, %379
  %387 = xor i32 %379, %372
  %388 = xor i32 %387, %386
  %389 = add i32 %133, -421815835
  %390 = add i32 %389, %365
  %391 = add i32 %390, %388
  %392 = tail call i32 @llvm.fshl.i32(i32 %391, i32 %391, i32 11)
  %393 = add i32 %392, %386
  %394 = xor i32 %386, %379
  %395 = xor i32 %394, %393
  %396 = add i32 %163, 530742520
  %397 = add i32 %396, %372
  %398 = add i32 %397, %395
  %399 = tail call i32 @llvm.fshl.i32(i32 %398, i32 %398, i32 16)
  %400 = add i32 %399, %393
  %401 = xor i32 %393, %386
  %402 = xor i32 %401, %400
  %403 = add i32 %33, -995338651
  %404 = add i32 %403, %379
  %405 = add i32 %404, %402
  %406 = tail call i32 @llvm.fshl.i32(i32 %405, i32 %405, i32 23)
  %407 = add i32 %406, %400
  %408 = xor i32 %393, -1
  %409 = or i32 %407, %408
  %410 = xor i32 %409, %400
  %411 = add i32 %13, -198630844
  %412 = add i32 %411, %386
  %413 = add i32 %412, %410
  %414 = tail call i32 @llvm.fshl.i32(i32 %413, i32 %413, i32 6)
  %415 = add i32 %414, %407
  %416 = xor i32 %400, -1
  %417 = or i32 %415, %416
  %418 = xor i32 %417, %407
  %419 = add i32 %83, 1126891415
  %420 = add i32 %419, %393
  %421 = add i32 %420, %418
  %422 = tail call i32 @llvm.fshl.i32(i32 %421, i32 %421, i32 10)
  %423 = add i32 %422, %415
  %424 = xor i32 %407, -1
  %425 = or i32 %423, %424
  %426 = xor i32 %425, %415
  %427 = add i32 %153, -1416354905
  %428 = add i32 %427, %400
  %429 = add i32 %428, %426
  %430 = tail call i32 @llvm.fshl.i32(i32 %429, i32 %429, i32 15)
  %431 = add i32 %430, %423
  %432 = xor i32 %415, -1
  %433 = or i32 %431, %432
  %434 = xor i32 %433, %423
  %435 = add i32 %63, -57434055
  %436 = add i32 %435, %407
  %437 = add i32 %436, %434
  %438 = tail call i32 @llvm.fshl.i32(i32 %437, i32 %437, i32 21)
  %439 = add i32 %438, %431
  %440 = xor i32 %423, -1
  %441 = or i32 %439, %440
  %442 = xor i32 %441, %431
  %443 = add i32 %133, 1700485571
  %444 = add i32 %443, %415
  %445 = add i32 %444, %442
  %446 = tail call i32 @llvm.fshl.i32(i32 %445, i32 %445, i32 6)
  %447 = add i32 %446, %439
  %448 = xor i32 %431, -1
  %449 = or i32 %447, %448
  %450 = xor i32 %449, %439
  %451 = add i32 %43, -1894986606
  %452 = add i32 %451, %423
  %453 = add i32 %452, %450
  %454 = tail call i32 @llvm.fshl.i32(i32 %453, i32 %453, i32 10)
  %455 = add i32 %454, %447
  %456 = xor i32 %439, -1
  %457 = or i32 %455, %456
  %458 = xor i32 %457, %447
  %459 = add i32 %113, -1051523
  %460 = add i32 %459, %431
  %461 = add i32 %460, %458
  %462 = tail call i32 @llvm.fshl.i32(i32 %461, i32 %461, i32 15)
  %463 = add i32 %462, %455
  %464 = xor i32 %447, -1
  %465 = or i32 %463, %464
  %466 = xor i32 %465, %455
  %467 = add i32 %23, -2054922799
  %468 = add i32 %467, %439
  %469 = add i32 %468, %466
  %470 = tail call i32 @llvm.fshl.i32(i32 %469, i32 %469, i32 21)
  %471 = add i32 %470, %463
  %472 = xor i32 %455, -1
  %473 = or i32 %471, %472
  %474 = xor i32 %473, %463
  %475 = add i32 %93, 1873313359
  %476 = add i32 %475, %447
  %477 = add i32 %476, %474
  %478 = tail call i32 @llvm.fshl.i32(i32 %477, i32 %477, i32 6)
  %479 = add i32 %478, %471
  %480 = xor i32 %463, -1
  %481 = or i32 %479, %480
  %482 = xor i32 %481, %471
  %483 = add i32 %163, -30611744
  %484 = add i32 %483, %455
  %485 = add i32 %484, %482
  %486 = tail call i32 @llvm.fshl.i32(i32 %485, i32 %485, i32 10)
  %487 = add i32 %486, %479
  %488 = xor i32 %471, -1
  %489 = or i32 %487, %488
  %490 = xor i32 %489, %479
  %491 = add i32 %73, -1560198380
  %492 = add i32 %491, %463
  %493 = add i32 %492, %490
  %494 = tail call i32 @llvm.fshl.i32(i32 %493, i32 %493, i32 15)
  %495 = add i32 %494, %487
  %496 = xor i32 %479, -1
  %497 = or i32 %495, %496
  %498 = xor i32 %497, %487
  %499 = add i32 %143, 1309151649
  %500 = add i32 %499, %471
  %501 = add i32 %500, %498
  %502 = tail call i32 @llvm.fshl.i32(i32 %501, i32 %501, i32 21)
  %503 = add i32 %502, %495
  %504 = xor i32 %487, -1
  %505 = or i32 %503, %504
  %506 = xor i32 %505, %495
  %507 = add i32 %53, -145523070
  %508 = add i32 %507, %479
  %509 = add i32 %508, %506
  %510 = tail call i32 @llvm.fshl.i32(i32 %509, i32 %509, i32 6)
  %511 = add i32 %510, %503
  %512 = xor i32 %495, -1
  %513 = or i32 %511, %512
  %514 = xor i32 %513, %503
  %515 = add i32 %123, -1120210379
  %516 = add i32 %515, %487
  %517 = add i32 %516, %514
  %518 = tail call i32 @llvm.fshl.i32(i32 %517, i32 %517, i32 10)
  %519 = add i32 %518, %511
  %520 = xor i32 %503, -1
  %521 = or i32 %519, %520
  %522 = xor i32 %521, %511
  %523 = add i32 %33, 718787259
  %524 = add i32 %523, %495
  %525 = add i32 %524, %522
  %526 = tail call i32 @llvm.fshl.i32(i32 %525, i32 %525, i32 15)
  %527 = add i32 %526, %519
  %528 = xor i32 %511, -1
  %529 = or i32 %527, %528
  %530 = xor i32 %529, %519
  %531 = add i32 %103, -343485551
  %532 = add i32 %531, %503
  %533 = add i32 %532, %530
  %534 = tail call i32 @llvm.fshl.i32(i32 %533, i32 %533, i32 21)
  %535 = add i32 %511, %3
  store i32 %535, ptr %0, align 4
  %536 = add i32 %527, %5
  %537 = add i32 %536, %534
  store i32 %537, ptr %4, align 4
  %538 = add i32 %527, %7
  store i32 %538, ptr %6, align 4
  %539 = add i32 %519, %9
  store i32 %539, ptr %8, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shash(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
