; ModuleID = '/llk/IR/net/sunrpc/auth_gss/gss_mech_switch.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/gss_mech_switch.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gss_mech_register:\09\09\09\09\09"
module asm "\09.asciz \09\22gss_mech_register\22\09\09\09\09\09"
module asm "__kstrtabns_gss_mech_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gss_mech_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22gss_mech_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_gss_mech_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gss_mech_get:\09\09\09\09\09"
module asm "\09.asciz \09\22gss_mech_get\22\09\09\09\09\09"
module asm "__kstrtabns_gss_mech_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gss_pseudoflavor_to_service:\09\09\09\09\09"
module asm "\09.asciz \09\22gss_pseudoflavor_to_service\22\09\09\09\09\09"
module asm "__kstrtabns_gss_pseudoflavor_to_service:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gss_mech_put:\09\09\09\09\09"
module asm "\09.asciz \09\22gss_mech_put\22\09\09\09\09\09"
module asm "__kstrtabns_gss_mech_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.gss_api_mech = type { %struct.list_head, ptr, %struct.rpcsec_gss_oid, ptr, ptr, i32, ptr, ptr }
%struct.rpcsec_gss_oid = type { i32, [32 x i8] }
%struct.pf_desc = type { i32, i32, i32, ptr, ptr, ptr, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rpcsec_gss_info = type { %struct.rpcsec_gss_oid, i32, i32 }
%struct.gss_api_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gss_ctx = type { ptr, ptr, i32, i32 }

@registered_mechs_lock = internal global %struct.spinlock zeroinitializer, align 4
@registered_mechs = internal global %struct.list_head { ptr @registered_mechs, ptr @registered_mechs }, align 4
@__kstrtab_gss_mech_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_gss_mech_register = external dso_local constant [0 x i8], align 1
@__ksymtab_gss_mech_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gss_mech_register to i32), ptr @__kstrtab_gss_mech_register, ptr @__kstrtabns_gss_mech_register }, section "___ksymtab_gpl+gss_mech_register", align 4
@__kstrtab_gss_mech_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_gss_mech_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_gss_mech_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gss_mech_unregister to i32), ptr @__kstrtab_gss_mech_unregister, ptr @__kstrtabns_gss_mech_unregister }, section "___ksymtab_gpl+gss_mech_unregister", align 4
@__kstrtab_gss_mech_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_gss_mech_get = external dso_local constant [0 x i8], align 1
@__ksymtab_gss_mech_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gss_mech_get to i32), ptr @__kstrtab_gss_mech_get, ptr @__kstrtabns_gss_mech_get }, section "___ksymtab+gss_mech_get", align 4
@.str = private unnamed_addr constant [16 x i8] c"rpc-auth-gss-%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"rpc-auth-gss-%u\00", align 1
@__kstrtab_gss_pseudoflavor_to_service = external dso_local constant [0 x i8], align 1
@__kstrtabns_gss_pseudoflavor_to_service = external dso_local constant [0 x i8], align 1
@__ksymtab_gss_pseudoflavor_to_service = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gss_pseudoflavor_to_service to i32), ptr @__kstrtab_gss_pseudoflavor_to_service, ptr @__kstrtabns_gss_pseudoflavor_to_service }, section "___ksymtab+gss_pseudoflavor_to_service", align 4
@__kstrtab_gss_mech_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_gss_mech_put = external dso_local constant [0 x i8], align 1
@__ksymtab_gss_mech_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gss_mech_put to i32), ptr @__kstrtab_gss_mech_put, ptr @__kstrtabns_gss_mech_put }, section "___ksymtab+gss_mech_put", align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"gss/\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__tracepoint_rpcgss_oid_to_mech = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_gss_mech_get, ptr @__ksymtab_gss_mech_put, ptr @__ksymtab_gss_mech_register, ptr @__ksymtab_gss_mech_unregister, ptr @__ksymtab_gss_pseudoflavor_to_service], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gss_mech_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gss_api_mech, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %49

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gss_api_mech, ptr %0, i32 0, i32 6
  br label %7

7:                                                ; preds = %27, %5
  %8 = phi i32 [ 0, %5 ], [ %29, %27 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr %struct.pf_desc, ptr %9, i32 %8, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @strlen(ptr noundef %11) #12
  %13 = add i32 %12, 5
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3264) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %7
  %17 = getelementptr %struct.pf_desc, ptr %9, i32 %8, i32 4
  store ptr null, ptr %17, align 4
  br label %32

18:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 64 dereferenceable(5) %14, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i32 5, i1 false) #12
  %19 = tail call ptr @strcat(ptr noundef nonnull %14, ptr noundef %11) #12
  %20 = getelementptr %struct.pf_desc, ptr %9, i32 %8, i32 4
  store ptr %14, ptr %20, align 4
  %21 = getelementptr %struct.pf_desc, ptr %9, i32 %8
  %22 = load i32, ptr %21, align 4
  %23 = tail call ptr @svcauth_gss_register_pseudoflavor(i32 noundef %22, ptr noundef nonnull %14) #12
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = ptrtoint ptr %23 to i32
  br label %32

27:                                               ; preds = %18
  %28 = getelementptr %struct.pf_desc, ptr %9, i32 %8, i32 5
  store ptr %23, ptr %28, align 4
  %29 = add nuw nsw i32 %8, 1
  %30 = load i32, ptr %2, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %7, label %49

32:                                               ; preds = %25, %16
  %33 = phi i32 [ %26, %25 ], [ -12, %16 ]
  %34 = load i32, ptr %2, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %43, %32
  %37 = phi i32 [ %46, %43 ], [ 0, %32 ]
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr %struct.pf_desc, ptr %38, i32 %37, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  tail call void @auth_domain_put(ptr noundef nonnull %40) #12
  br label %43

43:                                               ; preds = %42, %36
  %44 = getelementptr %struct.pf_desc, ptr %38, i32 %37, i32 4
  %45 = load ptr, ptr %44, align 4
  tail call void @kfree(ptr noundef %45) #12
  store ptr null, ptr %44, align 4
  %46 = add nuw nsw i32 %37, 1
  %47 = load i32, ptr %2, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %36, label %55

49:                                               ; preds = %27, %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @registered_mechs_lock) #12
  %50 = load ptr, ptr @registered_mechs, align 4
  store ptr %50, ptr %0, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr @registered_mechs, ptr %51, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  store volatile ptr %0, ptr @registered_mechs, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %0, ptr %52, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %53 = load i16, ptr @registered_mechs_lock, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr @registered_mechs_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  br label %55

55:                                               ; preds = %49, %43, %32
  %56 = phi i32 [ 0, %49 ], [ %33, %32 ], [ %33, %43 ]
  ret i32 %56
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gss_mech_unregister(ptr nocapture noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @registered_mechs_lock) #12
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %6 = load i16, ptr @registered_mechs_lock, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr @registered_mechs_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %8 = getelementptr inbounds %struct.gss_api_mech, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.gss_api_mech, ptr %0, i32 0, i32 6
  br label %13

13:                                               ; preds = %20, %11
  %14 = phi i32 [ 0, %11 ], [ %23, %20 ]
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr %struct.pf_desc, ptr %15, i32 %14, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void @auth_domain_put(ptr noundef nonnull %17) #12
  br label %20

20:                                               ; preds = %19, %13
  %21 = getelementptr %struct.pf_desc, ptr %15, i32 %14, i32 4
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #12
  store ptr null, ptr %21, align 4
  %23 = add nuw nsw i32 %14, 1
  %24 = load i32, ptr %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %13, label %26

26:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gss_mech_get(ptr noundef readonly returned %0) #0 {
  %2 = getelementptr inbounds %struct.gss_api_mech, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @__module_get(ptr noundef %3) #12
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gss_mech_get_by_name(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @registered_mechs, %1 ], [ %4, %6 ]
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @registered_mechs
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gss_api_mech, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @strcmp(ptr noundef %0, ptr noundef %8) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %2

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gss_api_mech, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call zeroext i1 @try_module_get(ptr noundef %13) #12
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %2
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %18

16:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %17 = icmp eq ptr %4, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %16, %15
  %19 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  br label %20

20:                                               ; preds = %24, %18
  %21 = phi ptr [ @registered_mechs, %18 ], [ %22, %24 ]
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, @registered_mechs
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.gss_api_mech, ptr %22, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @strcmp(ptr noundef %0, ptr noundef %26) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %20

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.gss_api_mech, ptr %22, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = tail call zeroext i1 @try_module_get(ptr noundef %31) #12
  %33 = select i1 %32, ptr %22, ptr null
  br label %34

