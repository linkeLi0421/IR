; ModuleID = '/llk/IR/security/keys/keyctl_pkey.c_pt.bc'
source_filename = "../security/keys/keyctl_pkey.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.match_token = type { i32, ptr }
%struct.kernel_pkey_params = type { ptr, ptr, ptr, ptr, i32, %union.anon.8, i8 }
%union.anon.8 = type { i32 }
%struct.kernel_pkey_query = type { i32, i32, i16, i16, i16, i16 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.6, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.2 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.6 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.lock_class_key = type {}
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.keyctl_pkey_query = type { i32, i32, i16, i16, i16, i16, [10 x i32] }
%struct.substring_t = type { ptr, ptr }
%struct.keyctl_pkey_params = type { i32, i32, %union.anon.9, [7 x i32] }
%union.anon.9 = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@param_keys = internal constant [3 x %struct.match_token] [%struct.match_token { i32 1, ptr @.str.2 }, %struct.match_token { i32 2, ptr @.str.3 }, %struct.match_token zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"enc=%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"hash=%s\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_pkey_query(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.kernel_pkey_params, align 4
  %5 = alloca %struct.kernel_pkey_query, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  %6 = call fastcc i32 @keyctl_pkey_params_get(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %40, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.key, ptr %9, i32 0, i32 15, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.key_type, ptr %11, i32 0, i32 16
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 %13(ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %8
  %17 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 16, i32 -1090519040) #7, !srcloc !9
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = tail call ptr @llvm.thread.pointer() #6
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #8, !srcloc !10
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #6, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !12
  %26 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 16) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #6, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.keyctl_pkey_query, ptr %2, i32 0, i32 6
  %30 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %29, i32 40, i32 -1090519040) #7, !srcloc !13
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #8, !srcloc !10
  %35 = and i32 %34, -13
  %36 = or i32 %35, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #6, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !12
  %37 = call i32 @arm_clear_user(ptr noundef %29, i32 noundef 40) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #6, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !12
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 0, i32 -14
  br label %40

40:                                               ; preds = %33, %28, %20, %16, %8, %3
  %41 = phi i32 [ %6, %3 ], [ %14, %8 ], [ -14, %20 ], [ -14, %16 ], [ -14, %28 ], [ %39, %33 ]
  %42 = getelementptr inbounds %struct.kernel_pkey_params, ptr %4, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  call void @kfree(ptr noundef %43) #6
  %44 = load ptr, ptr %4, align 4
  call void @key_put(ptr noundef %44) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #6
  ret i32 %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @keyctl_pkey_params_get(i32 noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x %struct.substring_t], align 4
  %5 = alloca ptr, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false)
  %6 = getelementptr inbounds %struct.kernel_pkey_params, ptr %2, i32 0, i32 1
  store ptr @.str, ptr %6, align 4
  %7 = tail call ptr @strndup_user(ptr noundef %1, i32 noundef 4096) #6
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = ptrtoint ptr %7 to i32
  br label %56

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.kernel_pkey_params, ptr %2, i32 0, i32 3
  store ptr %7, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #6, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store ptr %7, ptr %5, align 4
  %13 = call ptr @strsep(ptr noundef nonnull %5, ptr noundef nonnull @.str.1) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %43, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.kernel_pkey_params, ptr %2, i32 0, i32 2
  br label %17

17:                                               ; preds = %23, %15
  %18 = phi ptr [ %13, %15 ], [ %25, %23 ]
  %19 = phi i32 [ 0, %15 ], [ %24, %23 ]
  %20 = load i8, ptr %18, align 1
  switch i8 %20, label %27 [
    i8 0, label %23
    i8 32, label %23
    i8 9, label %23
  ]

21:                                               ; preds = %41, %40
  %22 = phi ptr [ %16, %41 ], [ %6, %40 ]
  store ptr %37, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %17, %17, %17
  %24 = phi i32 [ %19, %17 ], [ %19, %17 ], [ %19, %17 ], [ %33, %21 ]
  %25 = call ptr @strsep(ptr noundef nonnull %5, ptr noundef nonnull @.str.1) #6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %43, label %17

27:                                               ; preds = %17
  %28 = call i32 @match_token(ptr noundef nonnull %18, ptr noundef nonnull @param_keys, ptr noundef nonnull %4) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = and i32 %28, 31
  %32 = shl nuw i32 1, %31
  %33 = or i32 %32, %19
  %34 = and i32 %32, %19
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load ptr, ptr %4, align 4
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  switch i32 %28, label %42 [
    i32 1, label %21
    i32 2, label %41
  ]

41:                                               ; preds = %40
  br label %21

42:                                               ; preds = %40, %36, %30, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  br label %56

43:                                               ; preds = %23, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  %44 = call ptr @lookup_user_key(i32 noundef %0, i32 noundef 0, i32 noundef 4) #6
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  %46 = ptrtoint ptr %44 to i32
  br i1 %45, label %56, label %47

47:                                               ; preds = %43
  %48 = and i32 %46, -2
  %49 = inttoptr i32 %48 to ptr
  store ptr %49, ptr %2, align 4
  %50 = getelementptr inbounds %struct.key, ptr %49, i32 0, i32 15, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.key_type, ptr %51, i32 0, i32 16
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  %55 = select i1 %54, i32 -95, i32 0
  br label %56

56:                                               ; preds = %47, %43, %42, %9
  %57 = phi i32 [ %10, %9 ], [ %55, %47 ], [ -22, %42 ], [ %46, %43 ]
  ret i32 %57
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_pkey_e_d_s(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.kernel_pkey_params, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 28, i1 false), !annotation !8
  %7 = call fastcc i32 @keyctl_pkey_params_get_2(ptr noundef %1, ptr noundef %2, i32 noundef %0, ptr noundef nonnull %6)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %61, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr inbounds %struct.key, ptr %10, i32 0, i32 15, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.key_type, ptr %12, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %61, label %16

16:                                               ; preds = %9
  %17 = add i32 %0, -25
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyctl_pkey.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 233, 0\0A.popsection", ""() #6, !srcloc !14
  unreachable

20:                                               ; preds = %16
  %21 = trunc i32 %17 to i8
  %22 = getelementptr inbounds %struct.kernel_pkey_params, ptr %6, i32 0, i32 6
  store i8 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.kernel_pkey_params, ptr %6, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = call ptr @memdup_user(ptr noundef %3, i32 noundef %24) #6
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = ptrtoint ptr %25 to i32
  br label %61

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.kernel_pkey_params, ptr %6, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = call noalias align 64 ptr @__kmalloc(i32 noundef %31, i32 noundef 3264) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %59, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr inbounds %struct.key, ptr %35, i32 0, i32 15, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.key_type, ptr %37, i32 0, i32 17
  %39 = load ptr, ptr %38, align 4
  %40 = call i32 %39(ptr noundef nonnull %6, ptr noundef %25, ptr noundef nonnull %32) #6
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %34
  %43 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %40, i32 -1090519040) #7, !srcloc !9
  %44 = extractvalue { i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = tail call ptr @llvm.thread.pointer() #6
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 3
  %49 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %48) #8, !srcloc !10
  %50 = and i32 %49, -13
  %51 = or i32 %50, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #6, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !12
  %52 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %32, i32 noundef %40) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #6, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !12
  br label %53

