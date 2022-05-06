; ModuleID = '/llk/IR/fs/nfs/nfs4renewd.c_pt.bc'
source_filename = "../fs/nfs/nfs4renewd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfs4_minor_version_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs4_state_maintenance_ops = type { ptr, ptr, ptr }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@system_wq = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_renew_state(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -248
  %3 = getelementptr i8, ptr %0, i32 160
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -236
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %62

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 -8
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr i8, ptr %0, i32 -4
  %15 = load i32, ptr %14, align 4
  %16 = load volatile i32, ptr @jiffies, align 64
  %17 = sdiv i32 %13, 3
  %18 = add i32 %15, %17
  %19 = sub i32 %18, %16
  %20 = lshr i32 %19, 31
  %21 = tail call i32 @nfs_delegations_present(ptr noundef %2) #3
  %22 = icmp eq i32 %21, 0
  %23 = or i32 %20, 2
  %24 = select i1 %22, i32 %20, i32 %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.nfs4_state_maintenance_ops, ptr %6, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = tail call ptr %28(ptr noundef %2) #3
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = and i32 %24, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = getelementptr i8, ptr %0, i32 -16
  tail call void @_set_bit(i32 noundef 2, ptr noundef %35) #3
  br label %62

36:                                               ; preds = %31
  tail call void @nfs_expire_all_delegations(ptr noundef %2) #3
  br label %47

37:                                               ; preds = %26
  %38 = load ptr, ptr %6, align 4
  %39 = tail call i32 %38(ptr noundef %2, ptr noundef nonnull %29, i32 noundef %24) #3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %29) #3, !srcloc !9
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %29, ptr nonnull %29, i32 1, ptr nonnull elementtype(i32) %29) #3, !srcloc !10
  %41 = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void @__put_cred(ptr noundef nonnull %29) #3
  br label %44

44:                                               ; preds = %43, %37
  %45 = and i32 %39, -2
  %46 = icmp eq i32 %45, -12
  br i1 %46, label %47, label %61

47:                                               ; preds = %44, %36, %11
  %48 = getelementptr i8, ptr %0, i32 -12
  tail call void @_raw_spin_lock(ptr noundef %48) #3
  %49 = load i32, ptr %12, align 8
  %50 = shl i32 %49, 1
  %51 = udiv i32 %50, 3
  %52 = load i32, ptr %14, align 4
  %53 = add i32 %51, %52
  %54 = load volatile i32, ptr @jiffies, align 64
  %55 = sub i32 %53, %54
  %56 = tail call i32 @llvm.smax.i32(i32 %55, i32 500) #3
  %57 = load ptr, ptr @system_wq, align 4
  %58 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %57, ptr noundef %0, i32 noundef %56) #3
  tail call void @_set_bit(i32 noundef 3, ptr noundef %7) #3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  %59 = load i16, ptr %48, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %48, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !15
  br label %61

61:                                               ; preds = %47, %44
  tail call void @nfs_expire_unreferenced_delegations(ptr noundef %2) #3
  br label %62

62:                                               ; preds = %61, %34, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_delegations_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_expire_all_delegations(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_schedule_state_renewal(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %2) #3
  %3 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 24
  %4 = load i32, ptr %3, align 8
  %5 = shl i32 %4, 1
  %6 = udiv i32 %5, 3
  %7 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 25
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %6, %8
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = sub i32 %9, %10
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 500)
  %13 = load ptr, ptr @system_wq, align 4
  %14 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 26
  %15 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %13, ptr noundef %14, i32 noundef %12) #3
  %16 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 3, ptr noundef %16) #3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  %17 = load i16, ptr %2, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_expire_unreferenced_delegations(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_kill_renewd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 26
  %3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %2) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_set_lease_period(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %3) #3
  %4 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 24
  store i32 %1, ptr %4, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  %5 = load i16, ptr %3, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !15
  %7 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = lshr i32 %1, 1
  tail call void @rpc_set_connect_timeout(ptr noundef %8, i32 noundef %1, i32 noundef %9) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_set_connect_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
!8 = !{i64 2148445093}
!9 = !{i64 843028, i64 2148332999, i64 2148333025, i64 2148333072, i64 2148333094, i64 2148333122, i64 2148333142}
!10 = !{i64 2148347455, i64 2148347487, i64 2148347516, i64 2148347550, i64 2148347581, i64 2148347604}
!11 = !{i64 2148445296}
!12 = !{i64 2149010094}
!13 = !{i64 2149005918}
!14 = !{i64 2149005993, i64 2149006020, i64 2149006067, i64 2149006089, i64 2149006117, i64 2149006137}
!15 = !{i64 2149033097}
