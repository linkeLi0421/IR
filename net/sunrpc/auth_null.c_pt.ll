; ModuleID = '/llk/IR/net/sunrpc/auth_null.c_pt.bc'
source_filename = "../net/sunrpc/auth_null.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rpc_authops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rpc_cred = type { %struct.hlist_node, %struct.list_head, %struct.callback_head, ptr, ptr, i32, i32, %struct.refcount_struct, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rpc_credops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.135, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.135 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.139, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.139 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@authnull_ops = dso_local constant %struct.rpc_authops { ptr null, i32 0, ptr @.str, ptr @nul_create, ptr @nul_destroy, ptr null, ptr @nul_lookup_cred, ptr null, ptr null, ptr null, ptr null }, align 4
@null_auth = internal global %struct.rpc_auth { i32 4, i32 2, i32 2, i32 2, i32 0, ptr @authnull_ops, i32 0, %struct.refcount_struct { %struct.atomic_t { i32 1 } }, ptr null }, align 4
@null_cred = internal global %struct.rpc_cred { %struct.hlist_node zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @null_cred, i64 8), ptr getelementptr (i8, ptr @null_cred, i64 8) }, %struct.callback_head zeroinitializer, ptr @null_auth, ptr @null_credops, i32 0, i32 2, %struct.refcount_struct { %struct.atomic_t { i32 2 } }, ptr null }, align 4
@null_credops = internal constant %struct.rpc_credops { ptr @.str.1, ptr null, ptr @nul_destroy_cred, ptr @nul_match, ptr @nul_marshal, ptr @nul_refresh, ptr @nul_validate, ptr @rpcauth_wrap_req_encode, ptr @rpcauth_unwrap_resp_decode, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"AUTH_NULL\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nul_create(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.rpc_auth, ptr @null_auth, i32 0, i32 7)) #4, !srcloc !8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.rpc_auth, ptr @null_auth, i32 0, i32 7), ptr getelementptr inbounds (%struct.rpc_auth, ptr @null_auth, i32 0, i32 7), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.rpc_auth, ptr @null_auth, i32 0, i32 7)) #4, !srcloc !9
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !10

6:                                                ; preds = %2
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !11

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 2, %2 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef getelementptr inbounds (%struct.rpc_auth, ptr @null_auth, i32 0, i32 7), i32 noundef %11) #4
  br label %12

12:                                               ; preds = %10, %6
  ret ptr @null_auth
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @nul_destroy(ptr nocapture noundef %0) #1 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nul_lookup_cred(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.rpc_cred, ptr @null_cred, i32 0, i32 7), align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %16, %3
  %7 = phi i32 [ %14, %16 ], [ %4, %3 ]
  %8 = add i32 %7, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.rpc_cred, ptr @null_cred, i32 0, i32 7)) #4, !srcloc !8
  br label %9

9:                                                ; preds = %9, %6
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.rpc_cred, ptr @null_cred, i32 0, i32 7), ptr getelementptr inbounds (%struct.rpc_cred, ptr @null_cred, i32 0, i32 7), i32 %7, i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.rpc_cred, ptr @null_cred, i32 0, i32 7)) #4, !srcloc !12
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9
  %14 = extractvalue { i32, i32 } %10, 1
  %15 = icmp eq i32 %14, %7
  br i1 %15, label %18, label %16, !prof !11

16:                                               ; preds = %13
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %18, label %6

18:                                               ; preds = %16, %13, %3
  %19 = phi i32 [ 0, %3 ], [ %7, %13 ], [ 0, %16 ]
  %20 = add i32 %19, 1
  %21 = or i32 %20, %19
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %24, label %23, !prof !11

23:                                               ; preds = %18
  tail call void @refcount_warn_saturate(ptr noundef getelementptr inbounds (%struct.rpc_cred, ptr @null_cred, i32 0, i32 7), i32 noundef 0) #4
  br label %24

24:                                               ; preds = %23, %18
  %25 = icmp eq i32 %19, 0
  %26 = select i1 %25, ptr null, ptr @null_cred
  ret ptr %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @nul_destroy_cred(ptr nocapture noundef %0) #1 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nul_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #1 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nul_marshal(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %6

6:                                                ; preds = %5, %2
  %7 = phi i32 [ 0, %5 ], [ -90, %2 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nul_refresh(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rpc_cred, ptr %5, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %6) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nul_validate(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = getelementptr i32, ptr %3, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 0, i32 -5
  br label %13

13:                                               ; preds = %8, %5, %2
  %14 = phi i32 [ -5, %2 ], [ -5, %5 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_wrap_req_encode(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_unwrap_resp_decode(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
!8 = !{i64 542541, i64 2148032512, i64 2148032538, i64 2148032585, i64 2148032607, i64 2148032635, i64 2148032655}
!9 = !{i64 2148045385, i64 2148045417, i64 2148045446, i64 2148045480, i64 2148045511, i64 2148045534}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 528604, i64 528628, i64 528649, i64 528666, i64 528683}
