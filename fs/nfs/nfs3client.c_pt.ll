; ModuleID = '/llk/IR/fs/nfs/nfs3client.c_pt.bc'
source_filename = "../fs/nfs/nfs3client.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs3_set_ds_client:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs3_set_ds_client\22\09\09\09\09\09"
module asm "__kstrtabns_nfs3_set_ds_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rpc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rpc_program = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.nfs_subversion = type opaque
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.rb_root = type { ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.113 }
%union.anon.113 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%struct.nfs_client_initdata = type { i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.126, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%union.anon.126 = type { %struct.work_struct }

@.str = private unnamed_addr constant [7 x i8] c"nfsacl\00", align 1
@nfsacl_version = internal global [4 x ptr] [ptr null, ptr null, ptr null, ptr @nfsacl_version3], align 4
@nfsacl_rpcstat = internal global %struct.rpc_stat { ptr @nfsacl_program, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@nfsacl_program = dso_local constant %struct.rpc_program { ptr @.str, i32 100227, i32 4, ptr @nfsacl_version, ptr @nfsacl_rpcstat, ptr null }, align 4
@nfs_v3 = external dso_local global %struct.nfs_subversion, align 1
@__kstrtab_nfs3_set_ds_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs3_set_ds_client = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs3_set_ds_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs3_set_ds_client to i32), ptr @__kstrtab_nfs3_set_ds_client, ptr @__kstrtabns_nfs3_set_ds_client }, section "___ksymtab_gpl+nfs3_set_ds_client", align 4
@nfsacl_version3 = external dso_local constant %struct.rpc_version, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_nfs3_set_ds_client], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs3_create_server(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @nfs_create_server(ptr noundef %0) #4
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 2048
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @rpc_bind_new_program(ptr noundef %11, ptr noundef nonnull @nfsacl_program, i32 noundef 3) #4
  %13 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 4
  store ptr %12, ptr %13, align 8
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 10
  %17 = load i32, ptr %16, align 8
  %18 = or i32 %17, 8
  store i32 %18, ptr %16, align 8
  br label %23

19:                                               ; preds = %9, %4
  %20 = getelementptr inbounds %struct.nfs_server, ptr %2, i32 0, i32 10
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, -9
  store i32 %22, ptr %20, align 8
  br label %23

23:                                               ; preds = %19, %15, %1
  ret ptr %2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_create_server(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs3_clone_server(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @nfs_clone_server(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %30, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 8
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 2048
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @rpc_bind_new_program(ptr noundef %18, ptr noundef nonnull @nfsacl_program, i32 noundef 3) #4
  %20 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 4
  store ptr %19, ptr %20, align 8
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 10
  %24 = load i32, ptr %23, align 8
  %25 = or i32 %24, 8
  store i32 %25, ptr %23, align 8
  br label %30

26:                                               ; preds = %16, %11
  %27 = getelementptr inbounds %struct.nfs_server, ptr %5, i32 0, i32 10
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, -9
  store i32 %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %26, %22, %7, %4
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_clone_server(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs3_set_ds_client(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.rpc_timeout, align 4
  %8 = alloca %struct.nfs_client_initdata, align 8
  %9 = alloca [49 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false), !annotation !8
  %10 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #4
  %11 = getelementptr inbounds %struct.nfs_client_initdata, ptr %8, i32 0, i32 2
  store i64 0, ptr %8, align 8
  store ptr %1, ptr %11, align 8
  %12 = getelementptr inbounds %struct.nfs_client_initdata, ptr %8, i32 0, i32 3
  %13 = getelementptr inbounds %struct.nfs_client, ptr %10, i32 0, i32 11
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.rpc_clnt, ptr %14, i32 0, i32 19
  store ptr %15, ptr %12, align 4
  %16 = getelementptr inbounds %struct.nfs_client_initdata, ptr %8, i32 0, i32 4
  %17 = getelementptr inbounds %struct.nfs_client, ptr %10, i32 0, i32 43
  store ptr %17, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nfs_client_initdata, ptr %8, i32 0, i32 5
  store i32 %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nfs_client_initdata, ptr %8, i32 0, i32 6
  store ptr @nfs_v3, ptr %19, align 8
  %20 = getelementptr inbounds %struct.nfs_client_initdata, ptr %8, i32 0, i32 7
  store i32 %3, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nfs_client_initdata, ptr %8, i32 0, i32 8
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.nfs_client_initdata, ptr %8, i32 0, i32 9
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nfs_client_initdata, ptr %8, i32 0, i32 10
  store i32 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.nfs_client_initdata, ptr %8, i32 0, i32 11
  %25 = getelementptr inbounds %struct.nfs_client, ptr %10, i32 0, i32 44
  %26 = load ptr, ptr %25, align 8
  store ptr %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.nfs_client_initdata, ptr %8, i32 0, i32 12
  store ptr %7, ptr %27, align 8
  %28 = getelementptr inbounds %struct.nfs_client_initdata, ptr %8, i32 0, i32 13
  %29 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 65
  %30 = load ptr, ptr %29, align 8
  store ptr %30, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 49, ptr nonnull %9) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(49) %9, i8 0, i32 49, i1 false), !annotation !8
  %31 = call i32 @rpc_ntop(ptr noundef %1, ptr noundef nonnull %9, i32 noundef 49) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %6
  %34 = getelementptr inbounds %struct.nfs_client_initdata, ptr %8, i32 0, i32 1
  store ptr %9, ptr %34, align 4
  %35 = getelementptr inbounds %struct.nfs_client, ptr %10, i32 0, i32 16
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %36, 1
  %38 = icmp eq i32 %3, 6
  %39 = and i1 %38, %37
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 %36, ptr %22, align 4
  br label %41

41:                                               ; preds = %40, %33
  %42 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 8
  %43 = load i32, ptr %42, align 8
  %44 = load i32, ptr %8, align 8
  %45 = lshr i32 %43, 18
  %46 = and i32 %45, 1
  %47 = or i32 %46, %44
  %48 = or i32 %47, 192
  store i32 %48, ptr %8, align 8
  call void @nfs_init_timeout_values(ptr noundef nonnull %7, i32 noundef %3, i32 noundef %4, i32 noundef %5) #4
  %49 = call ptr @nfs_get_client(ptr noundef nonnull %8) #4
  br label %50

50:                                               ; preds = %41, %6
  %51 = phi ptr [ %49, %41 ], [ inttoptr (i32 -22 to ptr), %6 ]
  call void @llvm.lifetime.end.p0(i64 49, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #4
  ret ptr %51
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_ntop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_init_timeout_values(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_get_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_bind_new_program(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{!"auto-init"}