34:                                               ; preds = %29, %20
  %35 = phi ptr [ %33, %29 ], [ null, %20 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %36

36:                                               ; preds = %34, %16
  %37 = phi ptr [ %4, %16 ], [ %35, %34 ]
  ret ptr %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gss_mech_get_by_OID(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !15
  %3 = getelementptr inbounds %struct.rpcsec_gss_oid, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %0, align 4
  %5 = call i32 @sprint_oid(ptr noundef %3, i32 noundef %4, ptr noundef nonnull %2, i32 noundef 32) #12
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %48, label %7

7:                                                ; preds = %1
  %8 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef nonnull %2) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %9 = load volatile ptr, ptr @registered_mechs, align 4
  %10 = icmp eq ptr %9, @registered_mechs
  br i1 %10, label %29, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 4
  br label %13

13:                                               ; preds = %26, %11
  %14 = phi ptr [ %9, %11 ], [ %27, %26 ]
  %15 = getelementptr inbounds %struct.gss_api_mech, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.gss_api_mech, ptr %14, i32 0, i32 2, i32 1
  %20 = call i32 @bcmp(ptr %3, ptr %19, i32 %12)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gss_api_mech, ptr %14, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = call zeroext i1 @try_module_get(ptr noundef %24) #12
  br i1 %25, label %30, label %29

26:                                               ; preds = %18, %13
  %27 = load volatile ptr, ptr %14, align 4
  %28 = icmp eq ptr %27, @registered_mechs
  br i1 %28, label %29, label %13

29:                                               ; preds = %26, %22, %7
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %32

30:                                               ; preds = %22
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %31 = icmp eq ptr %14, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %30, %29
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_oid_to_mech, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = tail call ptr @llvm.thread.pointer() #12
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %47 = call i32 @__traceiter_rpcgss_oid_to_mech(ptr noundef null, ptr noundef nonnull %2) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  br label %48

48:                                               ; preds = %46, %35, %32, %30, %1
  %49 = phi ptr [ null, %1 ], [ %14, %30 ], [ null, %32 ], [ null, %35 ], [ null, %46 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  ret ptr %49
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_oid(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gss_mech_get_by_pseudoflavor(i32 noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %2 = load volatile ptr, ptr @registered_mechs, align 4
  %3 = icmp eq ptr %2, @registered_mechs
  br i1 %3, label %27, label %4

4:                                                ; preds = %20, %1
  %5 = phi ptr [ %21, %20 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.gss_api_mech, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gss_api_mech, ptr %5, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  br label %15

12:                                               ; preds = %15
  %13 = add nuw nsw i32 %16, 1
  %14 = icmp eq i32 %13, %7
  br i1 %14, label %20, label %15

15:                                               ; preds = %12, %9
  %16 = phi i32 [ 0, %9 ], [ %13, %12 ]
  %17 = getelementptr %struct.pf_desc, ptr %11, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %23, label %12

20:                                               ; preds = %12, %4
  %21 = load volatile ptr, ptr %5, align 4
  %22 = icmp eq ptr %21, @registered_mechs
  br i1 %22, label %27, label %4

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.gss_api_mech, ptr %5, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call zeroext i1 @try_module_get(ptr noundef %25) #12
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %20, %1
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %30

28:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %29 = icmp eq ptr %5, null
  br i1 %29, label %30, label %60

30:                                               ; preds = %28, %27
  %31 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1, i32 noundef %0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %32 = load volatile ptr, ptr @registered_mechs, align 4
  %33 = icmp eq ptr %32, @registered_mechs
  br i1 %33, label %58, label %34

34:                                               ; preds = %50, %30
  %35 = phi ptr [ %51, %50 ], [ %32, %30 ]
  %36 = getelementptr inbounds %struct.gss_api_mech, ptr %35, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.gss_api_mech, ptr %35, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  br label %45

42:                                               ; preds = %45
  %43 = add nuw nsw i32 %46, 1
  %44 = icmp eq i32 %43, %37
  br i1 %44, label %50, label %45

45:                                               ; preds = %42, %39
  %46 = phi i32 [ 0, %39 ], [ %43, %42 ]
  %47 = getelementptr %struct.pf_desc, ptr %41, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, %0
  br i1 %49, label %53, label %42

50:                                               ; preds = %42, %34
  %51 = load volatile ptr, ptr %35, align 4
  %52 = icmp eq ptr %51, @registered_mechs
  br i1 %52, label %58, label %34

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.gss_api_mech, ptr %35, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = tail call zeroext i1 @try_module_get(ptr noundef %55) #12
  %57 = select i1 %56, ptr %35, ptr null
  br label %58

58:                                               ; preds = %53, %50, %30
  %59 = phi ptr [ %57, %53 ], [ null, %30 ], [ null, %50 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %60

60:                                               ; preds = %58, %28
  %61 = phi ptr [ %5, %28 ], [ %59, %58 ]
  ret ptr %61
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @gss_svc_to_pseudoflavor(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.gss_api_mech, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gss_api_mech, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %22, %7
  %11 = phi i32 [ 0, %7 ], [ %23, %22 ]
  %12 = getelementptr %struct.pf_desc, ptr %9, i32 %11, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = getelementptr %struct.pf_desc, ptr %9, i32 %11, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr %struct.pf_desc, ptr %9, i32 %11
  %21 = load i32, ptr %20, align 4
  br label %25

22:                                               ; preds = %15, %10
  %23 = add nuw nsw i32 %11, 1
  %24 = icmp eq i32 %23, %5
  br i1 %24, label %25, label %10

25:                                               ; preds = %22, %19, %3
  %26 = phi i32 [ %21, %19 ], [ 8, %3 ], [ 8, %22 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gss_mech_info2flavor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @gss_mech_get_by_OID(ptr noundef %0)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rpcsec_gss_info, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rpcsec_gss_info, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gss_api_mech, ptr %2, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.gss_api_mech, ptr %2, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %27, %12
  %16 = phi i32 [ 0, %12 ], [ %28, %27 ]
  %17 = getelementptr %struct.pf_desc, ptr %14, i32 %16, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %6
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = getelementptr %struct.pf_desc, ptr %14, i32 %16, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %8
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr %struct.pf_desc, ptr %14, i32 %16
  %26 = load i32, ptr %25, align 4
  br label %30

27:                                               ; preds = %20, %15
  %28 = add nuw nsw i32 %16, 1
  %29 = icmp eq i32 %28, %10
  br i1 %29, label %30, label %15

30:                                               ; preds = %27, %24, %4
  %31 = phi i32 [ %26, %24 ], [ 8, %4 ], [ 8, %27 ]
  %32 = getelementptr inbounds %struct.gss_api_mech, ptr %2, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void @module_put(ptr noundef %33) #12
  br label %34

34:                                               ; preds = %30, %1
  %35 = phi i32 [ %31, %30 ], [ 8, %1 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gss_mech_put(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gss_api_mech, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @module_put(ptr noundef %5) #12
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gss_mech_flavor2info(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @gss_mech_get_by_pseudoflavor(i32 noundef %0)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gss_api_mech, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gss_api_mech, ptr %3, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %31, %9
  %13 = phi i32 [ 0, %9 ], [ %32, %31 ]
  %14 = getelementptr %struct.pf_desc, ptr %11, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %0
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rpcsec_gss_oid, ptr %1, i32 0, i32 1
  %19 = getelementptr inbounds %struct.gss_api_mech, ptr %3, i32 0, i32 2
  %20 = getelementptr inbounds %struct.gss_api_mech, ptr %3, i32 0, i32 2, i32 1
  %21 = load i32, ptr %19, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %18, ptr align 4 %20, i32 %21, i1 false)
  %22 = load i32, ptr %19, align 4
  store i32 %22, ptr %1, align 4
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr %struct.pf_desc, ptr %23, i32 %13, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.rpcsec_gss_info, ptr %1, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr %struct.pf_desc, ptr %27, i32 %13, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.rpcsec_gss_info, ptr %1, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  br label %34

31:                                               ; preds = %12
  %32 = add nuw nsw i32 %13, 1
  %33 = icmp eq i32 %32, %7
  br i1 %33, label %34, label %12

34:                                               ; preds = %31, %17, %5
  %35 = phi i32 [ 0, %17 ], [ -2, %5 ], [ -2, %31 ]
  %36 = getelementptr inbounds %struct.gss_api_mech, ptr %3, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void @module_put(ptr noundef %37) #12
  br label %38

38:                                               ; preds = %34, %2
  %39 = phi i32 [ -2, %2 ], [ %35, %34 ]
  ret i32 %39
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @gss_pseudoflavor_to_service(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.gss_api_mech, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gss_api_mech, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %17, %6
  %10 = phi i32 [ 0, %6 ], [ %18, %17 ]
  %11 = getelementptr %struct.pf_desc, ptr %8, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr %struct.pf_desc, ptr %8, i32 %10, i32 2
  %16 = load i32, ptr %15, align 4
  br label %20

17:                                               ; preds = %9
  %18 = add nuw nsw i32 %10, 1
  %19 = icmp eq i32 %18, %4
  br i1 %19, label %20, label %9

20:                                               ; preds = %17, %14, %2
  %21 = phi i32 [ %16, %14 ], [ 0, %2 ], [ 0, %17 ]
  ret i32 %21
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @gss_pseudoflavor_to_datatouch(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gss_api_mech, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gss_api_mech, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %18, %6
  %10 = phi i32 [ 0, %6 ], [ %19, %18 ]
  %11 = getelementptr %struct.pf_desc, ptr %8, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr %struct.pf_desc, ptr %8, i32 %10, i32 6
  %16 = load i8, ptr %15, align 4, !range !18
  %17 = icmp ne i8 %16, 0
  br label %21

18:                                               ; preds = %9
  %19 = add nuw nsw i32 %10, 1
  %20 = icmp eq i32 %19, %4
  br i1 %20, label %21, label %9

21:                                               ; preds = %18, %14, %2
  %22 = phi i1 [ %17, %14 ], [ false, %2 ], [ false, %18 ]
  ret i1 %22
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @gss_service_to_auth_domain_name(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gss_api_mech, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gss_api_mech, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %17, %6
  %10 = phi i32 [ 0, %6 ], [ %18, %17 ]
  %11 = getelementptr %struct.pf_desc, ptr %8, i32 %10, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr %struct.pf_desc, ptr %8, i32 %10, i32 4
  %16 = load ptr, ptr %15, align 4
  br label %20

17:                                               ; preds = %9
  %18 = add nuw nsw i32 %10, 1
  %19 = icmp eq i32 %18, %4
  br i1 %19, label %20, label %9

20:                                               ; preds = %17, %14, %2
  %21 = phi ptr [ %16, %14 ], [ null, %2 ], [ null, %17 ]
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gss_import_sec_context(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = and i32 %5, 17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9, !prof !19

9:                                                ; preds = %6
  %10 = and i32 %5, 1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 1, i32 2
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i32 [ 0, %6 ], [ %12, %9 ]
  %15 = or i32 %5, 256
  %16 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %14, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef %15, i32 noundef 16) #14
  store ptr %18, ptr %3, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.gss_api_mech, ptr %2, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void @__module_get(ptr noundef %22) #12
  %23 = load ptr, ptr %3, align 4
  store ptr %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.gss_api_mech, ptr %2, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %3, align 4
  %28 = tail call i32 %26(ptr noundef %0, i32 noundef %1, ptr noundef %27, ptr noundef %4, i32 noundef %5) #12
  br label %29

29:                                               ; preds = %20, %13
  %30 = phi i32 [ %28, %20 ], [ -12, %13 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gss_get_mic(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.gss_api_mech, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gss_api_ops, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gss_verify_mic(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.gss_api_mech, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gss_api_ops, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gss_wrap(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.gss_api_mech, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gss_api_ops, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gss_unwrap(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.gss_api_mech, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gss_api_ops, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gss_delete_sec_context(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gss_ctx, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.gss_api_mech, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.gss_api_ops, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef nonnull %6) #12
  %14 = load ptr, ptr %0, align 4
  br label %15

15:                                               ; preds = %8, %4
  %16 = phi ptr [ %14, %8 ], [ %2, %4 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.gss_api_mech, ptr %17, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void @module_put(ptr noundef %21) #12
  %22 = load ptr, ptr %0, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi ptr [ %16, %15 ], [ %22, %19 ]
  tail call void @kfree(ptr noundef %24) #12
  store ptr null, ptr %0, align 4
  br label %25

25:                                               ; preds = %23, %1
  %26 = phi i32 [ 0, %23 ], [ 524288, %1 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svcauth_gss_register_pseudoflavor(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @auth_domain_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_oid_to_mech(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

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
!8 = !{i64 2150716832}
!9 = !{i64 2148932823}
!10 = !{i64 2148928647}
!11 = !{i64 2148928722, i64 2148928749, i64 2148928796, i64 2148928818, i64 2148928846, i64 2148928866}
!12 = !{i64 2148955826}
!13 = !{i64 2149331595}
!14 = !{i64 2149331812}
!15 = !{!"auto-init"}
!16 = !{i64 2156372326}
!17 = !{i64 2156376541}
!18 = !{i8 0, i8 2}
!19 = !{!"branch_weights", i32 2000, i32 1}
