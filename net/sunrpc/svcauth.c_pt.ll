; ModuleID = '/llk/IR/net/sunrpc/svcauth.c_pt.bc'
source_filename = "../net/sunrpc/svcauth.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_authenticate:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_authenticate\22\09\09\09\09\09"
module asm "__kstrtabns_svc_authenticate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_set_client:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_set_client\22\09\09\09\09\09"
module asm "__kstrtabns_svc_set_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_auth_register:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_auth_register\22\09\09\09\09\09"
module asm "__kstrtabns_svc_auth_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_auth_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_auth_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_svc_auth_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_auth_domain_put:\09\09\09\09\09"
module asm "\09.asciz \09\22auth_domain_put\22\09\09\09\09\09"
module asm "__kstrtabns_auth_domain_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_auth_domain_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22auth_domain_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_auth_domain_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_auth_domain_find:\09\09\09\09\09"
module asm "\09.asciz \09\22auth_domain_find\22\09\09\09\09\09"
module asm "__kstrtabns_auth_domain_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.auth_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.118 }
%union.anon.118 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.auth_domain = type { %struct.kref, %struct.hlist_node, ptr, ptr, %struct.callback_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }

@__kstrtab_svc_authenticate = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_authenticate = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_authenticate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_authenticate to i32), ptr @__kstrtab_svc_authenticate, ptr @__kstrtabns_svc_authenticate }, section "___ksymtab_gpl+svc_authenticate", align 4
@__kstrtab_svc_set_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_set_client = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_set_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_set_client to i32), ptr @__kstrtab_svc_set_client, ptr @__kstrtabns_svc_set_client }, section "___ksymtab_gpl+svc_set_client", align 4
@authtab = internal global [8 x ptr] [ptr @svcauth_null, ptr @svcauth_unix, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], align 4
@__kstrtab_svc_auth_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_auth_register = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_auth_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_auth_register to i32), ptr @__kstrtab_svc_auth_register, ptr @__kstrtabns_svc_auth_register }, section "___ksymtab_gpl+svc_auth_register", align 4
@__kstrtab_svc_auth_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_auth_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_auth_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_auth_unregister to i32), ptr @__kstrtab_svc_auth_unregister, ptr @__kstrtabns_svc_auth_unregister }, section "___ksymtab_gpl+svc_auth_unregister", align 4
@auth_domain_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab_auth_domain_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_auth_domain_put = external dso_local constant [0 x i8], align 1
@__ksymtab_auth_domain_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @auth_domain_put to i32), ptr @__kstrtab_auth_domain_put, ptr @__kstrtabns_auth_domain_put }, section "___ksymtab_gpl+auth_domain_put", align 4
@auth_domain_table = internal global [64 x %struct.hlist_head] zeroinitializer, align 4
@__kstrtab_auth_domain_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_auth_domain_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_auth_domain_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @auth_domain_lookup to i32), ptr @__kstrtab_auth_domain_lookup, ptr @__kstrtabns_auth_domain_lookup }, section "___ksymtab_gpl+auth_domain_lookup", align 4
@__kstrtab_auth_domain_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_auth_domain_find = external dso_local constant [0 x i8], align 1
@__ksymtab_auth_domain_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @auth_domain_find to i32), ptr @__kstrtab_auth_domain_find, ptr @__kstrtabns_auth_domain_find }, section "___ksymtab_gpl+auth_domain_find", align 4
@.str = private unnamed_addr constant [50 x i8] c"\014svc: domain %s still present at module unload.\0A\00", align 1
@svcauth_null = external dso_local global %struct.auth_ops, align 4
@svcauth_unix = external dso_local global %struct.auth_ops, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_auth_domain_find, ptr @__ksymtab_auth_domain_lookup, ptr @__ksymtab_auth_domain_put, ptr @__ksymtab_svc_auth_register, ptr @__ksymtab_svc_auth_unregister, ptr @__ksymtab_svc_authenticate, ptr @__ksymtab_svc_set_client], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_authenticate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 38
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i32, ptr %4, i32 1
  %6 = load i32, ptr %4, align 4
  store ptr %5, ptr %3, align 4
  %7 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -4
  store i32 %9, ptr %7, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %11 = icmp ugt i32 %10, 7
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %13 = getelementptr [8 x ptr], ptr @authtab, i32 0, i32 %10
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.auth_ops, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call zeroext i1 @try_module_get(ptr noundef %18) #8
  br i1 %19, label %22, label %20

20:                                               ; preds = %16, %12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  br label %21

21:                                               ; preds = %20, %1
  store i32 16777216, ptr %2, align 4
  br label %30

22:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %23 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 39
  store i32 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 11, i32 2
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 11, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %25, i8 0, i64 16, i1 false) #8
  %26 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 10
  store ptr %14, ptr %26, align 8
  %27 = getelementptr inbounds %struct.auth_ops, ptr %14, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %0) #8
  br label %30

30:                                               ; preds = %22, %21
  %31 = phi i32 [ 8, %21 ], [ %29, %22 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_set_client(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 43
  store ptr null, ptr %2, align 8
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.auth_ops, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0) #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_authorise(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  store ptr null, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.auth_ops, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #8
  %9 = getelementptr inbounds %struct.auth_ops, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @module_put(ptr noundef %10) #8
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i32 [ %8, %5 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_auth_register(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp ult i32 %0, 8
  br i1 %3, label %4, label %18

4:                                                ; preds = %2
  %5 = getelementptr [8 x ptr], ptr @authtab, i32 0, i32 %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %6 = ptrtoint ptr %1 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #8, !srcloc !11
  br label %7

7:                                                ; preds = %7, %4
  %8 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %5, i32 0, i32 %6) #8, !srcloc !12
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %7

11:                                               ; preds = %7
  %12 = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %13 = icmp eq i32 %12, 0
  %14 = inttoptr i32 %12 to ptr
  %15 = icmp eq ptr %14, %1
  %16 = or i1 %13, %15
  %17 = select i1 %16, i32 0, i32 -22
  br label %18

18:                                               ; preds = %11, %2
  %19 = phi i32 [ -22, %2 ], [ %17, %11 ]
  ret i32 %19
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_auth_unregister(i32 noundef %0) #1 {
  %2 = icmp ult i32 %0, 8
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = getelementptr [8 x ptr], ptr @authtab, i32 0, i32 %0
  store volatile ptr null, ptr %4, align 4
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @auth_domain_put(ptr noundef %0) #0 {
  %2 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %0, ptr noundef nonnull @auth_domain_lock) #8
  br i1 %2, label %3, label %18

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.auth_domain, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.auth_domain, ptr %0, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  store volatile ptr %5, ptr %7, align 4
  %8 = icmp eq ptr %5, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  store volatile ptr %7, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %3
  store volatile ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  %12 = getelementptr inbounds %struct.auth_domain, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.auth_ops, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %0) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %16 = load i16, ptr @auth_domain_lock, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr @auth_domain_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %18

18:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @auth_domain_lookup(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i64 @hashlen_string(ptr noundef null, ptr noundef %0) #9
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 26
  %6 = getelementptr [64 x %struct.hlist_head], ptr @auth_domain_table, i32 0, i32 %5
  tail call void @_raw_spin_lock(ptr noundef nonnull @auth_domain_lock) #8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = getelementptr i8, ptr %7, i32 -4
  %10 = icmp eq ptr %9, null
  %11 = or i1 %8, %10
  br i1 %11, label %38, label %12

12:                                               ; preds = %31, %2
  %13 = phi ptr [ %35, %31 ], [ %9, %2 ]
  %14 = getelementptr inbounds %struct.auth_domain, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @strcmp(ptr noundef %15, ptr noundef %0)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #8, !srcloc !11
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #8, !srcloc !18
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !19

22:                                               ; preds = %18
  %23 = add i32 %20, 1
  %24 = or i32 %23, %20
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %28, label %26, !prof !20

26:                                               ; preds = %22, %18
  %27 = phi i32 [ 2, %18 ], [ 1, %22 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef %27) #8
  br label %28

28:                                               ; preds = %26, %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %29 = load i16, ptr @auth_domain_lock, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr @auth_domain_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %48

31:                                               ; preds = %12
  %32 = getelementptr inbounds %struct.auth_domain, ptr %13, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  %35 = getelementptr i8, ptr %33, i32 -4
  %36 = icmp eq ptr %35, null
  %37 = or i1 %34, %36
  br i1 %37, label %38, label %12

38:                                               ; preds = %31, %2
  %39 = icmp eq ptr %1, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.auth_domain, ptr %1, i32 0, i32 1
  store ptr %7, ptr %41, align 4
  %42 = getelementptr inbounds %struct.auth_domain, ptr %1, i32 0, i32 1, i32 1
  store volatile ptr %6, ptr %42, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  store volatile ptr %41, ptr %6, align 4
  br i1 %8, label %45, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  store volatile ptr %41, ptr %44, align 4
  br label %45

45:                                               ; preds = %43, %40, %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %46 = load i16, ptr @auth_domain_lock, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr @auth_domain_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %48

48:                                               ; preds = %45, %28
  %49 = phi ptr [ %13, %28 ], [ %1, %45 ]
  ret ptr %49
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @auth_domain_find(ptr noundef %0) #0 {
  %2 = tail call i64 @hashlen_string(ptr noundef null, ptr noundef %0) #9
  %3 = trunc i64 %2 to i32
  %4 = lshr i32 %3, 26
  %5 = getelementptr [64 x %struct.hlist_head], ptr @auth_domain_table, i32 0, i32 %4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = getelementptr i8, ptr %6, i32 -4
  %9 = icmp eq ptr %8, null
  %10 = or i1 %7, %9
  br i1 %10, label %48, label %11

11:                                               ; preds = %41, %1
  %12 = phi ptr [ %45, %41 ], [ %8, %1 ]
  %13 = getelementptr inbounds %struct.auth_domain, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @strcmp(ptr noundef %14, ptr noundef %0)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load volatile i32, ptr %12, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %30, %17
  %21 = phi i32 [ %28, %30 ], [ %18, %17 ]
  %22 = add i32 %21, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %12) #8, !srcloc !11
  br label %23

