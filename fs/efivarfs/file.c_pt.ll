; ModuleID = '/llk/IR/fs/efivarfs/file.c_pt.bc'
source_filename = "../fs/efivarfs/file.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.31 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.31 = type { %struct.callback_head }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr }
%union.anon.58 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.59 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }

@efivarfs_file_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @efivarfs_file_read, ptr @efivarfs_file_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__func__.efivarfs_file_read = private unnamed_addr constant [19 x i8] c"efivarfs_file_read\00", align 1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efivarfs_file_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 12
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.user_struct, ptr %12, i32 0, i32 7
  %14 = tail call i32 @___ratelimit(ptr noundef %13, ptr noundef nonnull @__func__.efivarfs_file_read) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %16, %4
  tail call void @msleep(i32 noundef 50) #7
  %17 = load ptr, ptr %9, align 8
  %18 = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 20
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.user_struct, ptr %19, i32 0, i32 7
  %21 = tail call i32 @___ratelimit(ptr noundef %20, ptr noundef nonnull @__func__.efivarfs_file_read) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %16, label %23

23:                                               ; preds = %16, %4
  %24 = call i32 @efivar_entry_size(ptr noundef %8, ptr noundef nonnull %5) #7
  switch i32 %24, label %25 [
    i32 -2, label %42
    i32 0, label %26
  ]

25:                                               ; preds = %23
  br label %42

26:                                               ; preds = %23
  %27 = load i32, ptr %5, align 4
  %28 = add i32 %27, 4
  %29 = call noalias align 64 ptr @__kmalloc(i32 noundef %28, i32 noundef 3264) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %26
  %32 = getelementptr i8, ptr %29, i32 4
  %33 = call i32 @efivar_entry_get(ptr noundef %8, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef %32) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, ptr %6, align 4
  store i32 %36, ptr %29, align 64
  %37 = load i32, ptr %5, align 4
  %38 = add i32 %37, 4
  %39 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %29, i32 noundef %38) #7
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi i32 [ %33, %31 ], [ %39, %35 ]
  call void @kfree(ptr noundef nonnull %29) #7
  br label %42

42:                                               ; preds = %40, %26, %25, %23
  %43 = phi i32 [ %24, %25 ], [ %41, %40 ], [ 0, %23 ], [ -12, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efivarfs_file_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #1 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.timespec64, align 8
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  %14 = add i32 %2, -4
  store i32 %14, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #7
  store i8 0, ptr %7, align 1
  %15 = icmp ult i32 %2, 4
  br i1 %15, label %70, label %16

16:                                               ; preds = %4
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4, i32 -1090519040) #9, !srcloc !9
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28, !prof !10

20:                                               ; preds = %16
  %21 = tail call ptr @llvm.thread.pointer() #7
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #10, !srcloc !11
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #7, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !13
  %26 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #7, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !10

28:                                               ; preds = %20, %16
  %29 = phi i32 [ %26, %20 ], [ 4, %16 ]
  %30 = sub i32 4, %29
  %31 = getelementptr i8, ptr %5, i32 %30
  call void @llvm.memset.p0.i32(ptr align 1 %31, i8 0, i32 %29, i1 false) #7
  br label %70

32:                                               ; preds = %20
  %33 = load i32, ptr %5, align 4
  %34 = icmp ult i32 %33, 128
  br i1 %34, label %35, label %70

35:                                               ; preds = %32
  %36 = getelementptr i8, ptr %1, i32 4
  %37 = call ptr @memdup_user(ptr noundef %36, i32 noundef %14) #7
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = ptrtoint ptr %37 to i32
  br label %70

41:                                               ; preds = %35
  %42 = load i32, ptr %5, align 4
  %43 = call i32 @efivar_entry_set_get_size(ptr noundef %10, i32 noundef %42, ptr noundef nonnull %6, ptr noundef %37, ptr noundef nonnull %7) #7
  %44 = load i8, ptr %7, align 1, !range !14
  %45 = icmp eq i8 %44, 0
  %46 = icmp ne i32 %43, 0
  %47 = select i1 %45, i1 %46, i1 false
  %48 = icmp eq i32 %43, -2
  br i1 %47, label %49, label %51

49:                                               ; preds = %41
  %50 = select i1 %48, i32 -5, i32 %43
  br label %68

51:                                               ; preds = %41
  br i1 %48, label %52, label %56

52:                                               ; preds = %51
  call void @drop_nlink(ptr noundef %13) #7
  %53 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %54 = load ptr, ptr %53, align 4
  call void @d_delete(ptr noundef %54) #7
  %55 = load ptr, ptr %53, align 4
  call void @dput(ptr noundef %55) #7
  br label %68

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 24
  call void @down_write(ptr noundef %57) #7
  %58 = load i32, ptr %6, align 4
  %59 = add i32 %58, 4
  %60 = zext i32 %59 to i64
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  %61 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 22
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !16
  %64 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 13
  store i64 %60, ptr %64, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !17
  %65 = load i32, ptr %61, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %61, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %67 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %8, ptr noundef %13) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %67, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  call void @up_write(ptr noundef %57) #7
  br label %68

68:                                               ; preds = %56, %52, %49
  %69 = phi i32 [ %50, %49 ], [ %2, %56 ], [ %2, %52 ]
  call void @kfree(ptr noundef %37) #7
  br label %70

70:                                               ; preds = %68, %39, %32, %28, %4
  %71 = phi i32 [ %40, %39 ], [ %69, %68 ], [ -22, %4 ], [ -22, %32 ], [ -14, %28 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efivar_entry_size(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efivar_entry_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efivar_entry_set_get_size(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_delete(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }

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
!9 = !{i64 2151013933, i64 2151013958}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 3510045}
!12 = !{i64 3510242}
!13 = !{i64 2150995521}
!14 = !{i8 0, i8 2}
!15 = !{i64 2151334697}
!16 = !{i64 2149551252}
!17 = !{i64 2149551553}
!18 = !{i64 2151342255}
