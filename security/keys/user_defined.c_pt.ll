; ModuleID = '/llk/IR/security/keys/user_defined.c_pt.bc'
source_filename = "../security/keys/user_defined.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_type_user:\09\09\09\09\09"
module asm "\09.asciz \09\22key_type_user\22\09\09\09\09\09"
module asm "__kstrtabns_key_type_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_type_logon:\09\09\09\09\09"
module asm "\09.asciz \09\22key_type_logon\22\09\09\09\09\09"
module asm "__kstrtabns_key_type_logon:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_user_preparse:\09\09\09\09\09"
module asm "\09.asciz \09\22user_preparse\22\09\09\09\09\09"
module asm "__kstrtabns_user_preparse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_user_free_preparse:\09\09\09\09\09"
module asm "\09.asciz \09\22user_free_preparse\22\09\09\09\09\09"
module asm "__kstrtabns_user_free_preparse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_user_update:\09\09\09\09\09"
module asm "\09.asciz \09\22user_update\22\09\09\09\09\09"
module asm "__kstrtabns_user_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_user_revoke:\09\09\09\09\09"
module asm "\09.asciz \09\22user_revoke\22\09\09\09\09\09"
module asm "__kstrtabns_user_revoke:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_user_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22user_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_user_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_user_describe:\09\09\09\09\09"
module asm "\09.asciz \09\22user_describe\22\09\09\09\09\09"
module asm "__kstrtabns_user_describe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_user_read:\09\09\09\09\09"
module asm "\09.asciz \09\22user_read\22\09\09\09\09\09"
module asm "__kstrtabns_user_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%union.key_payload = type { [4 x ptr] }
%struct.user_key_payload = type { %struct.callback_head, i16, [6 x i8], [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.65, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%union.anon.2 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.65 = type { %union.key_payload }

@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@key_type_user = dso_local global %struct.key_type { ptr @.str, i32 0, i32 0, ptr null, ptr @user_preparse, ptr @user_free_preparse, ptr @generic_key_instantiate, ptr @user_update, ptr null, ptr null, ptr @user_revoke, ptr @user_destroy, ptr @user_describe, ptr @user_read, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@__kstrtab_key_type_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_type_user = external dso_local constant [0 x i8], align 1
@__ksymtab_key_type_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_type_user to i32), ptr @__kstrtab_key_type_user, ptr @__kstrtabns_key_type_user }, section "___ksymtab_gpl+key_type_user", align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"logon\00", align 1
@key_type_logon = dso_local global %struct.key_type { ptr @.str.1, i32 0, i32 0, ptr @logon_vet_description, ptr @user_preparse, ptr @user_free_preparse, ptr @generic_key_instantiate, ptr @user_update, ptr null, ptr null, ptr @user_revoke, ptr @user_destroy, ptr @user_describe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@__kstrtab_key_type_logon = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_type_logon = external dso_local constant [0 x i8], align 1
@__ksymtab_key_type_logon = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_type_logon to i32), ptr @__kstrtab_key_type_logon, ptr @__kstrtabns_key_type_logon }, section "___ksymtab_gpl+key_type_logon", align 4
@__kstrtab_user_preparse = external dso_local constant [0 x i8], align 1
@__kstrtabns_user_preparse = external dso_local constant [0 x i8], align 1
@__ksymtab_user_preparse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @user_preparse to i32), ptr @__kstrtab_user_preparse, ptr @__kstrtabns_user_preparse }, section "___ksymtab_gpl+user_preparse", align 4
@__kstrtab_user_free_preparse = external dso_local constant [0 x i8], align 1
@__kstrtabns_user_free_preparse = external dso_local constant [0 x i8], align 1
@__ksymtab_user_free_preparse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @user_free_preparse to i32), ptr @__kstrtab_user_free_preparse, ptr @__kstrtabns_user_free_preparse }, section "___ksymtab_gpl+user_free_preparse", align 4
@__kstrtab_user_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_user_update = external dso_local constant [0 x i8], align 1
@__ksymtab_user_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @user_update to i32), ptr @__kstrtab_user_update, ptr @__kstrtabns_user_update }, section "___ksymtab_gpl+user_update", align 4
@__kstrtab_user_revoke = external dso_local constant [0 x i8], align 1
@__kstrtabns_user_revoke = external dso_local constant [0 x i8], align 1
@__ksymtab_user_revoke = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @user_revoke to i32), ptr @__kstrtab_user_revoke, ptr @__kstrtabns_user_revoke }, section "___ksymtab+user_revoke", align 4
@__kstrtab_user_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_user_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_user_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @user_destroy to i32), ptr @__kstrtab_user_destroy, ptr @__kstrtabns_user_destroy }, section "___ksymtab_gpl+user_destroy", align 4
@.str.2 = private unnamed_addr constant [5 x i8] c": %u\00", align 1
@__kstrtab_user_describe = external dso_local constant [0 x i8], align 1
@__kstrtabns_user_describe = external dso_local constant [0 x i8], align 1
@__ksymtab_user_describe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @user_describe to i32), ptr @__kstrtab_user_describe, ptr @__kstrtabns_user_describe }, section "___ksymtab_gpl+user_describe", align 4
@__kstrtab_user_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_user_read = external dso_local constant [0 x i8], align 1
@__ksymtab_user_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @user_read to i32), ptr @__kstrtab_user_read, ptr @__kstrtabns_user_read }, section "___ksymtab_gpl+user_read", align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_key_type_logon, ptr @__ksymtab_key_type_user, ptr @__ksymtab_user_describe, ptr @__ksymtab_user_destroy, ptr @__ksymtab_user_free_preparse, ptr @__ksymtab_user_preparse, ptr @__ksymtab_user_read, ptr @__ksymtab_user_revoke, ptr @__ksymtab_user_update], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @user_preparse(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -32768
  %5 = icmp ult i32 %4, -32767
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %3, 16
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 5
  store i32 %3, ptr %15, align 8
  %16 = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 2
  store ptr %12, ptr %16, align 8
  %17 = trunc i32 %3 to i16
  %18 = getelementptr inbounds %struct.user_key_payload, ptr %12, i32 0, i32 1
  store i16 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.user_key_payload, ptr %12, i32 0, i32 3
  %20 = load ptr, ptr %7, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 16 %19, ptr align 1 %20, i32 %3, i1 false)
  br label %21