53:                                               ; preds = %46, %42
  %54 = phi i32 [ %52, %46 ], [ %40, %42 ]
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 %40, i32 -14
  br label %57

57:                                               ; preds = %53, %34
  %58 = phi i32 [ %40, %34 ], [ %56, %53 ]
  call void @kfree(ptr noundef nonnull %32) #6
  br label %59

59:                                               ; preds = %57, %29
  %60 = phi i32 [ %58, %57 ], [ -12, %29 ]
  call void @kfree(ptr noundef %25) #6
  br label %61

61:                                               ; preds = %59, %27, %9, %5
  %62 = phi i32 [ %7, %5 ], [ %28, %27 ], [ %60, %59 ], [ -95, %9 ]
  %63 = getelementptr inbounds %struct.kernel_pkey_params, ptr %6, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  call void @kfree(ptr noundef %64) #6
  %65 = load ptr, ptr %6, align 4
  call void @key_put(ptr noundef %65) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #6
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @keyctl_pkey_params_get_2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.keyctl_pkey_params, align 4
  %6 = alloca %struct.kernel_pkey_query, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %5, i8 0, i32 40, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %3, i8 0, i32 28, i1 false)
  %7 = getelementptr inbounds %struct.kernel_pkey_params, ptr %3, i32 0, i32 1
  store ptr @.str, ptr %7, align 4
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 40, i32 -1090519040) #7, !srcloc !15
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19, !prof !16

11:                                               ; preds = %4
  %12 = tail call ptr @llvm.thread.pointer() #6
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #8, !srcloc !10
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #6, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !12
  %17 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 40) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #6, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !16

19:                                               ; preds = %11, %4
  %20 = phi i32 [ %17, %11 ], [ 40, %4 ]
  %21 = sub i32 40, %20
  %22 = getelementptr i8, ptr %5, i32 %21
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %20, i1 false) #6
  br label %70

23:                                               ; preds = %11
  %24 = load i32, ptr %5, align 4
  %25 = call fastcc i32 @keyctl_pkey_params_get(i32 noundef %24, ptr noundef %1, ptr noundef %3)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %70, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr inbounds %struct.key, ptr %28, i32 0, i32 15, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.key_type, ptr %30, i32 0, i32 16
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 %32(ptr noundef %3, ptr noundef nonnull %6) #6
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %70, label %35