23:                                               ; preds = %23, %20
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %12, ptr nonnull %12, i32 %21, i32 %22, ptr nonnull elementtype(i32) %12) #8, !srcloc !22
  %25 = extractvalue { i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %23

27:                                               ; preds = %23
  %28 = extractvalue { i32, i32 } %24, 1
  %29 = icmp eq i32 %28, %21
  br i1 %29, label %32, label %30, !prof !20

30:                                               ; preds = %27
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %32, label %20

32:                                               ; preds = %30, %27, %17
  %33 = phi i32 [ 0, %17 ], [ %21, %27 ], [ 0, %30 ]
  %34 = add i32 %33, 1
  %35 = or i32 %34, %33
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %38, label %37, !prof !20

37:                                               ; preds = %32
  tail call void @refcount_warn_saturate(ptr noundef nonnull %12, i32 noundef 0) #8
  br label %38

38:                                               ; preds = %37, %32
  %39 = icmp eq i32 %33, 0
  %40 = select i1 %39, ptr null, ptr %12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  br label %49

41:                                               ; preds = %11
  %42 = getelementptr inbounds %struct.auth_domain, ptr %12, i32 0, i32 1
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  %45 = getelementptr i8, ptr %43, i32 -4
  %46 = icmp eq ptr %45, null
  %47 = or i1 %44, %46
  br i1 %47, label %48, label %11

48:                                               ; preds = %41, %1
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  br label %49

49:                                               ; preds = %48, %38
  %50 = phi ptr [ %40, %38 ], [ null, %48 ]
  ret ptr %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @auth_domain_cleanup() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %20, %0
  %2 = phi i32 [ 0, %0 ], [ %21, %20 ]
  %3 = getelementptr [64 x %struct.hlist_head], ptr @auth_domain_table, i32 0, i32 %2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = getelementptr i8, ptr %4, i32 -4
  %7 = icmp eq ptr %6, null
  %8 = or i1 %5, %7
  br i1 %8, label %20, label %9

9:                                                ; preds = %9, %1
  %10 = phi ptr [ %17, %9 ], [ %6, %1 ]
  %11 = getelementptr inbounds %struct.auth_domain, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %12) #10
  %14 = getelementptr inbounds %struct.auth_domain, ptr %10, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = getelementptr i8, ptr %15, i32 -4
  %18 = icmp eq ptr %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %20, label %9

20:                                               ; preds = %9, %1
  %21 = add nuw nsw i32 %2, 1
  %22 = icmp eq i32 %21, 64
  br i1 %22, label %23, label %1

23:                                               ; preds = %20
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i64 @hashlen_string(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { cold nounwind }

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
!8 = !{i64 2149048031}
!9 = !{i64 2149048248}
!10 = !{i64 2158207521}
!11 = !{i64 545151, i64 2148035122, i64 2148035148, i64 2148035195, i64 2148035217, i64 2148035245, i64 2148035265}
!12 = !{i64 556525, i64 556546, i64 556569, i64 556588, i64 556607}
!13 = !{i64 2158207909}
!14 = !{i64 2148929676}
!15 = !{i64 2148925500}
!16 = !{i64 2148925575, i64 2148925602, i64 2148925649, i64 2148925671, i64 2148925699, i64 2148925719}
!17 = !{i64 2148952679}
!18 = !{i64 2148047995, i64 2148048027, i64 2148048056, i64 2148048090, i64 2148048121, i64 2148048144}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2150496897}
!22 = !{i64 531214, i64 531238, i64 531259, i64 531276, i64 531293}