21:                                               ; preds = %14, %10, %6, %1
  %22 = phi i32 [ 0, %14 ], [ -22, %6 ], [ -22, %1 ], [ -12, %10 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @user_free_preparse(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.key_preparsed_payload, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree_sensitive(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_key_instantiate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @user_update(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.key_preparsed_payload, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @key_payload_reserve(ptr noundef %0, i32 noundef %4) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.key_preparsed_payload, ptr %1, i32 0, i32 6
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 6
  store i64 %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 13
  %12 = load volatile i16, ptr %11, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi ptr [ %16, %14 ], [ null, %7 ]
  %19 = getelementptr inbounds %struct.key_preparsed_payload, ptr %1, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %21 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  store volatile ptr %20, ptr %21, align 4
  store ptr null, ptr %19, align 8
  %22 = icmp eq ptr %18, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call void @call_rcu(ptr noundef nonnull %18, ptr noundef nonnull @user_free_payload_rcu) #9
  br label %24

24:                                               ; preds = %23, %17, %2
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @user_revoke(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @key_payload_reserve(ptr noundef %0, i32 noundef 0) #9
  %5 = icmp eq ptr %3, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store volatile ptr null, ptr %2, align 4
  tail call void @call_rcu(ptr noundef nonnull %3, ptr noundef nonnull @user_free_payload_rcu) #9
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @user_destroy(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree_sensitive(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @user_describe(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  tail call void @seq_puts(ptr noundef %1, ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 13
  %6 = load volatile i16, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 12
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %11) #9
  br label %12

12:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @user_read(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.user_key_payload, ptr %5, i32 0, i32 1
  %7 = load i16, ptr %6, align 8
  %8 = zext i16 %7 to i32
  %9 = icmp ne ptr %1, null
  %10 = icmp ne i32 %2, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = tail call i32 @llvm.umin.i32(i32 %8, i32 %2)
  %14 = getelementptr inbounds %struct.user_key_payload, ptr %5, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %1, ptr align 8 %14, i32 %13, i1 false)
  br label %15

15:                                               ; preds = %12, %3
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @logon_vet_description(ptr noundef readonly %0) #3 {
  %2 = tail call ptr @strchr(ptr noundef %0, i32 noundef 58)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq ptr %2, %0
  %5 = or i1 %3, %4
  %6 = select i1 %5, i32 -22, i32 0
  ret i32 %6
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_payload_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @user_free_payload_rcu(ptr noundef %0) #0 {
  tail call void @kfree_sensitive(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind allocsize(0) }
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
!8 = !{i64 2151214428}
!9 = !{i64 2152228548}
