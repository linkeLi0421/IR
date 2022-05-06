; ModuleID = '/llk/IR/fs/nfs/symlink.c_pt.bc'
source_filename = "../fs/nfs/symlink.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.130, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.131, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.132, ptr, %struct.address_space, %struct.list_head, %union.anon.133, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.130 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.131 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.132 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.133 = type { ptr }
%struct.page = type { i32, %union.anon.16, %union.anon.31, %struct.atomic_t }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.31 = type { %struct.atomic_t }
%struct.delayed_call = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.138 }
%union.anon.138 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@nfs_symlink_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr @nfs_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfs_setattr, ptr @nfs_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nfs_get_link(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %46

5:                                                ; preds = %3
  %6 = tail call i32 @nfs_revalidate_mapping_rcu(ptr noundef %1) #2
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %9, label %60

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @pagecache_get_page(ptr noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef 0) #2
  %13 = icmp eq ptr %12, null
  br i1 %13, label %60, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19, !prof !8

19:                                               ; preds = %14
  %20 = add i32 %16, -1
  br label %23

21:                                               ; preds = %14
  %22 = ptrtoint ptr %12 to i32
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = inttoptr i32 %24 to ptr
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !9
  br label %56

30:                                               ; preds = %23
  %31 = load volatile i32, ptr %15, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34, !prof !8

34:                                               ; preds = %30
  %35 = add i32 %31, -1
  br label %38

36:                                               ; preds = %30
  %37 = ptrtoint ptr %12 to i32
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = inttoptr i32 %39 to ptr
  %41 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #2, !srcloc !11
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #2, !srcloc !12
  %43 = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %38
  tail call void @__put_page(ptr noundef %40) #2
  br label %60

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %48 = load ptr, ptr %47, align 8
  %49 = tail call i32 @nfs_revalidate_mapping(ptr noundef %1, ptr noundef %48) #2
  %50 = inttoptr i32 %49 to ptr
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 41
  %54 = tail call ptr @read_cache_page(ptr noundef %53, i32 noundef 0, ptr noundef nonnull @nfs_symlink_filler, ptr noundef %1) #2
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %60, label %56

56:                                               ; preds = %52, %29
  %57 = phi ptr [ %54, %52 ], [ %12, %29 ]
  store ptr @page_put_link, ptr %2, align 4
  %58 = getelementptr inbounds %struct.delayed_call, ptr %2, i32 0, i32 1
  store ptr %57, ptr %58, align 4
  %59 = tail call ptr @page_address(ptr noundef %57) #2
  br label %60

60:                                               ; preds = %56, %52, %46, %45, %38, %9, %5
  %61 = phi ptr [ %59, %56 ], [ %7, %5 ], [ %50, %46 ], [ inttoptr (i32 -10 to ptr), %9 ], [ inttoptr (i32 -10 to ptr), %38 ], [ inttoptr (i32 -10 to ptr), %45 ], [ %54, %52 ]
  ret ptr %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_setattr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_revalidate_mapping_rcu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_revalidate_mapping(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_symlink_filler(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nfs_client, ptr %7, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %9, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 4096) #2
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #2, !srcloc !14
  tail call void @_set_bit(i32 noundef 2, ptr noundef %1) #2
  br label %27

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !8

20:                                               ; preds = %15
  %21 = add i32 %17, -1
  br label %24

22:                                               ; preds = %15
  %23 = ptrtoint ptr %1 to i32
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = inttoptr i32 %25 to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %26) #2
  br label %27

27:                                               ; preds = %24, %14
  %28 = phi i32 [ -5, %24 ], [ 0, %14 ]
  tail call void @unlock_page(ptr noundef %1) #2
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_put_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!9 = !{i64 2150196507}
!10 = !{i64 2148003337}
!11 = !{i64 401296, i64 2147891267, i64 2147891293, i64 2147891340, i64 2147891362, i64 2147891390, i64 2147891410}
!12 = !{i64 2147905723, i64 2147905755, i64 2147905784, i64 2147905818, i64 2147905849, i64 2147905872}
!13 = !{i64 2148003540}
!14 = !{i64 2150197528}