35:                                               ; preds = %27
  switch i32 %2, label %64 [
    i32 25, label %36
    i32 26, label %36
    i32 27, label %50
    i32 28, label %50
  ]

36:                                               ; preds = %35, %35
  %37 = getelementptr inbounds %struct.keyctl_pkey_params, ptr %5, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.kernel_pkey_query, ptr %6, i32 0, i32 4
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = icmp ugt i32 %38, %41
  br i1 %42, label %70, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.keyctl_pkey_params, ptr %5, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.kernel_pkey_query, ptr %6, i32 0, i32 5
  %47 = load i16, ptr %46, align 2
  %48 = zext i16 %47 to i32
  %49 = icmp ugt i32 %45, %48
  br i1 %49, label %70, label %65

50:                                               ; preds = %35, %35
  %51 = getelementptr inbounds %struct.keyctl_pkey_params, ptr %5, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.kernel_pkey_query, ptr %6, i32 0, i32 3
  %54 = load i16, ptr %53, align 2
  %55 = zext i16 %54 to i32
  %56 = icmp ugt i32 %52, %55
  br i1 %56, label %70, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.keyctl_pkey_params, ptr %5, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.kernel_pkey_query, ptr %6, i32 0, i32 2
  %61 = load i16, ptr %60, align 4
  %62 = zext i16 %61 to i32
  %63 = icmp ugt i32 %59, %62
  br i1 %63, label %70, label %65

64:                                               ; preds = %35
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyctl_pkey.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 150, 0\0A.popsection", ""() #6, !srcloc !17
  unreachable

65:                                               ; preds = %57, %43
  %66 = phi i32 [ %59, %57 ], [ %45, %43 ]
  %67 = phi i32 [ %52, %57 ], [ %38, %43 ]
  %68 = getelementptr inbounds %struct.kernel_pkey_params, ptr %3, i32 0, i32 4
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.kernel_pkey_params, ptr %3, i32 0, i32 5
  store i32 %66, ptr %69, align 4
  br label %70

70:                                               ; preds = %65, %57, %50, %43, %36, %27, %23, %19
  %71 = phi i32 [ 0, %65 ], [ %25, %23 ], [ %33, %27 ], [ -22, %43 ], [ -22, %36 ], [ -22, %57 ], [ -22, %50 ], [ -14, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #6
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_pkey_verify(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.kernel_pkey_params, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false), !annotation !8
  %6 = call fastcc i32 @keyctl_pkey_params_get_2(ptr noundef %0, ptr noundef %1, i32 noundef 28, ptr noundef nonnull %5)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.key, ptr %9, i32 0, i32 15, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.key_type, ptr %11, i32 0, i32 18
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.kernel_pkey_params, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = call ptr @memdup_user(ptr noundef %2, i32 noundef %17) #6
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = ptrtoint ptr %18 to i32
  br label %39

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.kernel_pkey_params, ptr %5, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = call ptr @memdup_user(ptr noundef %3, i32 noundef %24) #6
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = ptrtoint ptr %25 to i32
  br label %37

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.kernel_pkey_params, ptr %5, i32 0, i32 6
  store i8 3, ptr %30, align 4
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr inbounds %struct.key, ptr %31, i32 0, i32 15, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.key_type, ptr %33, i32 0, i32 18
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 %35(ptr noundef nonnull %5, ptr noundef %18, ptr noundef %25) #6
  call void @kfree(ptr noundef %25) #6
  br label %37

37:                                               ; preds = %29, %27
  %38 = phi i32 [ %28, %27 ], [ %36, %29 ]
  call void @kfree(ptr noundef %18) #6
  br label %39

39:                                               ; preds = %37, %20, %8, %4
  %40 = phi i32 [ %6, %4 ], [ %21, %20 ], [ %38, %37 ], [ -95, %8 ]
  %41 = getelementptr inbounds %struct.kernel_pkey_params, ptr %5, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  call void @kfree(ptr noundef %42) #6
  %43 = load ptr, ptr %5, align 4
  call void @key_put(ptr noundef %43) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #6
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_user_key(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind allocsize(0) }

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
!9 = !{i64 2150727986, i64 2150728011}
!10 = !{i64 3223520}
!11 = !{i64 3223717}
!12 = !{i64 2150708996}
!13 = !{i64 2150724698, i64 2150724723}
!14 = !{i64 2152198724, i64 2152199216, i64 2152198761, i64 2152198817, i64 2152198851, i64 2152198875, i64 2152198916, i64 2152198937, i64 2152198965, i64 2152198999}
!15 = !{i64 2150727408, i64 2150727433}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2152197771, i64 2152198263, i64 2152197808, i64 2152197864, i64 2152197898, i64 2152197922, i64 2152197963, i64 2152197984, i64 2152198012, i64 2152198046}
